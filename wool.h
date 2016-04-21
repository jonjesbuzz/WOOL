#ifndef WOOL_H
#define WOOL_H

#include <stdint.h>

#define ACTIVITY_MASK 0xFF00000000
#define ACTIVITY_OFFSET 32
#define LIGHT_MASK 0x00FFFF0000
#define LIGHT_OFFSET 16
#define ID_MASK 0x000000FFFF
#define ID_OFFSET 0


typedef struct _wool {
    uint16_t light;
    uint16_t id;
    uint8_t activity;
} wool_t;

uint64_t pack(wool_t* wool);
wool_t* unpack(uint64_t box);

#endif