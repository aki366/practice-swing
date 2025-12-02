#include <stdio.h>
#include "point.h"

int main() {
    struct Point* p1 = makePoint(0.0, 0.0);
    struct Point* p2 = makePoint(3.0, 4.0);

    printf("distance = %f\n", distance(p1, p2));
    return 0;
}
