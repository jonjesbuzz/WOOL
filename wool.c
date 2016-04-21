#include "wool.h"
#include <stdlib.h>
uint64_t pack(wool_t* wool) {
    uint64_t box = 0;
    uint64_t act = (uint64_t) wool->activity;
    act = act << ACTIVITY_OFFSET;
    uint64_t light = (uint64_t) wool->light;
    light = light << LIGHT_OFFSET;
    uint64_t id = (uint64_t) wool->id;
    id = id << ID_OFFSET;
    box = box | act | light | id;
    return box;
}

wool_t* unpack(uint64_t box) {
    wool_t* wool = malloc(sizeof(wool_t));
    wool->activity = (box & ACTIVITY_MASK) >> ACTIVITY_OFFSET;
    wool->light = (box & LIGHT_MASK) >> (LIGHT_OFFSET);
    wool->id = (box & ID_MASK) >> (ID_OFFSET);
    return wool;
}
