
_Initialization:

;Timer.c,38 :: 		Initialization(){
;Timer.c,39 :: 		TRISB5_bit=1; //BUTTON1 AS INPUT
	BSF        TRISB5_bit+0, BitPos(TRISB5_bit+0)
;Timer.c,40 :: 		TRISB4_bit=1; //BUTTON2 AS INPUT
	BSF        TRISB4_bit+0, BitPos(TRISB4_bit+0)
;Timer.c,41 :: 		TRISB3_bit=1; //BUTTON3 AS INPUT
	BSF        TRISB3_bit+0, BitPos(TRISB3_bit+0)
;Timer.c,42 :: 		TRISB2_bit=1; //BUTTON4 AS INPUT
	BSF        TRISB2_bit+0, BitPos(TRISB2_bit+0)
;Timer.c,44 :: 		TRISC7_bit=0; //BUZZER  AS OUPUT
	BCF        TRISC7_bit+0, BitPos(TRISC7_bit+0)
;Timer.c,45 :: 		TRISC6_bit=0; //RELAY   AS OUTPUT
	BCF        TRISC6_bit+0, BitPos(TRISC6_bit+0)
;Timer.c,47 :: 		TRISA0_bit=1; //TRIMMER AS INPUT
	BSF        TRISA0_bit+0, BitPos(TRISA0_bit+0)
;Timer.c,49 :: 		ANSELA=0;     //ALL PINS AS DIGITAL I/0
	CLRF       ANSELA+0
;Timer.c,50 :: 		ANSELB=0;
	CLRF       ANSELB+0
;Timer.c,51 :: 		ANSELA.F0=1;  //TRIMMER PIN AS ANALOG INPUT
	BSF        ANSELA+0, 0
;Timer.c,54 :: 		CHS4_bit=0; //ANALOG CHANNEL 0
	BCF        CHS4_bit+0, BitPos(CHS4_bit+0)
;Timer.c,55 :: 		CHS3_bit=0;
	BCF        CHS3_bit+0, BitPos(CHS3_bit+0)
;Timer.c,56 :: 		CHS2_bit=0;
	BCF        CHS2_bit+0, BitPos(CHS2_bit+0)
;Timer.c,57 :: 		CHS1_bit=0;
	BCF        CHS1_bit+0, BitPos(CHS1_bit+0)
;Timer.c,58 :: 		CHS0_bit=0;
	BCF        CHS0_bit+0, BitPos(CHS0_bit+0)
;Timer.c,59 :: 		GO_NOT_DONE_bit=0; //A/D CONVERSION NOT IN PROGRESS
	BCF        GO_NOT_DONE_bit+0, BitPos(GO_NOT_DONE_bit+0)
;Timer.c,60 :: 		ADON_bit=1; //ADC IS ENABLED
	BSF        ADON_bit+0, BitPos(ADON_bit+0)
;Timer.c,61 :: 		ADFM_bit=1; //A/D RESULT IS RIGHT JUSTIFIED
	BSF        ADFM_bit+0, BitPos(ADFM_bit+0)
;Timer.c,62 :: 		ADCS2_bit=0; //A/D CONVERSION CLOCK IS Fosc/2
	BCF        ADCS2_bit+0, BitPos(ADCS2_bit+0)
;Timer.c,63 :: 		ADCS1_bit=0;
	BCF        ADCS1_bit+0, BitPos(ADCS1_bit+0)
;Timer.c,64 :: 		ADCS0_bit=0;
	BCF        ADCS0_bit+0, BitPos(ADCS0_bit+0)
;Timer.c,65 :: 		ADNREF_bit=0; //A/D NEGATIVE VOLTAGE REFERENCE IS CONNECTED TO GND
	BCF        ADNREF_bit+0, BitPos(ADNREF_bit+0)
;Timer.c,66 :: 		ADPREF1_bit=0; //A/D POSITIVE VOLTAGE REFERENCE IS CONNECTED TO VDD
	BCF        ADPREF1_bit+0, BitPos(ADPREF1_bit+0)
;Timer.c,67 :: 		ADPREF0_bit=0;
	BCF        ADPREF0_bit+0, BitPos(ADPREF0_bit+0)
;Timer.c,70 :: 		OPTION_REG.F7=0;
	BCF        OPTION_REG+0, 7
;Timer.c,71 :: 		WPUB2_bit=1;
	BSF        WPUB2_bit+0, BitPos(WPUB2_bit+0)
;Timer.c,72 :: 		WPUB3_bit=1;
	BSF        WPUB3_bit+0, BitPos(WPUB3_bit+0)
;Timer.c,73 :: 		WPUB4_bit=1;
	BSF        WPUB4_bit+0, BitPos(WPUB4_bit+0)
;Timer.c,74 :: 		WPUB5_bit=1;
	BSF        WPUB5_bit+0, BitPos(WPUB5_bit+0)
;Timer.c,76 :: 		GIE_bit=1;  //GLOBAL INTERRUPT ENABLE
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;Timer.c,77 :: 		PEIE_bit=1; //PERIPHERAL INTERRUPT ENABLE
	BSF        PEIE_bit+0, BitPos(PEIE_bit+0)
;Timer.c,80 :: 		TMR2IE_bit=1; //TIMER2 INTERRUPT ENABLE
	BSF        TMR2IE_bit+0, BitPos(TMR2IE_bit+0)
;Timer.c,81 :: 		TMR2IF_bit=0; //TIMER2 INTERRUPT FLAG IS DOWN
	BCF        TMR2IF_bit+0, BitPos(TMR2IF_bit+0)
;Timer.c,82 :: 		T2OUTPS3_bit=1; //TIMER2 POSTSCALER IS 1:16
	BSF        T2OUTPS3_bit+0, BitPos(T2OUTPS3_bit+0)
;Timer.c,83 :: 		T2OUTPS2_bit=1;
	BSF        T2OUTPS2_bit+0, BitPos(T2OUTPS2_bit+0)
;Timer.c,84 :: 		T2OUTPS1_bit=1;
	BSF        T2OUTPS1_bit+0, BitPos(T2OUTPS1_bit+0)
;Timer.c,85 :: 		T2OUTPS0_bit=1;
	BSF        T2OUTPS0_bit+0, BitPos(T2OUTPS0_bit+0)
;Timer.c,86 :: 		TMR2ON_bit=0; //TIMER2 IS OFF
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
;Timer.c,87 :: 		T2CKPS1_bit=1; //TIMER2 PRESCALER IS 1:16
	BSF        T2CKPS1_bit+0, BitPos(T2CKPS1_bit+0)
;Timer.c,88 :: 		T2CKPS0_bit=0;
	BCF        T2CKPS0_bit+0, BitPos(T2CKPS0_bit+0)
;Timer.c,89 :: 		PR2=255;
	MOVLW      255
	MOVWF      PR2+0
;Timer.c,92 :: 		TMR4IE_bit=1; //TIMER4 INTERRUPT ENABLE
	BSF        TMR4IE_bit+0, BitPos(TMR4IE_bit+0)
;Timer.c,93 :: 		TMR4IF_bit=0; //TIMER4 INTERRUPT FLAG IS DOWN
	BCF        TMR4IF_bit+0, BitPos(TMR4IF_bit+0)
;Timer.c,94 :: 		T4OUTPS3_bit=1; //TIMER4 POSTSCALER IS 1:16
	BSF        T4OUTPS3_bit+0, BitPos(T4OUTPS3_bit+0)
;Timer.c,95 :: 		T4OUTPS2_bit=1;
	BSF        T4OUTPS2_bit+0, BitPos(T4OUTPS2_bit+0)
;Timer.c,96 :: 		T4OUTPS1_bit=1;
	BSF        T4OUTPS1_bit+0, BitPos(T4OUTPS1_bit+0)
;Timer.c,97 :: 		T4OUTPS0_bit=1;
	BSF        T4OUTPS0_bit+0, BitPos(T4OUTPS0_bit+0)
;Timer.c,98 :: 		TMR4ON_bit=0; //TIMER4 IS OFF
	BCF        TMR4ON_bit+0, BitPos(TMR4ON_bit+0)
;Timer.c,99 :: 		T4CKPS1_bit=1; //TIMER4 PRESCALER IS 1:16
	BSF        T4CKPS1_bit+0, BitPos(T4CKPS1_bit+0)
;Timer.c,100 :: 		T4CKPS0_bit=0;
	BCF        T4CKPS0_bit+0, BitPos(T4CKPS0_bit+0)
;Timer.c,101 :: 		PR4=255;
	MOVLW      255
	MOVWF      PR4+0
;Timer.c,104 :: 		TMR6IE_bit=1; //TIMER6 INTERRUPT ENABLE
	BSF        TMR6IE_bit+0, BitPos(TMR6IE_bit+0)
;Timer.c,105 :: 		TMR6IF_bit=0; //TIMER6 INTERRUPT FLAG IS DOWN
	BCF        TMR6IF_bit+0, BitPos(TMR6IF_bit+0)
;Timer.c,106 :: 		T6OUTPS3_bit=1; //TIMER6 POSTSCALER IS 1:16
	BSF        T6OUTPS3_bit+0, BitPos(T6OUTPS3_bit+0)
;Timer.c,107 :: 		T6OUTPS2_bit=1;
	BSF        T6OUTPS2_bit+0, BitPos(T6OUTPS2_bit+0)
;Timer.c,108 :: 		T6OUTPS1_bit=1;
	BSF        T6OUTPS1_bit+0, BitPos(T6OUTPS1_bit+0)
;Timer.c,109 :: 		T6OUTPS0_bit=1;
	BSF        T6OUTPS0_bit+0, BitPos(T6OUTPS0_bit+0)
;Timer.c,110 :: 		TMR6ON_bit=0; //TIMER6 IS OFF
	BCF        TMR6ON_bit+0, BitPos(TMR6ON_bit+0)
;Timer.c,111 :: 		T6CKPS1_bit=1; //TIMER6 PRESCALER IS 1:16
	BSF        T6CKPS1_bit+0, BitPos(T6CKPS1_bit+0)
;Timer.c,112 :: 		T6CKPS0_bit=0;
	BCF        T6CKPS0_bit+0, BitPos(T6CKPS0_bit+0)
;Timer.c,113 :: 		PR4=255;
	MOVLW      255
	MOVWF      PR4+0
;Timer.c,116 :: 		IOCIE_bit=1;
	BSF        IOCIE_bit+0, BitPos(IOCIE_bit+0)
;Timer.c,117 :: 		IOCIF_bit=0;
	BCF        IOCIF_bit+0, BitPos(IOCIF_bit+0)
;Timer.c,118 :: 		IOCBN4_bit=1;
	BSF        IOCBN4_bit+0, BitPos(IOCBN4_bit+0)
;Timer.c,119 :: 		IOCBF4_bit=0;
	BCF        IOCBF4_bit+0, BitPos(IOCBF4_bit+0)
;Timer.c,121 :: 		Delay_ms(100); //LCD INITIALIZATION
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Initialization0:
	DECFSZ     R13, 1
	GOTO       L_Initialization0
	DECFSZ     R12, 1
	GOTO       L_Initialization0
	NOP
	NOP
;Timer.c,122 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Timer.c,123 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Initialization1:
	DECFSZ     R13, 1
	GOTO       L_Initialization1
	DECFSZ     R12, 1
	GOTO       L_Initialization1
	NOP
	NOP
;Timer.c,124 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Timer.c,125 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Timer.c,126 :: 		Lcd_Out(1,1,IntroText1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _IntroText1+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_IntroText1+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,127 :: 		Lcd_Out(2,1,IntroText2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _IntroText2+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_IntroText2+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,129 :: 		for(i=0;i<3;i++){
	CLRF       _i+0
L_Initialization2:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Initialization3
;Timer.c,130 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,131 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_Initialization5:
	DECFSZ     R13, 1
	GOTO       L_Initialization5
	DECFSZ     R12, 1
	GOTO       L_Initialization5
	DECFSZ     R11, 1
	GOTO       L_Initialization5
	NOP
;Timer.c,132 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,133 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_Initialization6:
	DECFSZ     R13, 1
	GOTO       L_Initialization6
	DECFSZ     R12, 1
	GOTO       L_Initialization6
	DECFSZ     R11, 1
	GOTO       L_Initialization6
	NOP
;Timer.c,129 :: 		for(i=0;i<3;i++){
	INCF       _i+0, 1
;Timer.c,134 :: 		}
	GOTO       L_Initialization2
L_Initialization3:
;Timer.c,136 :: 		RELAY=0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;Timer.c,137 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11
	MOVLW      57
	MOVWF      R12
	MOVLW      13
	MOVWF      R13
L_Initialization7:
	DECFSZ     R13, 1
	GOTO       L_Initialization7
	DECFSZ     R12, 1
	GOTO       L_Initialization7
	DECFSZ     R11, 1
	GOTO       L_Initialization7
	NOP
	NOP
;Timer.c,138 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Timer.c,140 :: 		Lcd_Out(1,1,FixedText1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText1+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText1+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,142 :: 		}
L_end_Initialization:
	RETURN
; end of _Initialization

_TimeRead:

;Timer.c,144 :: 		TimeRead(){
;Timer.c,145 :: 		if(loadFlag==0){
	MOVF       _loadFlag+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_TimeRead8
;Timer.c,146 :: 		trimmer=ADC_Read(0)+1;
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      1
	ADDWF      R0, 0
	MOVWF      R2
	MOVLW      0
	ADDWFC     R1, 0
	MOVWF      R3
	MOVF       R2, 0
	MOVWF      _trimmer+0
	MOVF       R3, 0
	MOVWF      _trimmer+1
;Timer.c,147 :: 		time=trimmer/4;
	MOVF       R2, 0
	MOVWF      _time+0
	MOVF       R3, 0
	MOVWF      _time+1
	ASRF       _time+1, 1
	RRF        _time+0, 1
	ASRF       _time+1, 1
	RRF        _time+0, 1
;Timer.c,148 :: 		}
L_TimeRead8:
;Timer.c,149 :: 		}
L_end_TimeRead:
	RETURN
; end of _TimeRead

_DisplayTime:

;Timer.c,151 :: 		DisplayTime(){
;Timer.c,152 :: 		if(disableFlag==0){
	MOVF       _disableFlag+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_DisplayTime9
;Timer.c,153 :: 		mins=time/60;
	MOVLW      60
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _time+0, 0
	MOVWF      R0
	MOVF       _time+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      _mins+0
;Timer.c,154 :: 		tmp=((time/60.0)-mins)*60;
	MOVF       _time+0, 0
	MOVWF      R0
	MOVF       _time+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      112
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__DisplayTime+0
	MOVF       R1, 0
	MOVWF      FLOC__DisplayTime+1
	MOVF       R2, 0
	MOVWF      FLOC__DisplayTime+2
	MOVF       R3, 0
	MOVWF      FLOC__DisplayTime+3
	MOVF       _mins+0, 0
	MOVWF      R0
	MOVLW      0
	BTFSC      R0, 7
	MOVLW      255
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVF       FLOC__DisplayTime+0, 0
	MOVWF      R0
	MOVF       FLOC__DisplayTime+1, 0
	MOVWF      R1
	MOVF       FLOC__DisplayTime+2, 0
	MOVWF      R2
	MOVF       FLOC__DisplayTime+3, 0
	MOVWF      R3
	CALL       _Sub_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      112
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVF       R0, 0
	MOVWF      _tmp+0
	MOVF       R1, 0
	MOVWF      _tmp+1
	MOVF       R2, 0
	MOVWF      _tmp+2
	MOVF       R3, 0
	MOVWF      _tmp+3
;Timer.c,155 :: 		secs=floor(tmp);
	MOVF       R0, 0
	MOVWF      FARG_floor_x+0
	MOVF       R1, 0
	MOVWF      FARG_floor_x+1
	MOVF       R2, 0
	MOVWF      FARG_floor_x+2
	MOVF       R3, 0
	MOVWF      FARG_floor_x+3
	CALL       _floor+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _secs+0
;Timer.c,156 :: 		ShortToStr(mins, mintxt);
	MOVF       _mins+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _mintxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,157 :: 		ShortToStr(secs, sectxt);
	MOVF       _secs+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _sectxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,159 :: 		Lcd_Out(2,5,sectxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sectxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,160 :: 		Lcd_Out(2,6,":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Timer+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(?lstr1_Timer+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,161 :: 		Lcd_Out(2,2,mintxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mintxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,162 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12
	MOVLW      238
	MOVWF      R13
L_DisplayTime10:
	DECFSZ     R13, 1
	GOTO       L_DisplayTime10
	DECFSZ     R12, 1
	GOTO       L_DisplayTime10
	NOP
;Timer.c,163 :: 		}
L_DisplayTime9:
;Timer.c,164 :: 		}
L_end_DisplayTime:
	RETURN
; end of _DisplayTime

_Buttons:

;Timer.c,166 :: 		Buttons(){
;Timer.c,167 :: 		if(disableFlag==0){
	MOVF       _disableFlag+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_Buttons11
;Timer.c,168 :: 		if(PBUTTON1==0){ //AUTO COUNT MODE
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_Buttons12
;Timer.c,169 :: 		disableFlag=1;
	MOVLW      1
	MOVWF      _disableFlag+0
;Timer.c,171 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,172 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Buttons13:
	DECFSZ     R13, 1
	GOTO       L_Buttons13
	DECFSZ     R12, 1
	GOTO       L_Buttons13
	NOP
	NOP
;Timer.c,173 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,175 :: 		timerCount=floor(time/0.06528);
	MOVF       _time+0, 0
	MOVWF      R0
	MOVF       _time+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVLW      133
	MOVWF      R4
	MOVLW      177
	MOVWF      R5
	MOVLW      5
	MOVWF      R6
	MOVLW      123
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FARG_floor_x+0
	MOVF       R1, 0
	MOVWF      FARG_floor_x+1
	MOVF       R2, 0
	MOVWF      FARG_floor_x+2
	MOVF       R3, 0
	MOVWF      FARG_floor_x+3
	CALL       _floor+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _timerCount+0
	MOVF       R1, 0
	MOVWF      _timerCount+1
;Timer.c,176 :: 		TMR2ON_bit=1;
	BSF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
;Timer.c,177 :: 		TMR4ON_bit=1;
	BSF        TMR4ON_bit+0, BitPos(TMR4ON_bit+0)
;Timer.c,178 :: 		RELAY=1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;Timer.c,179 :: 		}
L_Buttons12:
;Timer.c,181 :: 		if(PBUTTON2==0){ //MANUAL COUNT MODE
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_Buttons14
;Timer.c,183 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,184 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Buttons15:
	DECFSZ     R13, 1
	GOTO       L_Buttons15
	DECFSZ     R12, 1
	GOTO       L_Buttons15
	NOP
	NOP
;Timer.c,185 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,187 :: 		disableFlag=1;
	MOVLW      1
	MOVWF      _disableFlag+0
;Timer.c,188 :: 		button2Flag=1;
	MOVLW      1
	MOVWF      _button2Flag+0
;Timer.c,190 :: 		TMR6ON_bit=1;
	BSF        TMR6ON_bit+0, BitPos(TMR6ON_bit+0)
;Timer.c,191 :: 		RELAY=1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;Timer.c,192 :: 		}
L_Buttons14:
;Timer.c,194 :: 		if(PBUTTON3==0){ //STORE TIME
	BTFSC      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_Buttons16
;Timer.c,195 :: 		disableFlag=1;
	MOVLW      1
	MOVWF      _disableFlag+0
;Timer.c,197 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,198 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Buttons17:
	DECFSZ     R13, 1
	GOTO       L_Buttons17
	DECFSZ     R12, 1
	GOTO       L_Buttons17
	NOP
	NOP
;Timer.c,199 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,201 :: 		savedTime=(short)time;
	MOVF       _time+0, 0
	MOVWF      _savedTime+0
;Timer.c,202 :: 		EEPROM_Write(ADDRESS,savedTime);
	MOVLW      240
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _time+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Timer.c,204 :: 		Lcd_Out(1,1,FixedText4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText4+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText4+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,205 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11
	MOVLW      57
	MOVWF      R12
	MOVLW      13
	MOVWF      R13
L_Buttons18:
	DECFSZ     R13, 1
	GOTO       L_Buttons18
	DECFSZ     R12, 1
	GOTO       L_Buttons18
	DECFSZ     R11, 1
	GOTO       L_Buttons18
	NOP
	NOP
;Timer.c,206 :: 		Lcd_Out(1,1,FixedText1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText1+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText1+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,207 :: 		disableFlag=0;
	CLRF       _disableFlag+0
;Timer.c,208 :: 		}
L_Buttons16:
;Timer.c,210 :: 		if(PBUTTON4==0){ //LOAD TIME
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_Buttons19
;Timer.c,211 :: 		disableFlag=1;
	MOVLW      1
	MOVWF      _disableFlag+0
;Timer.c,212 :: 		loadFlag=1;
	MOVLW      1
	MOVWF      _loadFlag+0
;Timer.c,214 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,215 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_Buttons20:
	DECFSZ     R13, 1
	GOTO       L_Buttons20
	DECFSZ     R12, 1
	GOTO       L_Buttons20
	NOP
	NOP
;Timer.c,216 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,218 :: 		Lcd_Out(1,1,FixedText5);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText5+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText5+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,220 :: 		savedTime=EEPROM_Read(ADDRESS);
	MOVLW      240
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _savedTime+0
;Timer.c,221 :: 		mins=savedTime/60;
	MOVLW      60
	MOVWF      R4
	CALL       _Div_8x8_U+0
	MOVF       R0, 0
	MOVWF      _mins+0
;Timer.c,222 :: 		tmp=((savedTime/60.0)-mins)*60;
	MOVF       _savedTime+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      112
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__Buttons+0
	MOVF       R1, 0
	MOVWF      FLOC__Buttons+1
	MOVF       R2, 0
	MOVWF      FLOC__Buttons+2
	MOVF       R3, 0
	MOVWF      FLOC__Buttons+3
	MOVF       _mins+0, 0
	MOVWF      R0
	MOVLW      0
	BTFSC      R0, 7
	MOVLW      255
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVF       FLOC__Buttons+0, 0
	MOVWF      R0
	MOVF       FLOC__Buttons+1, 0
	MOVWF      R1
	MOVF       FLOC__Buttons+2, 0
	MOVWF      R2
	MOVF       FLOC__Buttons+3, 0
	MOVWF      R3
	CALL       _Sub_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      112
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVF       R0, 0
	MOVWF      _tmp+0
	MOVF       R1, 0
	MOVWF      _tmp+1
	MOVF       R2, 0
	MOVWF      _tmp+2
	MOVF       R3, 0
	MOVWF      _tmp+3
;Timer.c,223 :: 		secs=floor(tmp);
	MOVF       R0, 0
	MOVWF      FARG_floor_x+0
	MOVF       R1, 0
	MOVWF      FARG_floor_x+1
	MOVF       R2, 0
	MOVWF      FARG_floor_x+2
	MOVF       R3, 0
	MOVWF      FARG_floor_x+3
	CALL       _floor+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _secs+0
;Timer.c,224 :: 		ShortToStr(mins, mintxt);
	MOVF       _mins+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _mintxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,225 :: 		ShortToStr(secs, sectxt);
	MOVF       _secs+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _sectxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,227 :: 		Lcd_Out(2,5,sectxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sectxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,228 :: 		Lcd_Out(2,6,":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Timer+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(?lstr2_Timer+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,229 :: 		Lcd_Out(2,2,mintxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mintxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,230 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12
	MOVLW      238
	MOVWF      R13
L_Buttons21:
	DECFSZ     R13, 1
	GOTO       L_Buttons21
	DECFSZ     R12, 1
	GOTO       L_Buttons21
	NOP
;Timer.c,232 :: 		time=savedTime;
	MOVF       _savedTime+0, 0
	MOVWF      _time+0
	CLRF       _time+1
;Timer.c,234 :: 		disableFlag=0;
	CLRF       _disableFlag+0
;Timer.c,235 :: 		}
L_Buttons19:
;Timer.c,236 :: 		}
L_Buttons11:
;Timer.c,237 :: 		}
L_end_Buttons:
	RETURN
; end of _Buttons

_CountDown:

;Timer.c,239 :: 		CountDown(){
;Timer.c,240 :: 		if(CountDownFlag==1){
	MOVF       _CountDownFlag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown22
;Timer.c,241 :: 		Lcd_Out(1,1,FixedText2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText2+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText2+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,242 :: 		secs--;
	DECF       _secs+0, 1
;Timer.c,243 :: 		if(secs==-1){
	MOVF       _secs+0, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown23
;Timer.c,244 :: 		mins--;
	DECF       _mins+0, 1
;Timer.c,245 :: 		secs=59;
	MOVLW      59
	MOVWF      _secs+0
;Timer.c,246 :: 		}
L_CountDown23:
;Timer.c,247 :: 		if(secs==0){
	MOVF       _secs+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_CountDown24
;Timer.c,248 :: 		Lcd_Out(2,7," 0");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Timer+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(?lstr3_Timer+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,249 :: 		Delay_ms(1000);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_CountDown25:
	DECFSZ     R13, 1
	GOTO       L_CountDown25
	DECFSZ     R12, 1
	GOTO       L_CountDown25
	DECFSZ     R11, 1
	GOTO       L_CountDown25
	NOP
	NOP
;Timer.c,250 :: 		mins--;
	DECF       _mins+0, 1
;Timer.c,251 :: 		secs=59;
	MOVLW      59
	MOVWF      _secs+0
;Timer.c,252 :: 		}
L_CountDown24:
;Timer.c,253 :: 		if(mins<0){
	MOVLW      128
	XORWF      _mins+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      0
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_CountDown26
;Timer.c,254 :: 		mins=0;
	CLRF       _mins+0
;Timer.c,255 :: 		secs=0;
	CLRF       _secs+0
;Timer.c,256 :: 		}
L_CountDown26:
;Timer.c,258 :: 		ShortToStr(mins, mintxt);
	MOVF       _mins+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _mintxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,259 :: 		ShortToStr(secs, sectxt);
	MOVF       _secs+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _sectxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,261 :: 		Lcd_Out(2,5,sectxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sectxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,262 :: 		Lcd_Out(2,6,":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Timer+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(?lstr4_Timer+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,263 :: 		Lcd_Out(2,2,mintxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mintxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,264 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12
	MOVLW      238
	MOVWF      R13
L_CountDown27:
	DECFSZ     R13, 1
	GOTO       L_CountDown27
	DECFSZ     R12, 1
	GOTO       L_CountDown27
	NOP
;Timer.c,266 :: 		CountDownFlag=0;
	CLRF       _CountDownFlag+0
;Timer.c,267 :: 		}
L_CountDown22:
;Timer.c,269 :: 		if(fl){
	MOVF       _fl+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_CountDown28
;Timer.c,270 :: 		Lcd_Out(1,1,FixedText1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText1+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText1+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,271 :: 		fl=0;
	CLRF       _fl+0
;Timer.c,272 :: 		}
L_CountDown28:
;Timer.c,274 :: 		}
L_end_CountDown:
	RETURN
; end of _CountDown

_CountUp:

;Timer.c,276 :: 		CountUp(){
;Timer.c,277 :: 		if(CountUpFlag==1){
	MOVF       _CountUpFlag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_CountUp29
;Timer.c,278 :: 		Lcd_Out(1,1,FixedText3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText3+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText3+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,279 :: 		manualSec++;
	INCF       _manualSec+0, 1
;Timer.c,280 :: 		if(manualSec==60){
	MOVF       _manualSec+0, 0
	XORLW      60
	BTFSS      STATUS+0, 2
	GOTO       L_CountUp30
;Timer.c,281 :: 		manualMin++;
	INCF       _manualMin+0, 1
;Timer.c,282 :: 		manualSec=0;
	CLRF       _manualSec+0
;Timer.c,283 :: 		}
L_CountUp30:
;Timer.c,285 :: 		ShortToStr(manualMin, mintxt);
	MOVF       _manualMin+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _mintxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,286 :: 		ShortToStr(manualSec, sectxt);
	MOVF       _manualSec+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _sectxt+0
	MOVWF      FARG_ShortToStr_output+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_ShortToStr_output+1
	CALL       _ShortToStr+0
;Timer.c,288 :: 		Lcd_Out(2,5,sectxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sectxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_sectxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,289 :: 		Lcd_Out(2,6,":");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Timer+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(?lstr5_Timer+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,290 :: 		Lcd_Out(2,2,mintxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mintxt+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_mintxt+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,291 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12
	MOVLW      238
	MOVWF      R13
L_CountUp31:
	DECFSZ     R13, 1
	GOTO       L_CountUp31
	DECFSZ     R12, 1
	GOTO       L_CountUp31
	NOP
;Timer.c,293 :: 		CountUpFlag=0;
	CLRF       _CountUpFlag+0
;Timer.c,294 :: 		}
L_CountUp29:
;Timer.c,296 :: 		if(fl){
	MOVF       _fl+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_CountUp32
;Timer.c,297 :: 		Lcd_Out(1,1,FixedText1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _FixedText1+0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      hi_addr(_FixedText1+0)
	MOVWF      FARG_Lcd_Out_text+1
	CALL       _Lcd_Out+0
;Timer.c,298 :: 		fl=0;
	CLRF       _fl+0
;Timer.c,299 :: 		}
L_CountUp32:
;Timer.c,301 :: 		}
L_end_CountUp:
	RETURN
; end of _CountUp

_interrupt:
	CLRF       PCLATH+0
	CLRF       STATUS+0

;Timer.c,303 :: 		void interrupt(){
;Timer.c,305 :: 		if(TMR2IF_bit){
	BTFSS      TMR2IF_bit+0, BitPos(TMR2IF_bit+0)
	GOTO       L_interrupt33
;Timer.c,306 :: 		timerCounter++;
	INCF       _timerCounter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _timerCounter+1, 1
;Timer.c,307 :: 		if(timerCounter==timerCount){
	MOVF       _timerCounter+1, 0
	XORWF      _timerCount+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt65
	MOVF       _timerCount+0, 0
	XORWF      _timerCounter+0, 0
L__interrupt65:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt34
;Timer.c,308 :: 		timerCounter=0;
	CLRF       _timerCounter+0
	CLRF       _timerCounter+1
;Timer.c,309 :: 		RELAY=0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;Timer.c,310 :: 		TMR2ON_bit=0;
	BCF        TMR2ON_bit+0, BitPos(TMR2ON_bit+0)
;Timer.c,311 :: 		TMR4ON_bit=0;
	BCF        TMR4ON_bit+0, BitPos(TMR4ON_bit+0)
;Timer.c,312 :: 		fl=1;
	MOVLW      1
	MOVWF      _fl+0
;Timer.c,313 :: 		for(i=0;i<5;i++){
	CLRF       _i+0
L_interrupt35:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt36
;Timer.c,314 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,315 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_interrupt38:
	DECFSZ     R13, 1
	GOTO       L_interrupt38
	DECFSZ     R12, 1
	GOTO       L_interrupt38
	DECFSZ     R11, 1
	GOTO       L_interrupt38
	NOP
;Timer.c,316 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,317 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_interrupt39:
	DECFSZ     R13, 1
	GOTO       L_interrupt39
	DECFSZ     R12, 1
	GOTO       L_interrupt39
	DECFSZ     R11, 1
	GOTO       L_interrupt39
	NOP
;Timer.c,313 :: 		for(i=0;i<5;i++){
	INCF       _i+0, 1
;Timer.c,318 :: 		}
	GOTO       L_interrupt35
L_interrupt36:
;Timer.c,319 :: 		disableFlag=0;
	CLRF       _disableFlag+0
;Timer.c,320 :: 		loadFlag=0;
	CLRF       _loadFlag+0
;Timer.c,321 :: 		}
L_interrupt34:
;Timer.c,322 :: 		TMR2IF_bit=0;
	BCF        TMR2IF_bit+0, BitPos(TMR2IF_bit+0)
;Timer.c,323 :: 		}
L_interrupt33:
;Timer.c,325 :: 		if(TMR4IF_bit){
	BTFSS      TMR4IF_bit+0, BitPos(TMR4IF_bit+0)
	GOTO       L_interrupt40
;Timer.c,326 :: 		timer4Counter++;
	INCF       _timer4Counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _timer4Counter+1, 1
;Timer.c,327 :: 		if(timer4Counter==15){ //1SEC
	MOVLW      0
	XORWF      _timer4Counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt66
	MOVLW      15
	XORWF      _timer4Counter+0, 0
L__interrupt66:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt41
;Timer.c,328 :: 		timer4Counter=0;
	CLRF       _timer4Counter+0
	CLRF       _timer4Counter+1
;Timer.c,329 :: 		CountDownFlag=1;
	MOVLW      1
	MOVWF      _CountDownFlag+0
;Timer.c,330 :: 		}
L_interrupt41:
;Timer.c,331 :: 		TMR4IF_bit=0;
	BCF        TMR4IF_bit+0, BitPos(TMR4IF_bit+0)
;Timer.c,332 :: 		}
L_interrupt40:
;Timer.c,334 :: 		if(TMR6IF_bit){
	BTFSS      TMR6IF_bit+0, BitPos(TMR6IF_bit+0)
	GOTO       L_interrupt42
;Timer.c,335 :: 		timer6Counter++;
	INCF       _timer6Counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _timer6Counter+1, 1
;Timer.c,336 :: 		if(timer6Counter==15){ //1SEC
	MOVLW      0
	XORWF      _timer6Counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__interrupt67
	MOVLW      15
	XORWF      _timer6Counter+0, 0
L__interrupt67:
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt43
;Timer.c,337 :: 		timer6Counter=0;
	CLRF       _timer6Counter+0
	CLRF       _timer6Counter+1
;Timer.c,338 :: 		CountUpFlag=1;
	MOVLW      1
	MOVWF      _CountUpFlag+0
;Timer.c,339 :: 		}
L_interrupt43:
;Timer.c,340 :: 		TMR6IF_bit=0;
	BCF        TMR6IF_bit+0, BitPos(TMR6IF_bit+0)
;Timer.c,341 :: 		}
L_interrupt42:
;Timer.c,343 :: 		if(IOCBF4_bit){
	BTFSS      IOCBF4_bit+0, BitPos(IOCBF4_bit+0)
	GOTO       L_interrupt44
;Timer.c,344 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12
	MOVLW      221
	MOVWF      R13
L_interrupt45:
	DECFSZ     R13, 1
	GOTO       L_interrupt45
	DECFSZ     R12, 1
	GOTO       L_interrupt45
	NOP
	NOP
;Timer.c,345 :: 		if(disableFlag==1 && button2Flag==1){
	MOVF       _disableFlag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt48
	MOVF       _button2Flag+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt48
L__interrupt56:
;Timer.c,346 :: 		CountUpFlag=0;
	CLRF       _CountUpFlag+0
;Timer.c,347 :: 		TMR6ON_bit=0;
	BCF        TMR6ON_bit+0, BitPos(TMR6ON_bit+0)
;Timer.c,348 :: 		RELAY=0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;Timer.c,349 :: 		fl=1;
	MOVLW      1
	MOVWF      _fl+0
;Timer.c,350 :: 		for(i=0;i<5;i++){
	CLRF       _i+0
L_interrupt49:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_interrupt50
;Timer.c,351 :: 		BUZZER=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,352 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_interrupt52:
	DECFSZ     R13, 1
	GOTO       L_interrupt52
	DECFSZ     R12, 1
	GOTO       L_interrupt52
	DECFSZ     R11, 1
	GOTO       L_interrupt52
	NOP
;Timer.c,353 :: 		BUZZER=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;Timer.c,354 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_interrupt53:
	DECFSZ     R13, 1
	GOTO       L_interrupt53
	DECFSZ     R12, 1
	GOTO       L_interrupt53
	DECFSZ     R11, 1
	GOTO       L_interrupt53
	NOP
;Timer.c,350 :: 		for(i=0;i<5;i++){
	INCF       _i+0, 1
;Timer.c,355 :: 		}
	GOTO       L_interrupt49
L_interrupt50:
;Timer.c,356 :: 		disableFlag=0;
	CLRF       _disableFlag+0
;Timer.c,357 :: 		button2Flag=0;
	CLRF       _button2Flag+0
;Timer.c,358 :: 		manualMin=0;
	CLRF       _manualMin+0
;Timer.c,359 :: 		manualSec=0;
	CLRF       _manualSec+0
;Timer.c,360 :: 		}
L_interrupt48:
;Timer.c,361 :: 		IOCBF4_bit=0;
	BCF        IOCBF4_bit+0, BitPos(IOCBF4_bit+0)
;Timer.c,362 :: 		}
L_interrupt44:
;Timer.c,364 :: 		}
L_end_interrupt:
L__interrupt64:
	RETFIE     %s
; end of _interrupt

_main:

;Timer.c,366 :: 		void main() {
;Timer.c,367 :: 		Initialization();
	CALL       _Initialization+0
;Timer.c,369 :: 		while(1){
L_main54:
;Timer.c,370 :: 		TimeRead();
	CALL       _TimeRead+0
;Timer.c,371 :: 		DisplayTime();
	CALL       _DisplayTime+0
;Timer.c,372 :: 		Buttons();
	CALL       _Buttons+0
;Timer.c,373 :: 		CountDown();
	CALL       _CountDown+0
;Timer.c,374 :: 		CountUp();
	CALL       _CountUp+0
;Timer.c,375 :: 		}
	GOTO       L_main54
;Timer.c,377 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
