.BANK $88 SLOT 1
.ORG 0
.incbin "data/88_4000.data"
ld hl,$4c01		
ld a,d			
add h			
ld h,a			
xor a			
ld c,a			
ldi a,(hl)		
cp e			
ret z			
.incbin "data/88_6FF2.data"
