vga_fun cp     0x80000067   color                 // set vga_color to a color
        cp     0x80000062   one			  // set vga_write to 1

        cp     0x80000063   x1                    // x1?
        cp     0x80000064   y1                    // x2
        cp     0x80000065   x2                    // y1
        cp     0x80000066   y2                    // y2

        cp     0x80000060   one                   // set command to 1
IAR     bne    IAR          0x80000061   one      // wait for response 0->1

        cp     0x80000060   zero                  // set command to 0
IAR2    bne    IAR2         0x80000061   zero     // wait for response 1->0
        ret    vga_ra



vga_ra  0

color   0

zero    0
one     1
two     2
three   3
four    4
five    5



x1      0
x2      0
y1      0
y2      0


