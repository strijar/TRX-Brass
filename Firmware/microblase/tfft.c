#include "tfft.h"

#define PI2 6.28318530717958647692f

#define CEXP(x) cexpf(x)
#define CONJ(x) conjf(x)

static void genw(int i, int b, tfft_t z, tfft_t *w) {
    if (b == 0) {
        w[i] = z;
    } else {
        genw(i, b >> 1, z, w);
        genw(i | b, b >> 1, z * w[b], w);
    }
}

void tfft_init(int k, tfft_t *w) {
    int         i, j;
    const int   m = 1 << k;
    const float arg = -PI2 / m;

    for (i = 1, j = m/4; j; i <<= 1, j >>= 1) {
        w[i] = CEXP(I * (arg * j));
    }

    genw(0, m/4, 1, w);
}

void tfft_fwd(int k, tfft_t *A, const tfft_t *w) {
    const int   m = 1 << k;
    int         u = 1;
    int         v = m/4;
    int         i, j;

    if (k & 1) {
        for (j = 0; j < m/2; j++) {
            tfft_t Ajv = A[j + (m/2)];

            A[j + (m/2)] = A[j] - Ajv;
            A[j] += Ajv;
        }
        u <<= 1;
        v >>= 1;
    }

    for (i = k & ~1; i > 0; i -= 2) {
        int jh;

        for (jh = 0; jh < u; jh++) {
            tfft_t wj = w[jh << 1];
            tfft_t wj2 = w[jh];
            tfft_t wj3 = wj2 * wj;

            int je;

            for (j = jh << i, je = j + v; j < je; j++) {
                tfft_t tmp0 = A[j];
                tfft_t tmp1 = wj * A[j + v];
                tfft_t tmp2 = wj2 * A[j + 2*v];
                tfft_t tmp3 = wj3 * A[j + 3*v];

                tfft_t ttmp0 = tmp0 + tmp2;
                tfft_t ttmp2 = tmp0 - tmp2;
                tfft_t ttmp1 = tmp1 + tmp3;
                tfft_t ttmp3 = -I * (tmp1 - tmp3);

                A[j] = ttmp0 + ttmp1;
                A[j + v] = ttmp0 - ttmp1;
                A[j + 2*v] = ttmp2 + ttmp3;
                A[j + 3*v] = ttmp2 - ttmp3;
            }
        }

        u <<= 2;
        v >>= 2;
    }
}

void tfft_inv(int k, tfft_t *A, const tfft_t *w) {
    const int   m = 1 << k;
    int         u = m/4;
    int         v = 1;
    int         i, j;

    for (i = 2; i <= k; i += 2) {
        int jh;

        for (jh = 0; jh < u; jh++) {
            tfft_t wj = CONJ(w[jh << 1]);
            tfft_t wj2 = CONJ(w[jh]);
            tfft_t wj3 = wj2 * wj;

            int je;

            for (j = jh << i, je = j + v; j < je; j++) {
                tfft_t tmp0 = A[j];
                tfft_t tmp1 = A[j + v];
                tfft_t tmp2 = A[j + 2*v];
                tfft_t tmp3 = A[j + 3*v];

                tfft_t ttmp0 = tmp0 + tmp1;
                tfft_t ttmp1 = tmp0 - tmp1;
                tfft_t ttmp2 = tmp2 + tmp3;
                tfft_t ttmp3 = I * (tmp2 - tmp3);

                A[j] = ttmp0 + ttmp2;
                A[j + v] = wj * (ttmp1 + ttmp3);
                A[j + 2*v] = wj2 * (ttmp0 - ttmp2);
                A[j + 3*v] = wj3 * (ttmp1 - ttmp3);
            }
        }
        u >>= 2;
        v <<= 2;
    }

    if (k & 1) {
        for (j = 0; j < m/2; j++) {
            tfft_t Ajv = A[j + (m/2)];

            A[j + (m/2)] = A[j] - Ajv;
            A[j] += Ajv;
        }
    }
}

/*
unsigned int tfft_reverse_index(unsigned int x, unsigned int n) {
    unsigned int res = 0, i;

    for (i = 0; i < n; i++) {
        res <<= 1;
        res |= (x & 1);
        x >>= 1;
    }

    return res;
}
*/
