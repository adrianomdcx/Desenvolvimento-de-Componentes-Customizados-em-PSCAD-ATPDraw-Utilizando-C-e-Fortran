! Wrappers Fortran para chamar as rotinas C de codigos.c.

      SUBROUTINE AUX_TRIANGULAR(m, b, period, time, y)
      USE, INTRINSIC :: ISO_C_BINDING
      IMPLICIT NONE
      REAL(C_DOUBLE), INTENT(IN) :: m, b, period, time
      REAL(C_DOUBLE), INTENT(OUT) :: y
      INTERFACE
        SUBROUTINE TRIANGULAR_C(m, b, period, time, y)
     &      BIND(C, NAME="triangular")
          USE, INTRINSIC :: ISO_C_BINDING
          REAL(C_DOUBLE), INTENT(IN) :: m, b, period, time
          REAL(C_DOUBLE), INTENT(OUT) :: y
        END SUBROUTINE TRIANGULAR_C
      END INTERFACE
      CALL TRIANGULAR_C(m, b, period, time, y)
      END SUBROUTINE AUX_TRIANGULAR

! Transforma va, vb e vc nas componentes alfa, beta e zero.
      SUBROUTINE AUX_CLARKAMP(va, vb, vc, valpha, vbeta, vzero)
      USE, INTRINSIC :: ISO_C_BINDING
      IMPLICIT NONE
      REAL(C_DOUBLE), INTENT(IN) :: va, vb, vc
      REAL(C_DOUBLE), INTENT(OUT) :: valpha, vbeta, vzero
      INTERFACE
        SUBROUTINE CLARKAMP_C(va, vb, vc, valpha, vbeta, vzero)
     &      BIND(C, NAME="clarkamp")
          USE, INTRINSIC :: ISO_C_BINDING
          REAL(C_DOUBLE), INTENT(IN) :: va, vb, vc
          REAL(C_DOUBLE), INTENT(OUT) :: valpha, vbeta, vzero
        END SUBROUTINE CLARKAMP_C
      END INTERFACE
      CALL CLARKAMP_C(va, vb, vc, valpha, vbeta, vzero)
      END SUBROUTINE AUX_CLARKAMP

! Comando das chaves impares do GCSC.
      SUBROUTINE AUX_CONTROLIMPAR(in, in2, in3, out)
      USE, INTRINSIC :: ISO_C_BINDING
      IMPLICIT NONE
      REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3
      REAL(C_DOUBLE), INTENT(OUT) :: out
      INTERFACE
        SUBROUTINE CONTROLIMPAR_C(in, in2, in3, out)
     &      BIND(C, NAME="controlimpar")
          USE, INTRINSIC :: ISO_C_BINDING
          REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3
          REAL(C_DOUBLE), INTENT(OUT) :: out
        END SUBROUTINE CONTROLIMPAR_C
      END INTERFACE
      CALL CONTROLIMPAR_C(in, in2, in3, out)
      END SUBROUTINE AUX_CONTROLIMPAR

! Comando das chaves pares do GCSC.
      SUBROUTINE AUX_CONTROLPAR(in, in2, in3, out)
      USE, INTRINSIC :: ISO_C_BINDING
      IMPLICIT NONE
      REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3
      REAL(C_DOUBLE), INTENT(OUT) :: out
      INTERFACE
        SUBROUTINE CONTROLPAR_C(in, in2, in3, out)
     &      BIND(C, NAME="controlpar")
          USE, INTRINSIC :: ISO_C_BINDING
          REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3
          REAL(C_DOUBLE), INTENT(OUT) :: out
        END SUBROUTINE CONTROLPAR_C
      END INTERFACE
      CALL CONTROLPAR_C(in, in2, in3, out)
      END SUBROUTINE AUX_CONTROLPAR

! Altera tensao e frequencia ao cruzar o limite configurado.
      SUBROUTINE AUX_DISTURBIO(in, in2, in3, in4, v, f)
      USE, INTRINSIC :: ISO_C_BINDING
      IMPLICIT NONE
      REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3, in4
      REAL(C_DOUBLE), INTENT(OUT) :: v, f
      INTERFACE
        SUBROUTINE DISTURBIO_C(in, in2, in3, in4, v, f)
     &      BIND(C, NAME="disturbio")
          USE, INTRINSIC :: ISO_C_BINDING
          REAL(C_DOUBLE), INTENT(IN) :: in, in2, in3, in4
          REAL(C_DOUBLE), INTENT(OUT) :: v, f
        END SUBROUTINE DISTURBIO_C
      END INTERFACE
      CALL DISTURBIO_C(in, in2, in3, in4, v, f)
      END SUBROUTINE AUX_DISTURBIO
