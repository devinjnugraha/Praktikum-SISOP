#include <errno.h>
#include <fcntl.h>
#include <stdio.h>

extern int errno;

int main(int argc, char* argv[]){
	int fd = open(argv[1], O_RDWR);
	printf("fd = %d\n", fd);
	if (fd != -1){
		rename(argv[1], argv[2]);
	}
	return 0;
}
