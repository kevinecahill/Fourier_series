program xFseries
use defs; implicit none
integer(i4b)::n,k
real(dp)::x,f,scale,b
real(dp),parameter::m=2.0d0
b(n) = (-1.d0)**(n+1)/n
scale = 4.d0*pi/1000.d0
open(7,file='x10')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = 0.d0
do n = 1, 10
f = f + 2.d0*b(n)*sin(n*x)
end do
write(7,*) x, f
end do
close(7)
open(8,file='x100')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = 0.d0
do n = 1, 100
f = f + 2.d0*b(n)*sin(n*x)
end do
write(8,*) x, f
end do
close(8)
open(9,file='x1000')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = 0.d0
do n = 1, 1000
f = f + 2.d0*b(n)*sin(n*x)
end do
write(9,*) x, f
end do
close(9)
open(7,file='x0')
do k = 0, 1000
x = -2.d0*pi + k*scale
f = x
write(7,*) x, f
end do
end program xFseries
