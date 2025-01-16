print_board
// reset screen to black  

                cp          color       black

                cp          x1          zero
                cp          x2          lrx
                cp          y1          zero
                cp          y2          lry

                cp          row_num     zero
                cp          col_num     zero

                cpdata      reset_x     270

                cpdata      x1new       270
                cpdata      x2new       270
                cpdata      y1new       190
                cpdata      y2new       190

                cp          i           zero

                call        vga_fun     vga_ra


// loop through all elements

               
b_loop2         add         y1new       y1new       one
                add         y2new       y2new       one
                cp          x1new       reset_x
                cp          x2new       reset_x
                cp          row_num     zero
                add         col_num     col_num     one

b_loop          cpfa        new_col     board       i

                cp          color       new_col

                cp          x1          x1new
                cp          x2          x2new
                cp          y1          y1new
                cp          y2          y2new

                add         row_num     row_num     one
                add         x1new       x1new       one          
                add         x2new       x2new       one
                add         i           i           one
                call        vga_fun     vga_ra

                blt         b_loop      row_num     hundred

                blt         b_loop2     col_num     hundred

                ret         board_ret

black           0


new_col         0


i               0

x1new           270   // set to 270 for center & 0 for top left
x2new           270   // set to 270 for center & 0 for top left
y1new           190   // set to 190 for center & 0 for top left
y2new           190   // set to 190 for center & 0 for top left

hundred         100

lrx             639
lry             479

col_num         0
row_num         0

reset_x         270   // set to 270 for center & 0 for top left

board_ret       0

#include board.e
#include vga_driver.e