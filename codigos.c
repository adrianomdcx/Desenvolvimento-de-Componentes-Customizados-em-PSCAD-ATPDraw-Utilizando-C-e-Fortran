#define _USE_MATH_DEFINES
#include <math.h>

/*
 * Portadora triangular normalizada entre 0 e 1, com período T.
 * A saída é ajustada pela inclinação m e pelo deslocamento b:
 * y = m * tri + b.
 */
void triangular(double* m, double* b, double* T, double* t, double* y)
{
    double tau;
    double tri;

    if (*T > 0.0)
    {
        tau = fmod(*t, *T) / *T;
        tri = 1.0 - fabs(2.0 * tau - 1.0);
    }
    else
    {
        tri = 0.0;
    }

    *y = *m * tri + *b;
}

/*
 * Transformada de Clarke: converte as fases va, vb e vc
 * para as componentes alfa, beta e de sequência zero.
 */
void clarkamp(double* va, double* vb, double* vc,
              double* valpha, double* vbeta, double* vzero)
{
    *valpha = (2.0 / 3.0) * *va - *vb / 3.0 - *vc / 3.0;
    *vbeta = *vb / sqrt(3.0) - *vc / sqrt(3.0);
    *vzero = (*va + *vb + *vc) / 3.0;
}

/*
 * Comandos lógicos das chaves do GCSC.
 * O comando ímpar vale 1 quando a corrente é positiva e a condição
 * angular informada foi atingida; nos demais casos, vale 0.
 */
void controlimpar(double* in, double* in2, double* in3, double* out)
{
    *out = (*in > 0.0 && *in3 <= *in2) ? 1.0 : 0.0;
}

/*
 * Comando da chave par: vale 1 quando a corrente é negativa e a
 * condição angular deslocada em 180 graus foi atingida.
 */
void controlpar(double* in, double* in2, double* in3, double* out)
{
    *out = (*in < 0.0 && *in3 <= *in2 + 180.0) ? 1.0 : 0.0;
}

/*
 * Aplica um distúrbio quando in supera o limite in4. Nesse caso,
 * escala a tensão de referência in3 e a frequência de 60 Hz pelo
 * fator 1 + in2. Caso contrário, mantém in3 e 60 Hz.
 */
void disturbio(double* in, double* in2, double* in3, double* in4,
               double* v, double* f)
{
    if (*in > *in4)
    {
        *v = (1.0 + *in2) * *in3;
        *f = (1.0 + *in2) * 60.0;
    }
    else
    {
        *v = *in3;
        *f = 60.0;
    }
}
