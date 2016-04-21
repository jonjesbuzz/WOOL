#include "wool.h"
#include <stdio.h>
#include <stdlib.h>

char buf[11];

int main(int argc, char const *argv[])
{
    wool_t* baaa = malloc(sizeof(wool_t));
    baaa->activity = (uint8_t) 0xCD;
    baaa->light = 0xABBA;
    baaa->id = 0xBAAA;
    uint64_t packed = pack(baaa);
    free(baaa);
    printf("%llX\n", packed);
    sprintf(buf, "%llX", packed);

    wool_t* unpacked = unpack(packed);
    printf("Activity:\t0x%X\nLight:\t\t0x%X\nID:\t\t0x%X\n", unpacked->activity, unpacked->light, unpacked->id);
    free(unpacked);
    return 0;
}

//883349437098
//CDABBABAAA
//bwpncspenc8