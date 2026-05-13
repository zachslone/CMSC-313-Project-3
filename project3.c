#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[] {
  if (argc < 2) {
    printf("Usage: %s <filename>\n", argv[0]);
    return 1;
  }

  FILE *fp = fopen(argv[1], "rb");
  if (fp == NULL) {
    perror("Error opening file");
    return 1;
  }

  unsigned char buffer[16];
  size_t bytesRead;
  unsigned int address = 0;

  while ((bytesRead = fread(buffer, 1, 16, fp)) > 0) {
    printf("%08x ", address);
    for (int i = 0; i < 16; i++) {
      if (i < bytesRead) {
        printf("%02x ", buffer[i]);
      } else {
          printf("  ");
      }
    }

    printf("|");
    for (int i = 0; i < bytesRead; i++) {
      if (isprint(buffer[i])) {
        printf("%c", buffer[i]);
      } else {
          printf(".");
      }
    }
    printf("|\n");
    address += 16
  }
  fclose(fp);
  return 0;
}
    
