Address       Data Definition
0x10010000    aa:  .word 42
0x10010004    bb:  .word 666
0x10010008    cc:  .word 1
0x1001000C         .word 3
0x10010010         .word 5
0x10010014         .word 7


la   $t0, aa
$t0 = 0x10010000
lw   $t0, bb
$t0 = 666
lb   $t0, bb
666 = 01 02 03 04
$t0 =  01 
lw   $t0, aa+4
666
la   $t1, cc
lw   $t0, ($t1)
1

la   $t1, cc
lw   $t0, 8($t1)
li   $t1, 8
lw   $t0, cc($t1)
la   $t1, cc
lw   $t0, 2($t1)




int u;			#
int v = 42;
char w;
char x = 'a';
double y;
int z[20]