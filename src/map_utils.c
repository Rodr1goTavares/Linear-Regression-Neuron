#include "../include/map_utils.h"
#include <stdio.h>
#include <stdlib.h>

struct Map createMap(int height, int width) {
  struct Map map;
  map.height = height;
  map.width = width;

  int** map_matrix = (int **)malloc(height * sizeof(int *));
  int h_aux = 0;
  int w_aux = 0;

  while (h_aux++ < height && w_aux++ < width) {
    // Fill horizontal borders.
    if (w_aux != width) {
      map_matrix[0][w_aux] = 1;
      map_matrix[height - 1][w_aux] = 1;
    }
    // Fill vertical borders.
    if (h_aux != height) {
      map_matrix[h_aux][0] = 1;
      map_matrix[h_aux][width - 1] = 1;
    }
  }
  map.matrix = map_matrix;
  return map;
}


void printMap(struct Map *map) {
  char line[map->width + 1];

  for (int i = 0; i < map->height; i++) {
    for (int j = 0; j < map->width; j++) line[j] = (map->matrix[i][j] == 1) ? '#' : '.';
    line[map->width] = '\0';
    printf("%s\n", line);
  }
}


void freeMapMemory(struct Map *map) {
  for (int i = 0; i < map->height; i++) free(map->matrix[i]);  // Free each line
  free(map->matrix);  // Free pointer array
}
