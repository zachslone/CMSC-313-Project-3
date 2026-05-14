#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
  // Check to make sure filename was provided
  if (argc < 2) {
    printf("Usage: %s <filename>\n", argv[0]);
    return 1;
  }
  // opening file in binary
  FILE *fp = fopen(argv[1], "rb");
  if (fp == NULL) {
    perror("Error opening file");
    return 1;
  }

  unsigned char buffer[16]; //char holds up to 16 bytes per line
  size_t bytesRead; // # of bytes read by variabe bytesRead
  unsigned int address = 0; 

  // loop that reads the file 16 bytes at a time until end
  while ((bytesRead = fread(buffer, 1, 16, fp)) > 0) {
    printf("%08x", address);
    // loop to print hex values
    for (int i = 0; i < 16; i++) {
      if (i < bytesRead) {
        printf("%02x", buffer[i]);
      } else {
          printf("   ");
      }
    }
    // loop to print ASCII values
    printf("|");
    for (int i = 0; i < bytesRead; i++) {
      if (isprint(buffer[i])) {
        printf("%c", buffer[i]);
      } else {
          printf(".");
      }
    }
    printf("|\n");
    address += 16;
  }
  fclose(fp);
  return 0;
}
    
