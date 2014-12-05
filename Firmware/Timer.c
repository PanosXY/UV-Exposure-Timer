#define ADDRESS 0xF0

sbit LCD_RS at RC3_bit;
sbit LCD_EN at RC2_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC1_bit;
sbit LCD_D6 at RC5_bit;
sbit LCD_D7 at RC0_bit;

sbit LCD_RS_Direction at TRISC3_bit;
sbit LCD_EN_Direction at TRISC2_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D6_Direction at TRISC5_bit;
sbit LCD_D7_Direction at TRISC0_bit;

sbit PBUTTON1 at RB5_bit;
sbit PBUTTON2 at RB4_bit;
sbit PBUTTON3 at RB3_bit;
sbit PBUTTON4 at RB2_bit;
sbit BUZZER   at RC7_bit;
sbit RELAY    at RC6_bit;

char IntroText1[]="Timer v1";
char IntroText2[]="Skiadas";
char FixedText1[]="Set:    ";
char FixedText2[]="Count...";
char FixedText3[]="Manual..";
char FixedText4[]="Stored  ";
char FixedText5[]="Loaded  ";
char txt[7], mintxt[5], sectxt[5];

short i, mins, secs, disableFlag=0, CountDownFlag=0, fl=0, manualMin=0, manualSec=-1, CountUpFlag=0, button2Flag=0, loadFlag=0;
unsigned short savedTime;
int trimmer, time, timerCounter=0, timerCount, timer4Counter=0, timer6Counter=0;
float tmp;

Initialization(){
 TRISB5_bit=1; //BUTTON1 AS INPUT
 TRISB4_bit=1; //BUTTON2 AS INPUT
 TRISB3_bit=1; //BUTTON3 AS INPUT
 TRISB2_bit=1; //BUTTON4 AS INPUT
 
 TRISC7_bit=0; //BUZZER  AS OUPUT
 TRISC6_bit=0; //RELAY   AS OUTPUT
 
 TRISA0_bit=1; //TRIMMER AS INPUT

 ANSELA=0;     //ALL PINS AS DIGITAL I/0
 ANSELB=0;
 ANSELA.F0=1;  //TRIMMER PIN AS ANALOG INPUT
 
 //A/D CONVERTER INIT
 CHS4_bit=0; //ANALOG CHANNEL 0
 CHS3_bit=0;
 CHS2_bit=0;
 CHS1_bit=0;
 CHS0_bit=0;
 GO_NOT_DONE_bit=0; //A/D CONVERSION NOT IN PROGRESS
 ADON_bit=1; //ADC IS ENABLED
 ADFM_bit=1; //A/D RESULT IS RIGHT JUSTIFIED
 ADCS2_bit=0; //A/D CONVERSION CLOCK IS Fosc/2
 ADCS1_bit=0;
 ADCS0_bit=0;
 ADNREF_bit=0; //A/D NEGATIVE VOLTAGE REFERENCE IS CONNECTED TO GND
 ADPREF1_bit=0; //A/D POSITIVE VOLTAGE REFERENCE IS CONNECTED TO VDD
 ADPREF0_bit=0;
 
 //ENABLE WEAK PULL-UPS FOR BUTTONS
 OPTION_REG.F7=0;
 WPUB2_bit=1;
 WPUB3_bit=1;
 WPUB4_bit=1;
 WPUB5_bit=1;
 
 GIE_bit=1;  //GLOBAL INTERRUPT ENABLE
 PEIE_bit=1; //PERIPHERAL INTERRUPT ENABLE
 
 //SET TIMER 2
 TMR2IE_bit=1; //TIMER2 INTERRUPT ENABLE
 TMR2IF_bit=0; //TIMER2 INTERRUPT FLAG IS DOWN
 T2OUTPS3_bit=1; //TIMER2 POSTSCALER IS 1:16
 T2OUTPS2_bit=1;
 T2OUTPS1_bit=1;
 T2OUTPS0_bit=1;
 TMR2ON_bit=0; //TIMER2 IS OFF
 T2CKPS1_bit=1; //TIMER2 PRESCALER IS 1:16
 T2CKPS0_bit=0;
 PR2=255;
 
 //SET TIMER 4
 TMR4IE_bit=1; //TIMER4 INTERRUPT ENABLE
 TMR4IF_bit=0; //TIMER4 INTERRUPT FLAG IS DOWN
 T4OUTPS3_bit=1; //TIMER4 POSTSCALER IS 1:16
 T4OUTPS2_bit=1;
 T4OUTPS1_bit=1;
 T4OUTPS0_bit=1;
 TMR4ON_bit=0; //TIMER4 IS OFF
 T4CKPS1_bit=1; //TIMER4 PRESCALER IS 1:16
 T4CKPS0_bit=0;
 PR4=255;
 
 //SET TIMER 6
 TMR6IE_bit=1; //TIMER6 INTERRUPT ENABLE
 TMR6IF_bit=0; //TIMER6 INTERRUPT FLAG IS DOWN
 T6OUTPS3_bit=1; //TIMER6 POSTSCALER IS 1:16
 T6OUTPS2_bit=1;
 T6OUTPS1_bit=1;
 T6OUTPS0_bit=1;
 TMR6ON_bit=0; //TIMER6 IS OFF
 T6CKPS1_bit=1; //TIMER6 PRESCALER IS 1:16
 T6CKPS0_bit=0;
 PR4=255;
 
 //ENABLE INTERRUPT ON CHANGE FOR BUTTON2
 IOCIE_bit=1;
 IOCIF_bit=0;
 IOCBN4_bit=1;
 IOCBF4_bit=0;
 
 Delay_ms(100); //LCD INITIALIZATION
 Lcd_Init();
 Delay_ms(100);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,IntroText1);
 Lcd_Out(2,1,IntroText2);
 
 for(i=0;i<3;i++){
  BUZZER=1;
  Delay_ms(200);
  BUZZER=0;
  Delay_ms(200);
 }
 
 RELAY=0;
 Delay_ms(3000);
 Lcd_Cmd(_LCD_CLEAR);

 Lcd_Out(1,1,FixedText1);
 
}

