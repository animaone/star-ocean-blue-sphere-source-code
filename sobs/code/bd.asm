.BANK $bd SLOT 1
.ORG 0
.incbin "data/bd_4000.data"
ld a,($d362)		
cp $80			
ret z			
ld hl,$d338		
ld a,(hl)		
ld (hl),$00		
dec a			
call  rlabel_00_3005 
.incbin "data/bd_4011.data"
ld a,($d339)		
ld ($d363),a		
ret			
ld hl,$d39b		
set 0,(hl)		
ld hl,$d3c4		
set 0,(hl)		
ld hl,$d3ed		
set 0,(hl)		
ld hl,$d390		
set 0,(hl)		
ret			
ld hl,$d39b		
res 0,(hl)		
ld hl,$d3c4		
res 0,(hl)		
ld hl,$d3ed		
res 0,(hl)		
ld hl,$d390		
res 0,(hl)		
ret			
.incbin "data/bd_4058.data"
.DB $3e $ff ; < ['$3e', '$ff'] > < 0x418f > < bd418f BD 418F | 3EFF: ld a, $FF >
ld ($d424),a		
ld a,($d4fe)		
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
ld de,$41c4		
add hl,de		
ld de,$d48f		
xor a			
ld (de),a		
inc de			
ld ($d494),a		
ld ($d496),a		
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ld ($d495),a		
ld ($d497),a		
ldi a,(hl)		
ld (de),a		
ld b,$0a		
ld hl,$6019		
rst $28			
ret			
.incbin "data/bd_41C4.data"
rlabel_BD_49E4:
di			
ld c,$00		
ld a,(hl)		
and $07			
ld b,a			
push bc			
xor a			
ld ($ff00+c),a		
ld a,$30		
ld ($ff00+c),a		
ld b,$10		
ld d,(hl)		
inc hl			
ld e,$08		
ld a,$20		
srl d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x49fb > < bd49fb BD 49FB | 3002: jr nc, $02 >
ld a,$10		
ld ($ff00+c),a		
ld a,$30		
ld ($ff00+c),a		
dec e			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x4a04 > < bd4a04 BD 4A04 | 20F1: jr nz, $F1 >
dec b			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x4a07 > < bd4a07 BD 4A07 | 20EA: jr nz, $EA >
ld a,$20		
ld ($ff00+c),a		
ld a,$30		
ld ($ff00+c),a		
ei			
push hl			
ld c,$04		
call  rlabel_00_0AA0 
pop hl			
pop bc			
dec b			
.DB $20 $d0 ; < ['$20', '$d0'] > < 0x4a19 > < bd4a19 BD 4A19 | 20D0: jr nz, $D0 >
ret			
rlabel_BD_4A1C:
ld hl,$4a65		
call  rlabel_BD_49E4 
ld c,$00		
ld a,($ff00+c)		
and $03			
cp $03			
.DB $20 $20 ; < ['$20', '$20'] > < 0x4a29 > < bd4a29 BD 4A29 | 2020: jr nz, $20 >
ld a,$20		
ld ($ff00+c),a		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,$30		
ld ($ff00+c),a		
ld a,$10		
ld ($ff00+c),a		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,$30		
ld ($ff00+c),a		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
ld a,($ff00+c)		
and $03			
cp $03			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4a47 > < bd4a47 BD 4A47 | 2002: jr nz, $02 >
xor a			
ret			
.incbin "data/bd_4A4B.data"
ld c,$3a		
call  rlabel_00_0AA0 
call  rlabel_BD_4A1C 
ret z			
.incbin "data/bd_4B94.data"
ld a,($cad7)		
and a			
ret nz			
ld a,($cad8)		
and a			
ret nz			
ld hl,$d471		
ldi a,(hl)		
cp (hl)			
.DB $28 $21 ; < ['$28', '$21'] > < 0x70c1 > < bd70c1 BD 70C1 | 2821: jr z, $21 >
.incbin "data/bd_70C3.data"
ld hl,$d473		
ldi a,(hl)		
cp (hl)			
ret z			
.incbin "data/bd_70EA.data"
ld a,($d41e)		
and a			
ret z			
ld a,($d32e)		
and a			
ld hl,$7195		
.DB $28 $03 ; < ['$28', '$03'] > < 0x7143 > < bd7143 BD 7143 | 2803: jr z, $03 >
ld hl,$7185		
ld a,($d361)		
and $03			
add a			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld b,d			
ld c,e			
inc c			
inc c			
inc c			
inc c			
call  rlabel_00_0654 
call  rlabel_00_0658 
ld hl,$71b1		
call  rlabel_00_0658 
ld hl,$71b1		
call  rlabel_00_0658 
ld hl,$7225		
ld e,c			
ld d,b			
ld a,$01		
ld ($ff00+$4f),a	
ld a,($cbf2)		
and a			
call nz,$0658		
xor a			
ld ($ff00+$4f),a	
ret			
.incbin "data/bd_7185.data"
call  rlabel_BD_7234 
call c,$7292		
ret			
rlabel_BD_7234:
ld de,$0004		
ld a,d			
ld hl,$d4c7		
add (hl)		
add hl,de		
add (hl)		
add hl,de		
add (hl)		
add hl,de		
add (hl)		
ret z			
ld a,($d4c3)		
add a			
add a			
ld e,a			
ld d,$00		
ld hl,$d4c4		
add hl,de		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld c,a			
ld a,(hl)		
ld b,a			
cp $10			
.DB $30 $2a ; < ['$30', '$2a'] > < 0x7259 > < bd7259 BD 7259 | 302A: jr nc, $2A >
call  rlabel_BD_72D1 
ld hl,$c000		
and a			
.DB $28 $26 ; < ['$28', '$26'] > < 0x7262 > < bd7262 BD 7262 | 2826: jr z, $26 >
ld a,b			
dec a			
rra			
rra			
and $0e			
add $4a			
ld b,a			
ld a,c			
sub $08			
ld c,a			
ldi (hl),a		
ld a,e			
sub $08			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld a,$07		
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld (hl),$27		
scf			
ret			
ld (hl),$00		
ld hl,$c000		
ld de,$0004		
ld (hl),d		
add hl,de		
ld (hl),d		
scf			
ret			
ld b,$05		
ld a,($d4c3)		
ld d,$00		
dec b			
ret z			
inc a			
cp $04			
.DB $38 $01 ; < ['$38', '$01'] > < 0x729e > < bd729e BD 729E | 3801: jr c, $01 >
xor a			
ld c,a			
add a			
add a			
ld e,a			
ld hl,$d4c7		
add hl,de		
ld a,(hl)		
and a			
ld a,c			
.DB $28 $eb ; < ['$28', '$eb'] > < 0x72ac > < bd72ac BD 72AC | 28EB: jr z, $EB >
ld ($d4c3),a		
ld c,$08		
ld de,$0004		
ld hl,$d4c7		
ld a,(hl)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x72bb > < bd72bb BD 72BB | 2801: jr z, $01 >
inc (hl)		
add hl,de		
ld a,(hl)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x72c1 > < bd72c1 BD 72C1 | 2801: jr z, $01 >
inc (hl)		
add hl,de		
ld a,(hl)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x72c7 > < bd72c7 BD 72C7 | 2801: jr z, $01 >
.incbin "data/bd_72C9.data"
add hl,de		
ld a,(hl)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x72cd > < bd72cd BD 72CD | 2801: jr z, $01 >
inc (hl)		
ret			
rlabel_BD_72D1:
ld l,e			
ld h,d			
di			
ld a,($d351)		
cpl			
ld e,a			
ld a,($d352)		
ei			
cpl			
ld d,a			
inc de			
add hl,de		
ld a,l			
sub $38			
ld e,a			
ld a,h			
and a			
ld a,$01		
ret z			
.incbin "data/bd_72EA.data"
ld hl,$d43a		
ldi a,(hl)		
ld e,a			
cpl			
ld c,a			
ld a,(hl)		
ld d,a			
cpl			
ld b,a			
inc bc			
ld hl,$00e0		
ld a,($d35d)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x74a2 > < bd74a2 BD 74A2 | 2801: jr z, $01 >
add hl,de		
ld e,l			
ld d,h			
ld hl,$d3aa		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ld a,l			
ld ($d3b1),a		
ld a,h			
ld ($d3b2),a		
bit 7,a			
.DB $20 $11 ; < ['$20', '$11'] > < 0x74b8 > < bd74b8 BD 74B8 | 2011: jr nz, $11 >
and a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x74bb > < bd74bb BD 74BB | 2005: jr nz, $05 >
ld a,l			
cp $e0			
.DB $38 $09 ; < ['$38', '$09'] > < 0x74c0 > < bd74c0 BD 74C0 | 3809: jr c, $09 >
ld hl,$d3ab		
ld a,d			
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x74c7 > < bd74c7 BD 74C7 | 2802: jr z, $02 >
ldd (hl),a		
ld (hl),e		
ld hl,$d3d3		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ld a,l			
ld ($d3da),a		
ld a,h			
ld ($d3db),a		
bit 7,a			
.DB $20 $11 ; < ['$20', '$11'] > < 0x74dc > < bd74dc BD 74DC | 2011: jr nz, $11 >
and a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x74df > < bd74df BD 74DF | 2005: jr nz, $05 >
ld a,l			
cp $e0			
.DB $38 $09 ; < ['$38', '$09'] > < 0x74e4 > < bd74e4 BD 74E4 | 3809: jr c, $09 >
ld hl,$d3d4		
ld a,d			
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x74eb > < bd74eb BD 74EB | 2802: jr z, $02 >
.incbin "data/bd_74ED.data"
ld hl,$d3fc		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ld a,l			
ld ($d403),a		
ld a,h			
ld ($d404),a		
bit 7,a			
.DB $20 $11 ; < ['$20', '$11'] > < 0x7500 > < bd7500 BD 7500 | 2011: jr nz, $11 >
and a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x7503 > < bd7503 BD 7503 | 2005: jr nz, $05 >
ld a,l			
cp $e0			
.DB $38 $09 ; < ['$38', '$09'] > < 0x7508 > < bd7508 BD 7508 | 3809: jr c, $09 >
ld hl,$d3fd		
ld a,d			
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x750f > < bd750f BD 750F | 2802: jr z, $02 >
ldd (hl),a		
ld (hl),e		
ld a,($d367)		
inc a			
ret z			
ld hl,$d37c		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
push hl			
bit 7,h			
.DB $20 $12 ; < ['$20', '$12'] > < 0x7522 > < bd7522 BD 7522 | 2012: jr nz, $12 >
ld a,h			
and a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x7526 > < bd7526 BD 7526 | 2005: jr nz, $05 >
ld a,l			
cp $e0			
.DB $38 $09 ; < ['$38', '$09'] > < 0x752b > < bd752b BD 752B | 3809: jr c, $09 >
ld hl,$d37d		
ld a,d			
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x7532 > < bd7532 BD 7532 | 2802: jr z, $02 >
.incbin "data/bd_7534.data"
ld a,($d365)		
ld hl,$3440		
call  rlabel_00_04A7 
ld de,$0016		
add hl,de		
pop de			
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
xor a			
ld ($d394),a		
ld ($d398),a		
ld ($d397),a		
push de			
push bc			
call  rlabel_BD_75A0 
pop bc			
pop de			
ld hl,$d396		
ld a,d			
di			
ldd (hl),a		
ld a,e			
ldd (hl),a		
ld (hl),c		
ei			
ret			
di			
ld a,($d351)		
cpl			
ld c,a			
ld a,($d352)		
ei			
cpl			
ld b,a			
inc bc			
ld hl,$d395		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ld a,l			
sub $48			
ld ($ff00+$b5),a	
ld a,($d394)		
ld ($ff00+$b4),a	
ld hl,$d399		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d370)		
ld b,a			
jp $3401		
ld hl,$d397		
ld a,(hl)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x7594 > < bd7594 BD 7594 | 2802: jr z, $02 >
dec (hl)		
ret			
ld hl,$d398		
inc (hl)		
call  rlabel_BD_75A0 
ret			
rlabel_BD_75A0:
ld a,($d393)		
dec a			
ld hl,$75d5		
call  rlabel_00_04A7 
ld a,($d398)		
call  rlabel_00_04A7 
ld a,l			
and a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x75b2 > < bd75b2 BD 75B2 | 281D: jr z, $1D >
ld ($d397),a		
ld a,h			
inc a			
add a			
ld e,a			
ld d,$00		
ld hl,$d370		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
call  rlabel_00_3429 
inc de			
ld hl,$d399		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
ld ($d394),a		
ret			
.incbin "data/bd_75D5.data"
ld hl,$7994		
ld de,$8480		
ld bc,$000c		
ld a,$bd		
jp $06fd		
.incbin "data/bd_7994.data"
