.BANK $b8 SLOT 1
.ORG 0
.incbin "data/b8_4000.data"
rlabel_B8_4009:
ld a,$02		
add a			
add a			
ld de,$c000		
call  rlabel_00_045D 
ld hl,$d5cc		
ld a,$10		
push af			
push hl			
call  rlabel_B8_4031 
pop hl			
ld a,$10		
call  rlabel_00_0462 
pop af			
dec a			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x4025 > < b84025 B8 4025 | 20F1: jr nz, $F1 >
ld h,d			
ld l,e			
xor a			
ldi (hl),a		
ld a,l			
cp $78			
.DB $38 $f9 ; < ['$38', '$f9'] > < 0x402e > < b8402e B8 402E | 38F9: jr c, $F9 >
ret			
rlabel_B8_4031:
ld a,(hl)		
and a			
ret z			
cp $ff			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4036 > < b84036 B8 4036 | 2802: jr z, $02 >
dec a			
ld (hl),a		
push de			
inc hl			
ld a,(hl)		
dec a			
ld (hl),a		
inc a			
.DB $28 $1f ; < ['$28', '$1f'] > < 0x4040 > < b84040 B8 4040 | 281F: jr z, $1F >
inc hl			
inc hl			
inc hl			
inc hl			
inc hl			
ld e,(hl)		
inc hl			
ld d,(hl)		
inc hl			
ld b,(hl)		
inc hl			
inc hl			
ld a,(hl)		
add $10			
ld ($ff00+$b4),a	
inc hl			
inc hl			
ld a,(hl)		
add $08			
ld ($ff00+$b5),a	
ld h,d			
ld l,e			
pop de			
call  rlabel_00_3401 
ret			
push hl			
inc hl			
ld a,(hl)		
inc a			
ld (hl),a		
dec a			
add a			
add a			
inc hl			
ld e,(hl)		
inc hl			
ld d,(hl)		
inc hl			
ld c,(hl)		
call  rlabel_00_045D 
call  rlabel_00_3321 
inc de			
push bc			
call  rlabel_00_3321 
inc de			
inc hl			
ld (hl),b		
call  rlabel_00_3321 
inc de			
inc hl			
ld (hl),b		
call  rlabel_00_3321 
inc de			
inc hl			
ld (hl),b		
pop bc			
pop hl			
ld a,b			
dec a			
ld (hl),a		
inc a			
and a			
.DB $20 $b0 ; < ['$20', '$b0'] > < 0x4090 > < b84090 B8 4090 | 20B0: jr nz, $B0 >
inc hl			
ld (hl),a		
dec hl			
.DB $18 $ca ; < ['$18', '$ca'] > < 0x4095 > < b84095 B8 4095 | 18CA: jr $CA >
rlabel_B8_4097:
ld d,$00		
.DB $18 $02 ; < ['$18', '$02'] > < 0x4099 > < b84099 B8 4099 | 1802: jr $02 >
.incbin "data/b8_409B.data"
rlabel_B8_409D:
ld e,$b7		
rlabel_B8_409F:
push af			
ld a,b			
ld ($cb89),a		
ld a,c			
ld ($cb8b),a		
ld b,d			
ld c,e			
ld d,h			
ld e,l			
pop af			
add a			
add a			
add a			
add a			
ld hl,$d5cc		
call  rlabel_00_0462 
ld a,(hl)		
and a			
ret nz			
call  rlabel_B8_40E1 
ld (hl),b		
xor a			
inc hl			
ld (hl),a		
inc hl			
ld (hl),a		
inc hl			
ld (hl),e		
inc hl			
ld (hl),d		
inc hl			
ld (hl),c		
inc hl			
ld (hl),a		
inc hl			
ld (hl),a		
inc hl			
ld (hl),a		
ld a,($cb89)		
ld b,a			
ld a,($cb8b)		
ld c,a			
xor a			
inc hl			
ld (hl),a		
inc hl			
ld (hl),b		
inc hl			
ld (hl),a		
inc hl			
ld (hl),c		
ret			
rlabel_B8_40E1:
ld a,b			
and a			
ret nz			
push de			
push bc			
call  rlabel_00_3321 
inc de			
inc de			
inc de			
inc de			
ld a,b			
pop bc			
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x40f0 > < b840f0 B8 40F0 | 2804: jr z, $04 >
add b			
ld b,a			
.DB $18 $ef ; < ['$18', '$ef'] > < 0x40f4 > < b840f4 B8 40F4 | 18EF: jr $EF >
pop de			
ret			
rlabel_B8_40F8:
swap a			
ld hl,$d5cc		
call  rlabel_00_0462 
xor a			
ld (hl),a		
ret			
.incbin "data/b8_4103.data"
rlabel_B8_415C:
swap a			
ld hl,$d5cc		
call  rlabel_00_0462 
ld a,(hl)		
ret			
.incbin "data/b8_4166.data"
rlabel_B8_4187:
call  rlabel_00_027C 
call  rlabel_B8_4009 
ret			
rlabel_B8_418E:
ld b,$05		
ld hl,$5506		
rst $28			
call  rlabel_B8_4009 
ret			
rlabel_B8_4198:
ld de,$41e1		
rlabel_B8_419B:
ld h,d			
ld l,e			
push bc			
push hl			
call  rlabel_00_05DB 
ld a,($cad7)		
and a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x41a6 > < b841a6 B8 41A6 | 2005: jr nz, $05 >
call  rlabel_B8_4187 
.DB $18 $03 ; < ['$18', '$03'] > < 0x41ab > < b841ab B8 41AB | 1803: jr $03 >
.incbin "data/b8_41AD.data"
pop hl			
pop bc			
dec c			
.DB $20 $e8 ; < ['$20', '$e8'] > < 0x41b3 > < b841b3 B8 41B3 | 20E8: jr nz, $E8 >
ret			
rlabel_B8_41B6:
ld de,$41e1		
ld h,d			
ld l,e			
push hl			
call  rlabel_00_05DB 
call  rlabel_B8_418E 
pop hl			
ld a,($cad7)		
and a			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0x41c7 > < b841c7 B8 41C7 | 20F2: jr nz, $F2 >
ret			
rlabel_B8_41CA:
ld de,$41e1		
ld h,d			
ld l,e			
push hl			
push bc			
call  rlabel_00_05DB 
call  rlabel_B8_4187 
pop bc			
ld a,c			
call  rlabel_B8_415C 
pop hl			
and a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x41de > < b841de B8 41DE | 20EF: jr nz, $EF >
ret			
ret			
.incbin "data/b8_41E2.data"
rlabel_B8_41F0:
ld a,e			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ret			
.incbin "data/b8_41F9.data"
rlabel_B8_41FE:
ld de,$7fff		
ld c,$10		
ld b,$05		
ld hl,$5441		
rst $28			
call  rlabel_B8_41B6 
ld c,$10		
ld b,$05		
ld hl,$54ed		
rst $28			
call  rlabel_B8_41B6 
ret			
rlabel_B8_4218:
ld a,($ff00+$a6)	
and $01			
ret nz			
ld a,$02		
call  rlabel_00_05B1 
ret			
rlabel_B8_4223:
ld a,($d448)		
cp $60			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4228 > < b84228 B8 4228 | 3805: jr c, $05 >
.incbin "data/b8_422A.data"
ld b,$0a		
ld hl,$6258		
rst $28			
ld a,$01		
ld ($d2ed),a		
ret			
.incbin "data/b8_423B.data"
rlabel_B8_42A5:
call  rlabel_B8_42F0 
ld b,$0a		
ld hl,$59e7		
rst $28			
ret			
.incbin "data/b8_42AF.data"
rlabel_B8_42F0:
ld b,$0a		
ld hl,$68f9		
rst $28			
ld c,$07		
ld b,$0a		
ld hl,$6902		
rst $28			
ret			
.incbin "data/b8_42FF.data"
xor a			
ld b,$48		
ld c,$40		
ld hl,$412f		
call  rlabel_B8_4097 
xor a			
ld c,a			
call  rlabel_B8_41CA 
ld a,($d2eb)		
ld hl,$4874		
call  rlabel_00_0462 
ld d,(hl)		
xor a			
ld b,$48		
ld c,$40		
ld hl,$414d		
call  rlabel_B8_409D 
xor a			
ld c,a			
call  rlabel_B8_41CA 
ld a,$42		
call  rlabel_00_3071 
ld a,($d2eb)		
ld e,a			
ld hl,$4864		
call  rlabel_B8_41F0 
ld a,$01		
ld b,$48		
ld c,$40		
ld d,$ff		
ld e,$b8		
call  rlabel_B8_409F 
xor a			
ld b,$48		
ld c,$3c		
ld hl,$4140		
call  rlabel_B8_4097 
ld c,$20		
call  rlabel_B8_4198 
ld a,$37		
call  rlabel_00_3071 
ld d,$48		
ld c,$02		
ld b,$0a		
ld hl,$591b		
rst $28			
ld b,$0a		
ld hl,$5981		
rst $28			
push bc			
call  rlabel_B8_4187 
pop bc			
ld a,c			
and a			
.DB $28 $f1 ; < ['$28', '$f1'] > < 0x4829 > < b84829 B8 4829 | 28F1: jr z, $F1 >
call  rlabel_B8_42A5 
ld a,$01		
call  rlabel_B8_40F8 
call  rlabel_B8_4223 
call  rlabel_B8_41FE 
ld a,$a3		
call  rlabel_00_3071 
ld a,($d2eb)		
ld e,a			
ld hl,$486c		
call  rlabel_B8_41F0 
xor a			
ld b,$4c		
ld c,$40		
call  rlabel_B8_4097 
ld c,$10		
ld de,$485e		
call  rlabel_B8_419B 
xor a			
ld c,a			
call  rlabel_B8_41CA 
ret			
ld c,$38		
call  rlabel_B8_4218 
ret			
.incbin "data/b8_4864.data"
ld a,($cb94)		
ld c,a			
ld a,($cb95)		
add $09			
ld d,a			
ld a,($cb68)		
cp $70			
.DB $38 $4c ; < ['$38', '$4c'] > < 0x6538 > < b86538 B8 6538 | 384C: jr c, $4C >
.incbin "data/b8_653A.data"
ld b,c			
ld c,$05		
ld e,$13		
call  rlabel_00_1128 
ld e,b			
ld b,$03		
ld hl,$564a		
rst $28			
ld b,e			
ld c,$05		
ld e,$0c		
call  rlabel_00_1128 
ret			
.incbin "data/b8_659E.data"
