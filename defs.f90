 module defs
 integer, parameter :: i4b = selected_int_kind(9)
 integer, parameter :: i2b = selected_int_kind(4)
 integer, parameter :: ip = kind(1)
 integer, parameter :: sp = kind(1.0)
 integer, parameter :: dp = kind(1.0d0)
 real(dp), parameter :: pi = 3.14159265358979323844_dp      &
 , twopi = 6.28318530717958647688_dp, eps = 0.01_dp                 &
 , twopiover3 = 2.09439510239319549229_dp                           &
 , sin37 = 0.59972214027798415249_dp &  ! sin(36.85)
 , cos37 = 0.80020831941463461536_dp &  ! cos(36.85)
 , cos106 = -0.28066670892078779654_dp  ! cos(106.3)
  real(dp) :: omegaalpha = pi, &                       ! 180 deg
              phialpha = -1.04719755119659774614_dp, & ! -60 deg
              psialpha = -0.87266462599716478845_dp, & ! -50 deg
              omegabeta = pi, &                        ! 180 deg
              phibeta  = -1.74532925199432957691_dp, & !-100 deg
              psibeta  =  2.35619449019234492883_dp    ! 135 deg
! see ribosome.f90 for better values
! J Mol Bio(1996) 264, 1180 says 179.6 degrees is a better mean for omega.
  real(dp), dimension(9), parameter :: Idp = &
    (/ 1.0_dp, 0.0_dp, 0.0_dp, &
       0.0_dp, 1.0_dp, 0.0_dp, &
       0.0_dp, 0.0_dp, 1.0_dp /)
  integer(i4b), dimension(2), parameter :: shape = (/3, 3/)
  real(dp), dimension(3,3), parameter :: Id = reshape(Idp,shape)
 end module defs

