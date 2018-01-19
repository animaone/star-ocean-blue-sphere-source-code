.BANK $3a SLOT 1
.ORG 0
.incbin "data/3a_4000.data"
ld a,($cd7b)		
ld ($cd7f),a		
ld a,($cd7c)		
ld ($cd80),a		
call  rlabel_3A_401D 
ld a,($cd7f)		
ld ($cd7b),a		
ld a,($cd80)		
ld ($cd7c),a		
ret			
rlabel_3A_401D:
ld a,($cd80)		
add a			
add a			
call  rlabel_00_0462 
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_275E 
pop hl			
inc hl			
inc hl			
ld a,($cd7f)		
inc a			
cp (hl)			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4034 > < 3a4034 3A 4034 | 3806: jr c, $06 >
inc hl			
ld a,(hl)		
ld ($cd80),a		
xor a			
ld ($cd7f),a		
xor a			
ld ($cd46),a		
ret			
.incbin "data/3a_4044.data"
ld a,c			
or a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x7d51 > < 3a7d51 3A 7D51 | 200C: jr nz, $0C >
ld a,($ccca)		
ld ($cccb),a		
ld a,($ccc9)		
ld ($ccca),a		
ld a,$20		
ld ($ff00+$00),a	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
cpl			
and $0f			
swap a			
ld b,a			
ld a,$10		
ld ($ff00+$00),a	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
cpl			
and $0f			
or b			
ld d,a			
ld a,c			
or a			
jp nz,$7de6		
ld a,d			
ld ($ccc9),a		
ld a,$30		
ld ($ff00+$00),a	
ld a,($ccc9)		
ld b,a			
ld a,($ccca)		
xor b			
and b			
ld ($ff00+$a5),a	
ld a,b			
ld ($ff00+$a4),a	
ld a,($ccc9)		
or a			
.DB $28 $23 ; < ['$28', '$23'] > < 0x7da1 > < 3a7da1 3A 7DA1 | 2823: jr z, $23 >
ld a,($ccca)		
ld b,a			
ld a,($ccc9)		
cp b			
.DB $20 $15 ; < ['$20', '$15'] > < 0x7dab > < 3a7dab 3A 7DAB | 2015: jr nz, $15 >
ld a,($cbf0)		
ld b,a			
inc b			
ld a,($cccc)		
add b			
ld ($cccc),a		
.DB $30 $05 ; < ['$30', '$05'] > < 0x7db9 > < 3a7db9 3A 7DB9 | 3005: jr nc, $05 >
.incbin "data/3a_7DBB.data"
.DB $18 $04 ; < ['$18', '$04'] > < 0x7dc0 > < 3a7dc0 3A 7DC0 | 1804: jr $04 >
xor a			
ld ($cccc),a		
ld a,($ff00+$a5)	
and $0f			
ld ($cccd),a		
ld a,($cccc)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x7dd1 > < 3a7dd1 3A 7DD1 | 2807: jr z, $07 >
ld a,($cccc)		
cp $0f			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x7dd8 > < 3a7dd8 3A 7DD8 | 380C: jr c, $0C >
ld a,($cccd)		
ld b,a			
ld a,($ff00+$a4)	
and $f0			
or b			
ld ($cccd),a		
ld a,($cbf7)		
or a			
.DB $20 $2e ; < ['$20', '$2e'] > < 0x7dea > < 3a7dea 3A 7DEA | 202E: jr nz, $2E >
ld a,d			
and $0f			
cp $0f			
jp nz,$7e1a		
.incbin "data/3a_7DF4.data"
ret			
.incbin "data/3a_7E1B.data"
