	cpu	pms132
	page	0

databit3	bit	[0x34].3
databit4	bit	[0x34],4
databit5	bit	databit4+1
portbit5	bit	io(0x34).5
portbit6	bit	io(0x34).6
portbit8	bit	portbit6+2

	nop			; 0x0000
	ldsptl			; 0x0006
	ldspth			; 0x0007

	addc	a		; 0x0060
	subc	a		; 0x0061
	izsn	a		; 0x0062
	dzsn	a		; 0x0063
	pcadd	a		; 0x0067
	not	a		; 0x0068
	neg	a		; 0x0069
	sr	a		; 0x006a
	sl	a		; 0x006b
	src	a		; 0x006c
	slc	a		; 0x006d
	swap	a		; 0x006e

	wdreset			; 0x0070
	pushaf			; 0x0072
	popaf			; 0x0073
	reset			; 0x0075
	stopsys			; 0x0076
	stopexe			; 0x0077
	engint			; 0x0078
	disgint			; 0x0079
	ret			; 0x007a
	reti			; 0x007b
	mul			; 0x007c

	xor	io(0x34),a	; 0x00f4
	mov	io(0x34),a	; 0x01b4
	mov	a,io(0x34)	; 0x01f4

	ret	0xab		; 0x02ab

	stt16	[0x78]		; 0x0378
	ldt16	[0x78]		; 0x0379

	idxm	[0x78],a	; 0x03f8
	idxm	a,[0x78]	; 0x03f9

	swapc	io(0x34).5	; 0x0574
	swapc	portbit5	; 0x0574
	swapc	io(0x34).6	; 0x05b4
	swapc	portbit6	; 0x05b4
	swapc	io(0x35).0	; 0x0435
	swapc	portbit8	; 0x0435

	comp	a,[0x78]	; 0x0678
	comp	[0x78],a	; 0x06f8
	nadd	a,[0x78]	; 0x0778
	nadd	[0x78],a	; 0x07f8
	add	[0x78],a	; 0x0878
	sub	[0x78],a	; 0x08f8
	addc	[0x78],a	; 0x0978
	subc	[0x78],a	; 0x09f8
	and	[0x78],a	; 0x0a78
	or	[0x78],a	; 0x0af8
	xor	[0x78],a	; 0x0b78
	mov	[0x78],a	; 0x0bf8
	add	a,[0x78]	; 0x0c78
	sub	a,[0x78]	; 0x0cf8
	addc	a,[0x78]	; 0x0d78
	subc	a,[0x78]	; 0x0df8
	and	a,[0x78]	; 0x0e78
	or	a,[0x78]	; 0x0ef8
	xor	a,[0x78]	; 0x0f78
	mov	a,[0x78]	; 0x0ff8

	addc	[0x78]		; 0x1078
	subc	[0x78]		; 0x10f8
	izsn	[0x78]		; 0x1178
	dzsn	[0x78]		; 0x11f8
	inc	[0x78]		; 0x1278
	dec	[0x78]		; 0x12f8
	clear	[0x78]		; 0x1378
	xch	[0x78]		; 0x13f8
	not	[0x78]		; 0x1478
	neg	[0x78]		; 0x14f8
	sr	[0x78]		; 0x1578
	sl	[0x78]		; 0x15f8
	src	[0x78]		; 0x1678
	slc	[0x78]		; 0x16f8
	ceqsn	a,[0x78]	; 0x1778
	cneqsn	a,[0x78]	; 0x17f8

	t0sn	io(0x34).5	; 0x1974
	t0sn	portbit5	; 0x1974
	t0sn	io(0x34),6	; 0x19b4
	t0sn	portbit6	; 0x19b4
	t0sn	io(0x35),0	; 0x1835
	t0sn	portbit8	; 0x1835
	t1sn	io(0x34).5	; 0x1b74
	t1sn	portbit5	; 0x1b74
	t1sn	io(0x34),6	; 0x1bb4
	t1sn	portbit6	; 0x1bb4
	t1sn	io(0x35),0	; 0x1a35
	t1sn	portbit8	; 0x1a35
	set0	io(0x34).5	; 0x1d74
	set0	portbit5	; 0x1d74
	set0	io(0x34),6	; 0x1db4
	set0	portbit6	; 0x1db4
	set0	io(0x35),0	; 0x1c35
	set0	portbit8	; 0x1c35
	set1	io(0x34).5	; 0x1f74
	set1	portbit5	; 0x1f74
	set1	io(0x34),6	; 0x1fb4
	set1	portbit6	; 0x1fb4
	set1	io(0x35),0	; 0x1e35
	set1	portbit8	; 0x1e35

	t0sn	[0x34].3	; 0x20f4
	t0sn	databit3	; 0x20f4
	t0sn	[0x34],4	; 0x2134
	t0sn	databit4	; 0x2134
	t0sn	[0x34],5	; 0x2174
	t0sn	databit5	; 0x2174
	t1sn	[0x34].3	; 0x22f4
	t1sn	databit3	; 0x22f4
	t1sn	[0x34],4	; 0x2334
	t1sn	databit4	; 0x2334
	t1sn	[0x34],5	; 0x2374
	t1sn	databit5	; 0x2374
	set0	[0x34].3	; 0x24f4
	set0	databit3	; 0x24f4
	set0	[0x34],4	; 0x2534
	set0	databit4	; 0x2534
	set0	[0x34],5	; 0x2574
	set0	databit5	; 0x2574
	set1	[0x34].3	; 0x26f4
	set1	databit3	; 0x26f4
	set1	[0x34],4	; 0x2734
	set1	databit4	; 0x2734
	set1	[0x34],5	; 0x2774
	set1	databit5	; 0x2774

	add	a,0xab		; 0x28ab
	sub	a,0xab		; 0x29ab
	ceqsn	a,0xab		; 0x2aab
	cneqsn	a,0xab		; 0x2bab
	and	a,0xab		; 0x2cab
	or	a,0xab		; 0x2dab
	xor	a,0xab		; 0x2eab
	mov	a,0xab		; 0x2fab

	goto	0x789		; 0x3789
	call	0x789		; 0x3f89

	data	1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000,13000,14000,15000,16000
	expect	1320
	data	17000
	endexpect
	data	"12345678"

uart	struct
data	res	1
ctrl	res	1
txen	bit	ctrl,0
rxen	bit	ctrl,1
stat	res	1
drdy	bit	stat,0
txempt	bit	stat,1
rxovr	bit	stat,2
txovr	bit	stat,3
	endstruct

	segment	data

	org	0x08
uart1	uart