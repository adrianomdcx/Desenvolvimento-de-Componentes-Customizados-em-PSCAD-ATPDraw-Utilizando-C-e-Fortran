//IMPORTA BIBLIOTECAS:
#define _USE_MATH_DEFINES
#include <math.h> 
#include <stdio.h>
//-------------------------------------
//PORTADORA TRIANGULAR DE PERIODO T
//-------------------------------------



void triangular(double* m, double* b, double* T, double* t, double* y)
{
    double tau;
    double tri;

    if (*T > 0.0)
    {
        // tempo normalizado no período
        tau = fmod(*t, *T) / (*T);

        // triangular (0 → 1 → 0)
        tri = 1.0 - fabs(2.0 * tau - 1.0);
    }
    else
    {
        tri = 0.0;
    }

    // aplica a reta
    *y = (*m) * tri + (*b);
}

//--------------------------------------------
//TRANSFORMADA DE CLARCK
//--------------------------------------------


void clarkamp(double* va, double* vb, double* vc, double* valpha, double* vbeta, double* vzero)

    {
    
    *valpha = (2.0/3.0)*(*va) - *vb/3.0 - *vc/3.0;
    
    *vbeta = *vb/sqrt(3.0) - *vc/sqrt(3.0);
    
    *vzero = *va/3.0 + *vb/3.0 + *vc/3.0;

    }

//------------------------------------------
//CONTROLE DO GCSC
//------------------------------------------


void controlimpar(double* in, double* in2, double* in3, double* out)
  {

    if(*in>0 && *in3<=*in2 )

      {
        *out = 1.0;
      }

    else
      {
        *out = 0.0;
      }



  }


void controlpar(double*in, double* in2, double* in3, double* out)
  {
  if(*in<0 && *in3<= *in2 + 180)

    {
      *out = 1.0;
    }
  else

    {
      *out = 0.0;
    }
  }

  //-------------------------------------------------------
  //FUNÇÃO QUE MODELA UM DISTURBIO DE TENSÃO E FREQUÊNCIA:
  //-------------------------------------------------------

  void disturbio(double* in, double* in2, double* in3, double* in4, double* v, double* f)

  {
    if (*in>*in4)

      {
        
        *v = (*in2+1)*(*in3);
        *f = (*in2+1)*(60);
      }
    else

      {
        *v = *in3;
        *f = 60;
      }
  }

