.BANK $0f SLOT 1
.ORG 0
.incbin "data/0f_4000.data"
xor a			
add b			
and $f8			
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
add hl,de		
ld a,c			
srl a			
srl a			
srl a			
jp $0462		
.incbin "data/0f_41FE.data"
