!********************************************************************
! COMPILADOR DA FUNÇÃO PORTADORA TRIANGULAR EM C:
!********************************************************************


SUBROUTINE AUX_TRIANGULAR(x, y, a, b)
!FUNCAO TRIANGULAR
      use, intrinsic :: iso_c_binding
      real(c_double) :: x
      real(c_double) :: y
      real(c_double) :: a
      real(c_double) :: b
! Interface Fortran ↔ C
      INTERFACE
        SUBROUTINE TRIANGULAR(x, y, a, b) bind(c)
            use, intrinsic :: iso_c_binding
            real(c_double) :: x
            real(c_double) :: y
            real(c_double) :: a
            real(c_double) :: b
        END SUBROUTINE TRIANGULAR
      END INTERFACE

! Chamada da rotina em C
      CALL TRIANGULAR(x, y, a, b)

      END 


!********************************************************************
! COMPILADOR DA FUNÇÃO TRANSFORMADA DE CLARK EM C:
!********************************************************************

      SUBROUTINE AUX_CLARKAMP(va,vb,vc,valpha,vbeta,vzero)

      use, intrinsic :: iso_c_binding
      real(c_double) :: va
      real(c_double) :: vb
      real(c_double) :: vc
      real(c_double) :: valpha
      real(c_double) :: vbeta
      real(c_double) :: vzero
! Interface Fortran ↔ C
      INTERFACE
        SUBROUTINE CLARKAMP(va,vb,vc,valpha,vbeta,vzero) bind(c)
            use, intrinsic :: iso_c_binding
            real(c_double) :: va
            real(c_double) :: vb
            real(c_double) :: vc
            real(c_double) :: valpha
            real(c_double) :: vbeta
            real(c_double) :: vzero
        END SUBROUTINE CLARKAMP
      END INTERFACE

! Chamada da rotina em C
      CALL CLARKAMP(va,vb,vc,valpha,vbeta,vzero)

      END 

!********************************************************************
!COMPILADOR DAS FUNCOES DE CONTROLE DO GCSC EM C
!********************************************************************


      SUBROUTINE AUX_CONTROLIMPAR(in, in2,in3, out)

      use, intrinsic :: iso_c_binding
      real(c_double) :: in
      real(c_double) :: in2
      real(c_double) :: in3
      real(c_double) :: out
! Interface Fortran ↔ C
      INTERFACE
        SUBROUTINE CONTROLIMPAR(in, in2,in3, out) bind(c)
            use, intrinsic :: iso_c_binding
            real(c_double) :: in
            real(c_double) :: in2
            real(c_double) :: in3
            real(c_double) :: out
        END SUBROUTINE CONTROLIMPAR
      END INTERFACE

! Chamada da rotina em C
      CALL CONTROLIMPAR(in, in2,in3, out)

      END 



!FAZ O CONTROLE DAS CHAVES PARES:


    
      SUBROUTINE AUX_CONTROLPAR(in, in2,in3, out)

      use, intrinsic :: iso_c_binding
      real(c_double) :: in
      real(c_double) :: in2
      real(c_double) :: in3
      real(c_double) :: out
! Interface Fortran ↔ C
      INTERFACE
        SUBROUTINE CONTROLPAR(in, in2,in3, out) bind(c)
            use, intrinsic :: iso_c_binding
            real(c_double) :: in
            real(c_double) :: in2
            real(c_double) :: in3
            real(c_double) :: out
        END SUBROUTINE CONTROLPAR
      END INTERFACE

! Chamada da rotina em C
      CALL CONTROLPAR(in, in2,in3, out)

      END 


!********************************************************************
!COMPILADOR DA FUNCAO DE DISTURBIO DE TENSAO E FREQUENCIA EM C
!********************************************************************




!FUNCAO QUE DETERMINA DISTURBIO:



      SUBROUTINE AUX_DISTURBIO(in, in2, in3, in4, v, f)

      use, intrinsic :: iso_c_binding
      real(c_double) :: in
      real(c_double) :: in2
      real(c_double) :: in3
      real(c_double) :: in4
      real(c_double) :: v
      real(c_double) :: f
      
! Interface Fortran ↔ C
      INTERFACE
        SUBROUTINE DISTURBIO(in,in2, in3,in4, v, f) bind(c)
            use, intrinsic :: iso_c_binding
            real(c_double) :: in
            real(c_double) :: in2
            real(c_double) :: in3	
            real(c_double) :: in4			     
            real(c_double) :: v
            real(c_double) :: f
            
        END SUBROUTINE DISTURBIO
      END INTERFACE

! Chamada da rotina em C
      CALL DISTURBIO(in, in2,in3,in4,v, f)

      END 