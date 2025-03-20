# 0 "src/map_utils.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "src/map_utils.c"
# 1 "src/../include/map_utils.h" 1



struct Map {
  char* name;
  int heigth;
  int width;
  int** matrix;
};

struct Map createMap(int height, int width);

void printMap(struct Map *map);
# 2 "src/map_utils.c" 2


struct Map createMap(int height, int width) {
  struct Map map;
  map.heigth = height;
  map.width = width;

  int map_matrix[height][width];
  int h_aux = 0;
  int w_aux = 0;

  while (h_aux++ < height && w_aux++ < width) {

    map_matrix[0][w_aux] = 1;
    map_matrix[height - 1][w_aux] = 1;


    map_matrix[h_aux][0] = 1;
    map_matrix[h_aux][width - 1] = 1;
  }
  return map;
}

void printMap(struct Map *map) {}
