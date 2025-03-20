#include "../include/map_utils.h"


struct Map createMap(int height, int width) {
  struct Map map;
  map.heigth = height;
  map.width = width;

  int map_matrix[height][width];
  int h_aux = 0;
  int w_aux = 0;

  while (h_aux++ < height && w_aux++ < width) {
    // Fill horizontal borders.
    map_matrix[0][w_aux] = 1;
    map_matrix[height - 1][w_aux] = 1;

    // Fill vertical borders.
    map_matrix[h_aux][0] = 1;
    map_matrix[h_aux][width - 1] = 1;
  }
  return map;
}

void printMap(struct Map *map) {}
