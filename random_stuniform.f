      subroutine random_stuniform(u)
      implicit none
      real, intent(out) :: u
      real :: r
      call random_number(r)
      u=1-r
      end subroutine random_stuniform
      
