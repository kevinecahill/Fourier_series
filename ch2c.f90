program ch2c
  use defs; implicit none
  character(len=20)::outfile
  integer(i4b)::i,j,k,nP,nT,n
  real(dp)::x,L,nPr,t,m,hbar,y,fourier,t0
  real(dp),allocatable::psi(:),psi0(:),c(:),P0(:),&
       P10th(:),P1(:),P10(:),P100th(:),P1000th(:),&
       Pmu(:),P100(:)
  complex(dp)::z
  complex(dp),allocatable::psi1(:),psi10(:), &
       psi100(:),psi10th(:),psi100th(:),     &
       psi1000th(:),psimu(:)
  write(6,*)'How many points? nP=?'
  read(5,*)nP
  write(6,*)'How many terms? nT=?'
  read(5,*)nT
  write(6,*)'Length of interval? L=?'
  read(5,*)L
  hbar = 1.; m = 1.
  allocate(psi(nP),psi0(nP),P10th(nP),P1(nP),P10(nP),&
       P100th(nP),P1000th(nP),Pmu(nP),P0(nP),&
       c(nT),psi10th(nP),psi1(nP),psi10(nP),&
       psi100th(nP),psi1000th(nP),psimu(nP), &
       psi100(nP),P100(nP))
  nPr = real(nP,dp)
  psi = 0.
  do n = 1, nT
     if ( n == 2 ) then
        c(n) = 0.
     else
        c(n) = (sqrt(2.d0)/pi)*(                 &
             (sin((3.d0*n-4.)*pi/4.d0)           & 
             - sin(n*pi/4.d0))/(real(n,dp)-2.d0) &
             - (sin((3.d0*n+4.)*pi/4.d0) & 
             - sin(n*pi/4.d0))/(real(n,dp)+2.d0) &
             )
     end if
  end do
  do i = 1, nP
     x = real(i,dp)*L/nPr
     if ( x > L/4. .and. x < 3.*L/4. ) then
        psi0(i) = (2.0d0/sqrt(L))*sin(2.d0*pi*(x-0.25*L)/L)
     else
        psi0(i) = 0.0d0
     end if
     psi(i) = 0.0; psi1(i) = (0.,0.); psi10(i) = (0.,0.)
     psi10th(i)= (0.,0.); psi100th(i) = (0.,0.)
     psi1000th(i) = (0.,0.); psimu(i) = (0.,0.)
     psi100(i) = (0.,0.)
     t0 = 2.*m*L**2/hbar
     do n = 1, nT
        fourier = c(n)*sqrt(2.0d0/L)*sin(pi*real(n,dp)*x/L)
        psi(i) = psi(i) + fourier
        t = t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi1(i) = psi1(i) + fourier*exp(z)
        t = 10.*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi10(i) = psi10(i) + fourier*exp(z)
        t = 100.*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi100(i) = psi100(i) + fourier*exp(z)
        t = 0.1*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi10th(i) = psi10th(i) + fourier*exp(z)
        t = 0.01*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi100th(i) = psi100th(i) + fourier*exp(z)
        t = 0.001*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psi1000th(i) = psi1000th(i) + fourier*exp(z)
        t = 1.0d-6*t0
        y = -hbar*real(n,dp)**2*pi**2*t/(2.*m*L**2)
        z = y*(0,1)
        psimu(i) = psimu(i) + fourier*exp(z)
     end do
     P0(i) = abs(psi(i))**2
     P1(i) = abs(psi1(i))**2
     P10(i) = abs(psi10(i))**2
     P100(i) = abs(psi100(i))**2
     P10th(i) = abs(psi10th(i))**2
     P100th(i) = abs(psi100th(i))**2
     P1000th(i) = abs(psi1000th(i))**2
     Pmu(i) = abs(psimu(i))**2
  end do
  open(7,file='psix0')
  open(8,file='P0c'); open(9,file='P1c')
  open(10,file='P10c'); open(11,file='P10thc')
  open(12,file='P100thc'); open(13,file='P1000thc')
  open(14,file='Pmuc'); open(15,file='psix0c')
  open(16,file='P100c.m')
  write(16,*)'cent = ['
  do i = 1, nP
     x = real(i,dp)*L/nPr
     write(7,*) x, psi(i)
     write(8,*) x, P0(i)
     write(9,*) x, P1(i)
     write(10,*) x, P10(i)
     write(11,*) x, P10th(i)
     write(12,*) x, P100th(i)
     write(13,*) x, P1000th(i)
     write(14,*) x, Pmu(i)
     write(15,*) x, psi0(i)
     write(16,*) x, P100(i)
  end do
  write(16,*) '  ];'
  close(7);close(8);close(9);close(10);close(11)
  close(12);close(13);close(14);close(15)
end program ch2c
