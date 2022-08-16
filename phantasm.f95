program phantasm

implicit none

!character(len=:),allocatable :: reader
character(len=500) :: reader,error
integer,dimension(100) :: reader2
integer :: lines,reader_num,letter,letter_num,io

!open(unit=1,access='stream', form='unformatted',file='big_balls1.bmp')
open(unit=1,file='big_balls1.bmp',iostat=io)

do
	read(1,*,iostat=io,iomsg=error) reader
	if (io/=0) then
		print*,error
		exit
	end if
	print*,trim(reader)
!	print*,len(reader)
!	do letter_num=1,2
!		print*,reader(letter_num:letter_num)
!!		read(reader(letter_num:letter_num),*) letter
!	end do
end do


close(1)

end program
