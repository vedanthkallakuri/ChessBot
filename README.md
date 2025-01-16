<img width="740" alt="Screenshot 2025-01-16 at 12 47 21 PM" src="https://github.com/user-attachments/assets/f0932cf1-2981-4cdd-acea-47f9f5a1cc94" />

## About
ChessBot is an innovative miniature chess prototype designed to combine physical and digital gameplay. As a piece moves on the physical board, the board is updated in real time on the vga monitor. The system utilizes a 2x2 chessboard with embedded buttons to track piece placement and removal, displaying real-time updates on a VGA monitor. The ChessBot is powered by a DE2-115 FPGA board and integrates GPIO inputs to detect piece positions and corresponding VGA output to display those positions on a screen.

<img width="667" alt="Screenshot 2025-01-16 at 12 54 27 PM" src="https://github.com/user-attachments/assets/24cb2299-acdb-4a8c-b48e-24b620276832" />

## Technologies Used
* E100 Assembly Language: Low-level programming in E100 assembly language is used to interface with the FPGA board and control the logic of piece placement, button detection, and VGA display.
* Verilog: Verilog was used for hardware-level design, including FPGA programming for GPIO input handling and VGA signal generation.

## GPIO and VGA Functionality
* GPIO Input: The board uses push-buttons wired to GPIO pins on the DE2-115 FPGA. These buttons close a circuit when pressed, signaling whether a piece is present on a square.
* VGA Output: The state of the board is stored in a data array. Each square is represented by a binary value (0 for no piece, 1 for a piece present). The display_piece function updates the VGA monitor by looping through the data array and displaying the corresponding piece at the appropriate position.

## Embedded
The chessboard consists of a 2x2 grid with embedded buttons connected to the DE2-115 FPGA via a breadboard circuit. This allows for easy toggling between piece states and updates in real-time. The VGA monitor is used to visually display the game’s state.

## Successes
* Scalability: The modular design of the board and circuit allows for easy scaling. The button input system is adaptable, and the logic used to process button presses is simple but effective for tracking piece positions.
* Functionality: The ChessBot successfully detects the placement and removal of pieces and accurately displays the board state on the VGA monitor, fulfilling the core objectives of the project.


<img width="482" alt="Screenshot 2025-01-16 at 12 44 36 PM" src="https://github.com/user-attachments/assets/e789b485-4a23-4563-8a44-6380937f1fba" />
