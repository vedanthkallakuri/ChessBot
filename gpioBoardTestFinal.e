start				and currentBit1 0x80000104 firstBit
					cpfa oldDataComparator data iterator
					be check1 currentBit1 pieceOff
					
checkSecond			cp oldBit1 currentBit1
		
					add iterator iterator iteratorAddend
					cp currentBit2 0x80000104
					sr currentBit2 currentBit2 one1
					and currentBit2 currentBit2 firstBit
					cpfa oldDataComparator data iterator
					be check2 currentBit2 pieceOff

					
checkThird			cp oldBit2 currentBit2
					
					add iterator iterator iteratorAddend
					cp currentBit3 0x80000104
					sr currentBit3 currentBit3 two2
					and currentBit3 currentBit3 firstBit
					cpfa oldDataComparator data iterator
					be check3 currentBit3 pieceOff
			
checkFourth			cp oldBit3 currentBit3
					
					add iterator iterator iteratorAddend
					cp currentBit4 0x80000104
					sr currentBit4 currentBit4 three3
					and currentBit4 currentBit4 firstBit
					cpfa oldDataComparator data iterator
					be check4 currentBit4 pieceOff
					
endFourth			cp oldBit4 currentBit4

					cp iterator iteratorReset
					
					cp 0x80000003 0x80000104
					
					be start 1 1

					
check1				be changeArray1 oldBit1 pieceOn
					be checkSecond 1 1
					
check2				be changeArray2 oldBit2 pieceOn
					be checkThird 1 1
					
check3				be changeArray3 oldBit3 pieceOn
					be checkFourth 1 1
					
check4				be changeArray4 oldBit4 pieceOn
					be endFourth 1 1
					
					
changeArray1		be piecePlaced1 oldDataComparator pieceOff

					be pieceRemoved1 oldDataComparator pieceOn
piecePlaced1		cpta pieceOn data iterator

					call    display_piece_f        d_ret
					
					be checkSecond 1 1
pieceRemoved1		cpta pieceOff data iterator

					call    display_piece_f        d_ret

					be checkSecond 1 1
					
changeArray2		be piecePlaced2 oldDataComparator pieceOff
					be pieceRemoved2 oldDataComparator pieceOn
piecePlaced2		cpta pieceOn data iterator

					call    display_piece_f        d_ret

					be checkThird 1 1
pieceRemoved2		cpta pieceOff data iterator

					call    display_piece_f        d_ret

					be checkThird 1 1
					
changeArray3		be piecePlaced3 oldDataComparator pieceOff
					be pieceRemoved3 oldDataComparator pieceOn
piecePlaced3		cpta pieceOn data iterator

					call    display_piece_f        d_ret

					be checkFourth 1 1
pieceRemoved3		cpta pieceOff data iterator

					call    display_piece_f        d_ret

					be checkFourth 1 1

					
changeArray4		be piecePlaced4 oldDataComparator pieceOff
					be pieceRemoved4 oldDataComparator pieceOn
piecePlaced4		cpta pieceOn data iterator

					call    display_piece_f        d_ret

					be endFourth 1 1
pieceRemoved4		cpta pieceOff data iterator

					call    display_piece_f        d_ret

					be endFourth 1 1
					
arraySize			4
iterator			0
iteratorReset		0
iteratorAddend		1

oldDataComparator	0

data				0
					0
					0
					0

currentBit1			0
currentBit2			0
currentBit3			0
currentBit4			0

one1 				1
two2				2
three3				3

oldBit1				0
oldBit2				0
oldBit3				0
oldBit4				0
firstBit			1

pieceOn				1
pieceOff			0

ret_next			0

#include vga_display_piece.e