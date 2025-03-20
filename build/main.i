# 0 "src/main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "src/main.c"

# 1 "src/../include/map_utils.h" 1



struct Map {
  char* name;
  int heigth;
  int width;
  int** matrix;
};

struct Map createMap(int height, int width);

void printMap(struct Map *map);
# 3 "src/main.c" 2

int main() {
  struct Map map = createMap(10, 10);
  printMap(&map);
}
