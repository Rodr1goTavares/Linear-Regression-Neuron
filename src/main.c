
#include "../include/map_utils.h"
#include <stdio.h>

int main() {
  struct Map map = createMap(10, 10);
  printf("Map created. Trying to print... \n");
  printMap(&map);
}
