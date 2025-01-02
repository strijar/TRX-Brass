#include <complex.h>

typedef float complex tfft_t;

void tfft_init(int k, tfft_t *w);
void tfft_fwd(int k, tfft_t *A, const tfft_t *w);
void tfft_inv(int k, tfft_t *A, const tfft_t *w);

inline unsigned int tfft_reverse_index(unsigned int x, unsigned int n) {
    unsigned int res = 0, i;

    for (i = 0; i < n; i++) {
        res <<= 1;
        res |= (x & 1);
        x >>= 1;
    }

    return res;
}
