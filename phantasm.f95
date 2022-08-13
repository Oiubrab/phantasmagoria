program phantasm

implicit none

character(len=:),allocatable :: reader
integer,dimension(100) :: reader2
integer :: lines,reader_num

!open(unit=1,access='stream', form='unformatted',file='big_balls1.bmp')
open(unit=1,file='big_balls1.bmp')

do lines=1,500
	read(1,*) reader
	print*,reader
end do


close(1)

end program
