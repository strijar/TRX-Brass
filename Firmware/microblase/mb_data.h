#include <stdint.h>
#include <complex.h>

#define MB_FFT      11
#define MB_FFT_SIZE (1 << MB_FFT)

typedef struct {
    uint32_t        count;
    float complex   factor[1 << (MB_FFT - 1)];
    float complex   samples[MB_FFT_SIZE];
    float           window[MB_FFT_SIZE];
    float           out[MB_FFT_SIZE];
} mb_data_t;
