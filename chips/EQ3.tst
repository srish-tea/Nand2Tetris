//test script for EQ3 chip

load EQ3.hdl,
output-file EQ3.out,
compare-to EQ3.cmp,
output-list a%B1.3.1 b%B1.3.1 out%B2.1.2,
set a %B111,
set b %B111,
eval,
output;

set a %B101,
set b %B100,
eval,
output;

set a %B001,
set b %B001,
eval,
output;

set a %B010,
set b %B011,
eval,
output;