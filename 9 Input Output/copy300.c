#include <errno.h>
#include <fcntl.h>
#include <stdio.h>

extern int errno;

int main(int argc, char* argv[]){
	int fd = open(argv[1], O_RDWR);
	printf("fd = %d\n", fd);
	char temp[300];
	if (fd != -1){
		read(fd, temp, sizeof(temp));
		close(fd);
		int fd2 = open(argv[2], O_RDWR | O_CREAT);
		write(fd2, temp, sizeof(temp));
		close(fd2);
	}
	return 0;
}
