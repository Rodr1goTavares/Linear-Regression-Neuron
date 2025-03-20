#ifndef _MAP_UTILS_H
#define _MAP_UTILS_H

struct Map {
  char* name;
  int height;
  int width;
  int** matrix;
};

struct Map createMap(int height, int width);

void printMap(struct Map *map);

#endif