TimeRead(){
 if(loadFlag==0){
  trimmer=ADC_Read(0)+1;
  time=trimmer/4;
 }
}

DisplayTime(){
 if(disableFlag==0){
  mins=time/60;
  tmp=((time/60.0)-mins)*60;
  secs=floor(tmp);
  ShortToStr(mins, mintxt);
  ShortToStr(secs, sectxt);

  Lcd_Out(2,5,sectxt);
  Lcd_Out(2,6,":");
  Lcd_Out(2,2,mintxt);
  Delay_ms(50);
 }
}

Buttons(){
 if(disableFlag==0){
  if(PBUTTON1==0){ //AUTO COUNT MODE
   disableFlag=1;
  
   BUZZER=1;
   Delay_ms(100);
   BUZZER=0;
  
   timerCount=floor(time/0.06528);
   TMR2ON_bit=1;
   TMR4ON_bit=1;
   RELAY=1;
  }
 
  if(PBUTTON2==0){ //MANUAL COUNT MODE
   
   BUZZER=1;
   Delay_ms(100);
   BUZZER=0;
   
   disableFlag=1;
   button2Flag=1;
   
   TMR6ON_bit=1;
   RELAY=1;
  }
 
  if(PBUTTON3==0){ //STORE TIME
   disableFlag=1;
   
   BUZZER=1;
   Delay_ms(100);
   BUZZER=0;
   
   savedTime=(short)time;
   EEPROM_Write(ADDRESS,savedTime);
   
   Lcd_Out(1,1,FixedText4);
   Delay_ms(3000);
   Lcd_Out(1,1,FixedText1);
   disableFlag=0;
  }
 
  if(PBUTTON4==0){ //LOAD TIME
   disableFlag=1;
   loadFlag=1;
  
   BUZZER=1;
   Delay_ms(100);
   BUZZER=0;
   
   Lcd_Out(1,1,FixedText5);

   savedTime=EEPROM_Read(ADDRESS);
   mins=savedTime/60;
   tmp=((savedTime/60.0)-mins)*60;
   secs=floor(tmp);
   ShortToStr(mins, mintxt);
   ShortToStr(secs, sectxt);

   Lcd_Out(2,5,sectxt);
   Lcd_Out(2,6,":");
   Lcd_Out(2,2,mintxt);
   Delay_ms(50);

   time=savedTime;

   disableFlag=0;
  }
 }
}

CountDown(){
 if(CountDownFlag==1){
  Lcd_Out(1,1,FixedText2);
  secs--;
  if(secs==-1){
   mins--;
   secs=59;
  }
  if(secs==0){
   Lcd_Out(2,7," 0");
   Delay_ms(1000);
   mins--;
   secs=59;
  }
  if(mins<0){
   mins=0;
   secs=0;
  }

  ShortToStr(mins, mintxt);
  ShortToStr(secs, sectxt);

  Lcd_Out(2,5,sectxt);
  Lcd_Out(2,6,":");
  Lcd_Out(2,2,mintxt);
  Delay_ms(50);
 
  CountDownFlag=0;
 }
 
 if(fl){
  Lcd_Out(1,1,FixedText1);
  fl=0;
 }
 
}

CountUp(){
 if(CountUpFlag==1){
  Lcd_Out(1,1,FixedText3);
  manualSec++;
  if(manualSec==60){
   manualMin++;
   manualSec=0;
  }
  
  ShortToStr(manualMin, mintxt);
  ShortToStr(manualSec, sectxt);

  Lcd_Out(2,5,sectxt);
  Lcd_Out(2,6,":");
  Lcd_Out(2,2,mintxt);
  Delay_ms(50);
  
  CountUpFlag=0;
 }

 if(fl){
  Lcd_Out(1,1,FixedText1);
  fl=0;
 }
 
}

void interrupt(){

 if(TMR2IF_bit){
  timerCounter++;
  if(timerCounter==timerCount){
   timerCounter=0;
   RELAY=0;
   TMR2ON_bit=0;
   TMR4ON_bit=0;
   fl=1;
   for(i=0;i<5;i++){
    BUZZER=1;
    Delay_ms(200);
    BUZZER=0;
    Delay_ms(200);
   }
   disableFlag=0;
   loadFlag=0;
  }
  TMR2IF_bit=0;
 }
 
 if(TMR4IF_bit){
  timer4Counter++;
  if(timer4Counter==15){ //1SEC
   timer4Counter=0;
   CountDownFlag=1;
  }
  TMR4IF_bit=0;
 }
 
 if(TMR6IF_bit){
  timer6Counter++;
  if(timer6Counter==15){ //1SEC
   timer6Counter=0;
   CountUpFlag=1;
  }
  TMR6IF_bit=0;
 }
 
 if(IOCBF4_bit){
  Delay_ms(100);
  if(disableFlag==1 && button2Flag==1){
   CountUpFlag=0;
   TMR6ON_bit=0;
   RELAY=0;
   fl=1;
   for(i=0;i<5;i++){
    BUZZER=1;
    Delay_ms(200);
    BUZZER=0;
    Delay_ms(200);
   }
   disableFlag=0;
   button2Flag=0;
   manualMin=0;
   manualSec=0;
  }
  IOCBF4_bit=0;
 }

}

void main() {
 Initialization();
 
 while(1){
  TimeRead();
  DisplayTime();
  Buttons();
  CountDown();
  CountUp();
 }
 
}