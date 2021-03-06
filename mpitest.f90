program mpitest
!    use mpi_f08
    use mpi
    implicit none

    integer :: rank, size, ierror

    call MPI_Init(ierror)
    call MPI_Comm_size(MPI_COMM_WORLD, size, ierror)
    call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierror)

    write(*,*) 'Hello World, I am ', rank, ' of ', size
    call MPI_Finalize(ierror)
end