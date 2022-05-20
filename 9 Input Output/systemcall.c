#include <errno.h>
#include <fcntl.h>
#include <stdio.h>

extern int errno;

int main(){
	// if file does not have in directory
	// then file foo.txt is created.
	int fd = open("foo.txt", O_RDWR);
	printf("fd = %d\n", fd);
	char s[50] = "Mencoba write di bahasa C";
	char temp[100];
	if (fd != -1){
		write(fd, s, sizeof(s));
		lseek(fd, 0, SEEK_SET);
		read(fd, temp, sizeof(s));
		printf("Membaca pesan : %s", temp);
		close(fd);
	}
	return 0;
}