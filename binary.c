#include <stdio.h>

int main(void) {
  printf("Content-Type: text/html;charset=utf-8\n\n");
  printf("<h1>Hello CGI!</h1>");
  printf("<a href='./'>back</a>");
  return 0;
}
