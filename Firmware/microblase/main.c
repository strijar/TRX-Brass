#include <math.h>
#include <mb_interface.h>

#include "mb_data.h"
#include "tfft.h"

__attribute__ ((section (".shared"))) volatile mb_data_t data;

static void window_hann() {
    for (uint32_t i = 0; i < MB_FFT_SIZE; i++) {
        float x = 2.0f * 3.14159265f * i / (MB_FFT_SIZE - 1);

        data.window[i] = 0.5f - 0.5f * cosf(x);
    }
}

int main() {
    volatile int    *gpio = 0x4000000;
    uint32_t        avr = 0;

    data.count = 0;

    tfft_init(MB_FFT, &data.factor);
    window_hann();

    while (1) {
        for (uint32_t i = 0; i < MB_FFT_SIZE; i++) {
            volatile register float a0;
            volatile register float a1;

            getfsl(a0, 0);  __real__ data.samples[i] = a0;
            getfsl(a1, 0);  __imag__ data.samples[i] = a1;
        }

        for (uint32_t i = 0; i < MB_FFT_SIZE; i++)
            data.samples[i] *= data.window[i];

        tfft_fwd(MB_FFT, &data.samples, &data.factor);

        *gpio = 0;

        for (uint32_t i = 0; i < MB_FFT_SIZE; i++) {
            uint32_t        index = tfft_reverse_index(i, MB_FFT);
            complex float   x = data.samples[index];
            float           re = crealf(x);
            float           im = cimag(x);
            float           mag = re * re + im * im;

            data.out[i] = mag;
        }

        *gpio = 1;
        data.count++;
    }

    return 0;
}
