program expFseries
use defs; implicit none
integer(i4b)::n,k
real(dp)::x,f,scale,d
real(dp),parameter::m=2.0d0
d(m,n) = (1.d0 - (-1.d0)**n*exp(-pi*m))*m/(pi*(m**2+n**2))
scale = 4.d0*pi/1000.d0
open(7,file='exp10')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = d(m,0)
do n = 1, 10
f = f + 2.d0*d(m,n)*cos(n*x)
end do
write(7,*) x, f
end do
close(7)
open(8,file='exp100')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = d(m,0)
do n = 1, 100
f = f + 2.d0*d(m,n)*cos(n*x)
end do
write(8,*) x, f
end do
close(8)
open(9,file='exp1000')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = d(m,0)
do n = 1, 1000
f = f + 2.d0*d(m,n)*cos(n*x)
end do
write(9,*) x, f
end do
close(9)
open(7,file='exp0')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = exp(-m*abs(x))
write(7,*) x, f
end do
end program expFseries
