display_piece_f call        print_board     board_ret


read_loop       be          reset_board_i       board_i         four
                cpfa        board_state         data            board_i
                be          check_state         zero            zero


check_state     be          add_board_i_l       board_state     zero

check_square    be          square_1            board_i         zero
                be          square_2            board_i         one
                be          square_3            board_i         two
                be          square_4            board_i         three

add_board_i_l   call        add_board_i         add_ret
                be          read_loop           zero            zero

add_board_i     add         board_i             board_i         one
                ret         add_ret

// change pixel position based on square that has value of 1

square_1        cpdata      x1new               285
                cpdata      x2new               285
                cpdata      y1new               205
                cpdata      y2new               205
                cpdata      reset_x             285
                
                call        p_start             p_ret
                be          add_board_i_l       zero         zero


square_2        cpdata      x1new               335
                cpdata      x2new               335
                cpdata      y1new               205
                cpdata      y2new               205
                cpdata      reset_x             335

                call        p_start             p_ret
                be          add_board_i_l       zero         zero


square_3        cpdata      x1new               285
                cpdata      x2new               285
                cpdata      y1new               255
                cpdata      y2new               255
                cpdata      reset_x             285
                
                call        p_start             p_ret
                be          add_board_i_l       zero         zero
                

square_4        cpdata      x1new               335
                cpdata      x2new               335
                cpdata      y1new               255
                cpdata      y2new               255
                cpdata      reset_x             335

                call        p_start             p_ret
                be          add_board_i_l       zero         zero


// display piece on board

p_start         cpdata      i                   0
                cpdata      col_num             0
                cpdata      row_num             0
                cpdata      new_col             0
                cpdata      color               0


p_loop2         add         y1new               y1new           one
                add         y2new               y2new           one
                cp          x1new               reset_x
                cp          x2new               reset_x
                cp          row_num             zero
                add         col_num             col_num         one

p_loop          cpfa        new_col             piece_w         i

                cp          color               new_col

                cp          x1                  x1new
                cp          x2                  x2new
                cp          y1                  y1new
                cp          y2                  y2new

                add         row_num             row_num         one
                add         x1new               x1new           one          
                add         x2new               x2new           one
                add         i                   i               one
                call        vga_fun             vga_ra

                blt         p_loop              row_num         twenty

                blt         p_loop2             col_num         twenty
                
                ret         p_ret


reset_board_i   cp          board_i             zero
                ret         d_ret


twenty          20
six             
board_i         0
board_state     0


add_ret         0
reset_ret       0
p_ret           0

d_ret           0
#include vga_reset_board.e
#include piece_w.e
