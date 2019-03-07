
// PIC18F458 Configuration Bit Settings

// 'C' source line config statements

#include <p18F458.h>

// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config OSCS = OFF       // Oscillator System Clock Switch Enable bit (Oscillator system clock switch option is disabled (main oscillator is source))

// CONFIG2L
#pragma config PWRT = ON        // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOR = OFF        // Brown-out Reset Enable bit (Brown-out Reset disabled)
#pragma config BORV = 25        // Brown-out Reset Voltage bits (VBOR set to 2.5V)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 128      // Watchdog Timer Postscale Select bits (1:128)

// CONFIG4L
#pragma config STVR = ON        // Stack Full/Underflow Reset Enable bit (Stack Full/Underflow will cause Reset)
#pragma config LVP = OFF        // Low-Voltage ICSP Enable bit (Low-Voltage ICSP disabled)

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000200-001FFFh) not code protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (002000-003FFFh) not code protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (004000-005FFFh) not code protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (006000-007FFFh) not code protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000200-001FFFh) not write protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (002000-003FFFh) not write protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (004000-005FFFh) not write protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (006000-007FFFh) not write protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks)
//*************************************************************************

#include	"../include/define.h"

//---------------------------------------------------------------------
// Variable declarations
//---------------------------------------------------------------------

int temp;
unsigned int div;
union Long_Char R_pwr_accu, S_pwr_accu, T_pwr_accu, water_accu;

extern unsigned char num1, num2;
unsigned int OUT1_old, OUT2_old;

struct expander_input {

    union {
        int Int;

        struct {
            char A;
            char B;
        } port;

        struct {
            unsigned bit0 : 1;
            unsigned bit1 : 1;
            unsigned bit2 : 1;
            unsigned bit3 : 1;
            unsigned bit4 : 1;
            unsigned bit5 : 1;
            unsigned bit6 : 1;
            unsigned bit7 : 1;
            unsigned bit8 : 1;
            unsigned bit9 : 1;
            unsigned bit10 : 1;
            unsigned bit11 : 1;
            unsigned bit12 : 1;
            unsigned bit13 : 1;
            unsigned bit14 : 1;
            unsigned bit15 : 1;
        } bits;
    } InData;

    union {
        int Int;

        struct {
            char A;
            char B;
        } port;
    } INTf;
};

union u_type //Setup a Union
{
    unsigned int IntVar;
    unsigned char Bytes[2];
}
teszt;

struct expander_input exp_in1, exp_in2;

struct { // Holds status bits
    unsigned in1 : 1;
    unsigned in2 : 1;
    unsigned eloter_xor : 1;
    unsigned folyoso_xor : 1;
    unsigned old_lepcso : 1;
    unsigned can : 1;
    unsigned f : 1;
    unsigned g : 1;
} flag;

struct { // Holds status bits
    unsigned R : 1;
    unsigned S : 1;
    unsigned T : 1;
    unsigned water : 1;
    unsigned send_R : 1;
    unsigned send_S : 1;
    unsigned send_T : 1;
    unsigned send_water : 1;
} util_flag;

union {
    int Int;

    struct {
        char A;
        char B;
    } OUT;

    struct {
        unsigned bit0 : 1;
        unsigned bit1 : 1;
        unsigned bit2 : 1;
        unsigned bit3 : 1;
        unsigned bit4 : 1;
        unsigned bit5 : 1;
        unsigned bit6 : 1;
        unsigned bit7 : 1;
        unsigned bit8 : 1;
        unsigned bit9 : 1;
        unsigned bit10 : 1;
        unsigned bit11 : 1;
        unsigned bit12 : 1;
        unsigned bit13 : 1;
        unsigned bit14 : 1;
        unsigned bit15 : 1;
    } bits;
} OUT1_2, OUT3_4;

//
//union {
//    unsigned int AB;
//    struct  {
//        union {
//            char byte;
//            struct {
//                unsigned o1 : 1;
//                unsigned o2 : 1;
//                unsigned o3 : 1;
//                unsigned o4 : 1;
//                unsigned o5 : 1;
//                unsigned o6 : 1;
//                unsigned o7 : 1;
//                unsigned o8 : 1;
//            };
//        }byte;
//    }A;
//    
//    struct  {
//        union {
//            char byte;
//            struct {
//                unsigned o1 : 1;
//                unsigned o2 : 1;
//                unsigned o3 : 1;
//                unsigned o4 : 1;
//                unsigned o5 : 1;
//                unsigned o6 : 1;
//                unsigned o7 : 1;
//                unsigned o8 : 1;
//            };
//        }byte;
//    }B;
//} OUT1, OUT2;
//

union SW {
    char IN;

    struct {
        unsigned sw1 : 1;
        unsigned sw2 : 1;
        unsigned sw3 : 1;
        unsigned sw4 : 1;
        unsigned sw5 : 1;
        unsigned sw6 : 1;
        unsigned sw7 : 1;
        unsigned sw8 : 1;
    };
};

union SW IN1A, IN2A, INCANA, IN1B, IN2B, INCANB;
struct CANMessage CAN_RX_Message, CAN_TX_Message;

#if defined (emelet)

union {
    unsigned long mask;

    struct {
        unsigned qq : 1; //sw1
        unsigned ww : 1; //sw7
        unsigned ee_CAN : 1; //sw8unsigned konyha1_CAN :1;//sw2
        unsigned uu_CAN : 1; //sw1
        unsigned ii_CAN : 1; //sw2unsigned szelfogo_CAN :1;//sw3
        unsigned oo_CAN : 1; //sw3
        unsigned pp : 1; //sw4unsigned zuhany_CAN :1;//sw4
        unsigned aa_CAN : 1; //sw5unsigned kamra_CAN :1;//sw5
        unsigned ss : 1;
        unsigned dd_CAN : 1; //sw6
        unsigned ff_CAN : 1; //sw6
        unsigned gg_CAN : 1; //sw7
        unsigned hh : 1;
        unsigned jj_CAN : 1; //sw8
        unsigned kk : 1; //sw7
        unsigned ll_CAN : 1; //sw8

        unsigned na2_CAN : 1; //sw1
        unsigned dolgozo_CAN : 1; //sw7
        unsigned halo_CAN : 1; //sw8unsigned konyha1_CAN :1;//sw2
        unsigned furdo_CAN : 1; //sw1
        unsigned wc_CAN : 1; //sw2unsigned szelfogo_CAN :1;//sw3
        unsigned hazt_CAN : 1; //sw3
        unsigned gyerek_disz_CAN : 1; //sw4unsigned zuhany_CAN :1;//sw4
        unsigned erk_disz_CAN : 1; //sw5unsigned kamra_CAN :1;//sw5
        unsigned na1_CAN : 1;
        unsigned gyerek_CAN : 1; //sw6
        unsigned erk_CAN : 1; //sw6
        unsigned lepcso_CAN : 1; //sw7
        unsigned tukor1_CAN : 1;
        unsigned tukor2_CAN : 1; //sw8
        unsigned spare11_CAN : 1; //sw7
        unsigned spare12_CAN : 1; //sw8
    } bits;
} CANflag;


const rom char lights[24][10] = {

    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1, S_BINARY},
    {'t', 'u', 'k', 'o', 'r', ' ', '2', ' ', 2, S_BINARY},
    {'t', 'u', 'k', 'o', 'r', ' ', '1', ' ', 3, S_BINARY},
    {'l', 'e', 'p', 'c', 's', 'o', ' ', ' ', 4, S_BINARY},
    {'E', 'd', 'i', 'n', 'a', ' ', ' ', ' ', 5, S_BINARY},
    {'P', 'e', 't', 'i', ' ', ' ', ' ', ' ', 6, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 7, S_BINARY},
    {'E', 'd', 'i', ' ', 'L', 'E', 'D', ' ', 8, S_BINARY},
    {'P', 'e', 't', 'i', ' ', 'L', 'E', 'D', 9, S_BINARY},
    {'h', 'a', 'z', 't', 'a', 'r', 't', ' ', 10, S_BINARY},
    {'W', 'C', ' ', ' ', ' ', ' ', ' ', ' ', 11, S_BINARY},
    {'f', 'u', 'r', 'd', 'o', ' ', ' ', ' ', 12, S_BINARY},
    {'h', 'a', 'l', 'o', ' ', ' ', ' ', ' ', 13, S_BINARY},
    {'d', 'o', 'l', 'g', 'o', 'z', 'o', ' ', 14, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 15, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 16, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 17, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 18, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 19, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 20, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 21, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 22, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 23, S_BINARY}
};

const rom char switches[32][10] = {

    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 3, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 4, S_BINARY},
    {'P', 'e', 't', 'i', ' ', 'j', ' ', ' ', 5, S_BINARY},
    {'l', '-', 'h', ' ', 'b', 'a', 'l', ' ', 6, S_BINARY},
    {'d', '-', 'P', ' ', 'b', 'a', 'l', ' ', 7, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 8, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 9, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 10, S_BINARY},
    {'t', 'u', 'k', 'o', 'r', ' ', '2', ' ', 11, S_BINARY},
    {'t', 'u', 'k', 'o', 'r', ' ', '1', ' ', 12, S_BINARY},
    {'l', '-', 'h', ' ', 'j', ' ', ' ', ' ', 13, S_BINARY},
    {'E', 'd', 'i', 'n', 'a', ' ', ' ', ' ', 14, S_BINARY},
    {'P', 'e', 't', 'i', ' ', 'b', 'a', 'l', 15, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 16, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 17, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 18, S_BINARY},
    {'h', 'a', 'l', 'o', ' ', 'b', 'a', 'l', 19, S_BINARY},
    {'d', '-', 'P', ' ', 'b', 'a', 'l', ' ', 20, S_BINARY},
    {'d', '-', 'E', ' ', 'j', 'o', 'b', 'b', 21, S_BINARY},
    {'l', ' ', 'l', 'e', 'n', 't', ' ', 'j', 22, S_BINARY},
    {'l', '-', 'f', ' ', 'b', 'a', 'l', ' ', 23, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 24, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 25, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 26, S_BINARY},
    {'h', 'a', 'z', 't', '.', 'h', '.', ' ', 27, S_BINARY},
    {'W', 'C', ' ', ' ', ' ', ' ', ' ', ' ', 28, S_BINARY},
    {'l', '-', 'f', ' ', 'j', 'o', 'b', 'b', 29, S_BINARY},
    {'h', 'a', 'l', 'o', ' ', 'j', ' ', ' ', 30, S_BINARY},
    {'d', '-', 'p', ' ', 'j', 'o', 'b', 'b', 31, S_BINARY}
};

#elif defined (foldszint)

union {
    unsigned long mask;

    struct {
        unsigned a_CAN : 1; //sw1
        unsigned b_CAN : 1; //sw7
        unsigned c_CAN : 1; //sw8unsigned konyha1_CAN :1;//sw2
        unsigned d_CAN : 1; //sw1
        unsigned e_CAN : 1; //sw2unsigned szelfogo_CAN :1;//sw3
        unsigned f_CAN : 1; //sw3zuhany???
        unsigned g_CAN : 1; //sw4unsigned zuhany_CAN :1;//sw4
        unsigned h_CAN : 1; //sw5unsigned kamra_CAN :1;//sw5
        unsigned i_CAN : 1;
        unsigned j_CAN : 1; //sw6
        unsigned k_CAN : 1; //sw6
        unsigned l_CAN : 1; //sw7
        unsigned m_CAN : 1;
        unsigned n_CAN : 1; //sw8
        unsigned o_CAN : 1; //sw7
        unsigned p_CAN : 1; //sw8

        unsigned na2_CAN : 1; //sw1
        unsigned nappali2_CAN : 1; //sw7
        unsigned konyha2_CAN : 1; //sw8unsigned konyha1_CAN :1;//sw2
        unsigned eloter_CAN : 1; //sw1
        unsigned folyoso_CAN : 1; //sw2unsigned szelfogo_CAN :1;//sw3
        unsigned tukor_CAN : 1; //sw3
        unsigned muhely_CAN : 1; //sw4unsigned zuhany_CAN :1;//sw4
        unsigned elsoajto_kint_CAN : 1; //sw5unsigned kamra_CAN :1;//sw5
        unsigned na1_CAN : 1;
        unsigned nappali1_CAN : 1; //sw6
        unsigned konyha1_CAN : 1; //sw6
        unsigned szelfogo_CAN : 1; //sw7
        unsigned zuhany_CAN : 1;        //K15 volt
        unsigned K15_CAN : 1; //sw8     //zuhany volt
        unsigned kamra_CAN : 1; //sw7
        unsigned hatsoajto_kint_CAN : 1; //sw8
    } bits;
} CANflag;

const rom char switches[32][10] = {

    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 1, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 2, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 3, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 4, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 5, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 6, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 7, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 8, S_BINARY},
    {'k', 'o', 'n', 'y', 'h', 'a', ' ', 'b', 9, S_BINARY},
    {'k', 'a', 'm', 'r', 'a', ' ', ' ', ' ', 10, S_BINARY},
    {'z', 'u', 'h', 'a', 'n', 'y', ' ', ' ', 11, S_BINARY},
    {'h', ' ', 'a', 'j', 't', 'o', ' ', 'b', 12, S_BINARY},
    {'e', ' ', 'a', 'j', 't', 'o', ' ', 'b', 13, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '3', 14, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '1', 15, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 16, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 17, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 18, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 19, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 20, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 21, S_BINARY},
    {'e', '.', 'a', '.', 'k', 'i', 'n', 't', 22, S_BINARY},
    {'h', '.', 'a', '.', 'k', 'i', 'n', 't', 23, S_BINARY},
    {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 24, S_BINARY},
    {'k', 'o', 'n', 'y', 'h', 'a', ' ', 'b', 25, S_BINARY},
    {'k', 'a', 'm', 'r', 'a', ' ', ' ', ' ', 26, S_BINARY},
    {'z', 'u', 'h', 'a', 'n', 'y', ' ', ' ', 27, S_BINARY},
    {'h', '.', 'a', '.', 'b', 'a', 'l', ' ', 28, S_BINARY},
    {'e', '.', 'a', '.', 'b', 'a', 'l', ' ', 29, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '3', 30, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '1', 31, S_BINARY}
};

const rom char lights[24][10] = {

    {'h', '.', 'a', '.', 'k', 'i', 'n', 't', 0, S_BINARY},
    {'k', 'a', 'm', 'r', 'a', ' ', ' ', ' ', 1, S_BINARY},
    {'K', ' ', '1', '5', ' ', ' ', ' ', ' ', 2, S_BINARY},
    {'z', 'u', 'h', 'a', 'n', 'y', ' ', ' ', 3, S_BINARY},
    {'s', 'z', 'e', 'l', 'f', 'o', 'g', 'o', 4, S_BINARY},
    {'k', 'o', 'n', 'y', 'h', 'a', ' ', '1', 5, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '1', 6, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 7, S_BINARY},
    {'e', '.', 'a', '.', 'k', 'i', 'n', 't', 8, S_BINARY},
    {'m', 'u', 'h', 'e', 'l', 'y', ' ', ' ', 9, S_BINARY},
    {'t', 'u', 'k', 'o', 'r', ' ', ' ', ' ', 10, S_BINARY},
    {'f', 'o', 'l', 'y', 'o', 's', 'o', ' ', 11, S_BINARY},
    {'e', 'l', 'o', 't', 'e', 'r', ' ', ' ', 12, S_BINARY},
    {'k', 'o', 'n', 'y', 'h', 'a', ' ', '2', 13, S_BINARY},
    {'n', 'a', 'p', 'p', 'a', 'l', 'i', '2', 14, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 15, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 16, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 17, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 18, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 19, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 20, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 21, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 22, S_BINARY},
    {'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 23, S_BINARY}
};

const rom char utility[5][10] = {

    {'R', '1', 'p', 'o', 'w', 'e', ' ', ' ', 0, S_WATER},
    {'S', '1', 'p', 'o', 'w', 'e', ' ', ' ', 1, S_WATER},
    {'T', '1', 'p', 'o', 'w', 'e', ' ', ' ', 2, S_WATER},
    {'s', 'u', 'm', '1', 'p', 'w', ' ', '.', 3, S_WATER},
    {'v', 'i', 'z', '1', ' ', ' ', ' ', ' ', 4, S_WATER}
};

#endif

//---------------------------------------------------------------------´
// Interrupt Code
//---------------------------------------------------------------------

#pragma interrupt isr save = temp	

#pragma code isrcode=0x0008 //0x0808				// Locate ISR handler code at interrupt vector

void isrhandler(void) // This function directs execution to the
{ // actual interrupt code
    _asm
            goto isr
            _endasm
}

#pragma code

//---------------------------------------------------------------------
// isr()
//---------------------------------------------------------------------

void isr(void) {

    CANISR();

#if defined (foldszint)    
    if (INTCONbits.RBIF) {
        if (!R_pwr_pin && util_flag.R) R_pwr_accu.Long++;
        if (!S_pwr_pin && util_flag.S) S_pwr_accu.Long++;
        if (!T_pwr_pin && util_flag.T) T_pwr_accu.Long++;
        util_flag.R = R_pwr_pin;
        util_flag.S = S_pwr_pin;
        util_flag.T = T_pwr_pin;
        INTCONbits.RBIF = 0;
    }
    if (PIR1bits.TMR2IF) {
        
        div++;
        if (div==0) util_flag.send_R = 1;
        if (div == 16384) util_flag.send_S = 1;
        if (div == 32768) util_flag.send_T = 1;
        if (div == 49152) util_flag.send_water = 1;
        
        PIR1bits.TMR2IF = 0;
    }
#endif
}

//---------------------------------------------------------------------
//	Setup() initializes program variables and peripheral registers
//---------------------------------------------------------------------

void Setup(void) {

    TRISA = 0b01101111;
    PORTA = 0;
    ADCON0 = 0b10000000;
    ADCON1 = 0b11000000;

    PORTB = 0;

    TRISC = 0b10100110;
    PORTC = 0;

    TRISD = 0b11011111;

    PIE2 = 0;
    PIE1 = 0;

#if defined (emelet)
    TRISB = 0b10111011;
#elif defined (foldszint)

    TRISB = 0b11111011;
    INTCON2bits.RBPU = 0;

    util_flag.R = 1;
    util_flag.S = 1;
    util_flag.T = 1;
    util_flag.water = 1;
    util_flag.send_R = 0;
    util_flag.send_S = 0;
    util_flag.send_T = 0;
    util_flag.send_water = 0;

    PR2 = 70;
    OpenTimer2(T2_PS_1_16 & T2_POST_1_16 & TIMER_INT_ON); 

#endif

    RCONbits.IPEN = 0; //no priority
    INTCONbits.PEIE = 1;
    INTCONbits.RBIF = 0;

#if defined (emelet)
    INTCONbits.RBIE = 0;
#elif defined (foldszint)
    INTCONbits.RBIE = 1;
#endif

    INTCONbits.GIE = 1;

}

//---------------------------------------------------------------------
// main()
//---------------------------------------------------------------------

void main(void) {
    unsigned int t, mask;

    char index, index1, index2;
    OUT1_old = 0xffff;
    OUT2_old = 0xffff;

    Setup(); // Setup peripherals and software
    Init_Exp();

    R_pwr_accu.Long = 0;
    S_pwr_accu.Long = 0;
    T_pwr_accu.Long = 0;
    water_accu.Long = 0;

    CAN_init(CAN_CONFIG_1, CAN_CONFIG_2, CAN_CONFIG_3); //Initialize CAN module

    if (CANRXMessageIsPending()) CAN_RX_Message = CANGet(); //Get the message
    if (CANRXMessageIsPending()) CAN_RX_Message = CANGet(); //Get the message

#if defined (foldszint)   
    DelayMs(1000);
#elif defined (emelet)
    DelayMs(2000);
#endif

    //************************* presentation of local devides ***********************************

    CAN_TX_Message.NODE_ID = NODEID;
    CAN_TX_Message.MSG_TYP = C_PRESENTATION;
    CAN_TX_Message.ACK = 0;
    CAN_TX_Message.Remote = 0; //clear the remote flag
    CAN_TX_Message.Priority = 0;
    CAN_TX_Message.NoOfBytes = 1; //Set number of bytes to send
    CANPut(CAN_TX_Message);
    DelayMs(8);
    CANPut(CAN_TX_Message);
    DelayMs(8);

    //******************** presentation ********************************************

    CAN_TX_Message.NODE_ID = NODEID;
    CAN_TX_Message.MSG_TYP = C_PRESENTATION;
    CAN_TX_Message.ACK = 0;
    CAN_TX_Message.Remote = 0; //clear the remote flag
    CAN_TX_Message.Priority = 0;
    CAN_TX_Message.NoOfBytes = 8; //Set number of bytes to send

    for (index = 0; index < 24; index++) {
        CAN_TX_Message.CHILD_ID = lights[index][8];
        CAN_TX_Message.SUBTYPE = lights[index][9];

        for (index1 = 0; index1 < 8; index1++) {
            CAN_TX_Message.Data[index1] = lights[index][index1];
        }
        CANPut(CAN_TX_Message);
        DelayMs(10);
    }

    CAN_TX_Message.NODE_ID = NODEID + 1;

    for (index = 0; index < 32; index++) {//23
        CAN_TX_Message.CHILD_ID = switches[index][8];
        CAN_TX_Message.SUBTYPE = switches[index][9];

        for (index1 = 0; index1 < 8; index1++) {
            CAN_TX_Message.Data[index1] = switches[index][index1];
        }
        CANPut(CAN_TX_Message);
        DelayMs(10);
    }

#if defined (foldszint)
    CAN_TX_Message.NODE_ID = NODEID + 3;

    for (index = 0; index < 5; index++) {
        CAN_TX_Message.CHILD_ID = utility[index][8];
        CAN_TX_Message.SUBTYPE = utility[index][9];

        for (index1 = 0; index1 < 8; index1++) {
            CAN_TX_Message.Data[index1] = utility[index][index1];
        }
        CANPut(CAN_TX_Message);
        DelayMs(10);
    }
#endif


#if defined (ENABLE_CONSOLE)
    ConsoleInit();
    RE = 1;
    DE = 1;
#if defined(foldszint)	
    ConsolePutROMString("\r\n Foldszint vilagitas vezerlo\r\n");
#else
    ConsolePutROMString("\r\n Emelet vilagitas vezerlo\r\n");
#endif			
    DE = 0;
    RE = 0;
#endif

    I2CReadWord(IN1_ADDR, GPIOA);
    exp_in1.InData.port.A = num1;
    exp_in1.InData.port.B = num2;

    I2CReadWord(IN2_ADDR, GPIOA);
    exp_in2.InData.port.A = num1;
    exp_in2.InData.port.B = num2;

#if defined(foldszint)	
    //flag.old_lepcso = 0; //k_lepcso_bal; ??
    //    folyoso = 1;
    //   szelfogo = 1;
    I2CWriteByte(OUT1_ADDR, OLAT, OUT1_2.OUT.A);
    I2CWriteByte(OUT2_ADDR, OLAT, OUT1_2.OUT.B);
#endif			

    updateOutput();

    while (1) // Loop forever
    {
#if defined (foldszint)
        if (util_flag.send_R) {
            util_flag.send_R = 0;

            CAN_TX_Message.NODE_ID = (NODEID + 3);
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.NoOfBytes = 4; //Set number of bytes to send

            CAN_TX_Message.CHILD_ID = 0;
            CAN_TX_Message.SUBTYPE = V_VOLUME;
            CAN_TX_Message.Data[0] = R_pwr_accu.Char[0];
            CAN_TX_Message.Data[1] = R_pwr_accu.Char[1];
            CAN_TX_Message.Data[2] = R_pwr_accu.Char[2];
            CAN_TX_Message.Data[3] = R_pwr_accu.Char[3];

            CANPut(CAN_TX_Message);
            DelayMs(8);
        }

        if (util_flag.send_S) {
            util_flag.send_S = 0;

            CAN_TX_Message.NODE_ID = (NODEID + 3);
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.NoOfBytes = 4; //Set number of bytes to send

            CAN_TX_Message.CHILD_ID = 1;
            CAN_TX_Message.SUBTYPE = V_VOLUME;
            CAN_TX_Message.Data[0] = S_pwr_accu.Char[0];
            CAN_TX_Message.Data[1] = S_pwr_accu.Char[1];
            CAN_TX_Message.Data[2] = S_pwr_accu.Char[2];
            CAN_TX_Message.Data[3] = S_pwr_accu.Char[3];

            CANPut(CAN_TX_Message);
            DelayMs(8);
        }

        if (util_flag.send_T) {
            util_flag.send_T = 0;

            CAN_TX_Message.NODE_ID = (NODEID + 3);
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.NoOfBytes = 4; //Set number of bytes to send

            CAN_TX_Message.CHILD_ID = 2;
            CAN_TX_Message.SUBTYPE = V_VOLUME;
            CAN_TX_Message.Data[0] = T_pwr_accu.Char[0];
            CAN_TX_Message.Data[1] = T_pwr_accu.Char[1];
            CAN_TX_Message.Data[2] = T_pwr_accu.Char[2];
            CAN_TX_Message.Data[3] = T_pwr_accu.Char[3];

            CANPut(CAN_TX_Message);
            DelayMs(8);
        }

        if (util_flag.send_water) {
            util_flag.send_water = 0;

            CAN_TX_Message.NODE_ID = (NODEID + 3);
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.NoOfBytes = 4; //Set number of bytes to send

            CAN_TX_Message.CHILD_ID = 4;
            CAN_TX_Message.SUBTYPE = V_VOLUME;
            CAN_TX_Message.Data[0] = water_accu.Char[0];
            CAN_TX_Message.Data[1] = water_accu.Char[1];
            CAN_TX_Message.Data[2] = water_accu.Char[2];
            CAN_TX_Message.Data[3] = water_accu.Char[3];

            CANPut(CAN_TX_Message);
            DelayMs(8);
        }
#endif

        if (CANRXMessageIsPending()) CANRx();

        if (!IN1_INT) {
            t = I2CReadWord(IN1_ADDR, INTFA);
            exp_in1.INTf.port.A = num1;
            exp_in1.INTf.port.B = num2;
            t = I2CReadWord(IN1_ADDR, GPIOA);
            exp_in1.InData.port.A = num1;
            exp_in1.InData.port.B = num2;

            updateOutput();

            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.NODE_ID = (NODEID + 1);
            CAN_TX_Message.NoOfBytes = 1;
            CAN_TX_Message.SUBTYPE = V_STATUS;
            mask = 1;
            for (index2 = 0; index2 < 16; index2++) {
                if (exp_in1.INTf.Int & 1) {
                    DelayMs(10);
                    if (exp_in1.InData.Int & mask) CAN_TX_Message.Data[0] = 48;
                    else CAN_TX_Message.Data[0] = 49;
                    CAN_TX_Message.CHILD_ID = index2;
                    CANPut(CAN_TX_Message);
                }
                exp_in1.INTf.Int >>= 1;
                mask <<= 1;
            }

        }

        if (!IN2_INT) {
            t = I2CReadWord(IN2_ADDR, INTFA);
            exp_in2.INTf.port.A = num1;
            exp_in2.INTf.port.B = num2;
            t = I2CReadWord(IN2_ADDR, GPIOA);
            exp_in2.InData.port.A = num1;
            exp_in2.InData.port.B = num2;

            updateOutput();

            CAN_TX_Message.ACK = 0;
            CAN_TX_Message.Remote = 0; //clear the remote flag
            CAN_TX_Message.Priority = 0;
            CAN_TX_Message.MSG_TYP = C_SET;
            CAN_TX_Message.NODE_ID = (NODEID + 1);
            CAN_TX_Message.NoOfBytes = 1;
            CAN_TX_Message.SUBTYPE = V_STATUS;
            mask = 1;
            for (index2 = 0; index2 < 16; index2++) {
                if (exp_in2.INTf.Int & 1) {
                    DelayMs(10);
                    if (exp_in2.InData.Int & mask) CAN_TX_Message.Data[0] = 48;
                    else CAN_TX_Message.Data[0] = 49;
                    CAN_TX_Message.CHILD_ID = (index2 + 16);
                    CANPut(CAN_TX_Message);
                }
                exp_in2.INTf.Int >>= 1;
                mask <<= 1;
            }
        }

#if defined (ENABLE_CONSOLE)
        count += 1;
        RE = 1;
        DE = 1;

#if defined(foldszint)	
        ConsolePutROMString("\r\n foldszint esemeny   ");
#else
        ConsolePutROMString("\r\n emelet esemeny    ");
#endif			
        PrintChar(IN1A.IN);
        ConsolePutROMString(" ");
        PrintChar(IN1B.IN);
        ConsolePutROMString(" ");
        PrintChar(IN2A.IN);
        ConsolePutROMString(" ");
        PrintChar(IN2B.IN);
        ConsolePutROMString("   ");
        PrintChar(count);
        DE = 0;
        RE = 0;

#endif
    }
}

//findpos

//**************** update output ***************

void CANRx(void) {

    CAN_RX_Message = CANGet(); //Get the message
    if ((CAN_RX_Message.CHILD_ID < 32) &&(CAN_RX_Message.MSG_TYP == C_SET)&&(CAN_RX_Message.SUBTYPE == V_STATUS)) {
        if (CAN_RX_Message.Data[0] == 48) flag.f = 1; // 49: ASCII '1'
        else if (CAN_RX_Message.Data[0] == 49) flag.f = 0; // 48: ASCII '0'
        else return; //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!4********************************

#if defined (foldszint)                    
        switch (CAN_RX_Message.CHILD_ID) {
            case 0:
                if (flag.f ^ hatsoajto_kint) CANflag.bits.hatsoajto_kint_CAN ^= 1;
                break;
            case 1:
                if (flag.f ^ kamra) CANflag.bits.kamra_CAN ^= 1;
                break;
            case 2:
                if (flag.f ^ zuhany) CANflag.bits.zuhany_CAN ^= 1;
                break;
            case 3:
                if (flag.f ^ K15) CANflag.bits.K15_CAN ^= 1;
                break;
            case 4:
                if (flag.f ^ szelfogo) CANflag.bits.szelfogo_CAN ^= 1;
                break;
            case 5:
                if (flag.f ^ konyha1) CANflag.bits.konyha1_CAN ^= 1;
                break;
            case 6:
                if (flag.f ^ nappali1) CANflag.bits.nappali1_CAN ^= 1;
                break;
            case 7:
                if (flag.f ^ na1) CANflag.bits.na1_CAN ^= 1;
                break;
            case 8:
                if (flag.f ^ elsoajto_kint) CANflag.bits.elsoajto_kint_CAN ^= 1;
                break;
            case 9:
                if (flag.f ^ muhely) CANflag.bits.muhely_CAN ^= 1;
                break;
            case 10:
                if (flag.f ^ tukor) CANflag.bits.tukor_CAN ^= 1;
                break;
            case 11:
                if (flag.f ^ folyoso) CANflag.bits.folyoso_CAN ^= 1;
                break;
            case 12:
                if (flag.f ^ eloter) CANflag.bits.eloter_CAN ^= 1;
                break;
            case 13:
                if (flag.f ^ konyha2) CANflag.bits.konyha2_CAN ^= 1;
                break;
            case 14:
                if (flag.f ^ nappali2) CANflag.bits.nappali2_CAN ^= 1;
                break;
            case 15:
                if (flag.f ^ na2) CANflag.bits.na2_CAN ^= 1;
                break;
            case 16:
                if (flag.f ^ aaa) CANflag.bits.a_CAN ^= 1;
                break;
            case 17:
                if (flag.f ^ bbb) CANflag.bits.b_CAN ^= 1;
                break;
            case 18:
                if (flag.f ^ ccc) CANflag.bits.c_CAN ^= 1;
                break;
            case 19:
                if (flag.f ^ ddd) CANflag.bits.d_CAN ^= 1;
                break;
            case 20:
                if (flag.f ^ eee) CANflag.bits.e_CAN ^= 1;
                break;
            case 21:
                if (flag.f ^ fff) CANflag.bits.f_CAN ^= 1;
                break;
            case 22:
                if (flag.f ^ ggg) CANflag.bits.g_CAN ^= 1;
                break;
            case 23:
                break;
        }
#elif defined (emelet)
        switch (CAN_RX_Message.CHILD_ID) {
            case 0:
                if (flag.f ^ spare12) CANflag.bits.spare12_CAN ^= 1;
                break;
            case 1:
                if (flag.f ^ spare11) CANflag.bits.spare11_CAN ^= 1;
                break;
            case 2:
                if (flag.f ^ tukor2) CANflag.bits.tukor2_CAN ^= 1;
                break;
            case 3:
                if (flag.f ^ tukor1) CANflag.bits.tukor1_CAN ^= 1;
                break;
            case 4:
                if (flag.f ^ lepcso) CANflag.bits.lepcso_CAN ^= 1;
                break;
            case 5:
                if (flag.f ^ erk) CANflag.bits.erk_CAN ^= 1;
                break;
            case 6:
                if (flag.f ^ gyerek) CANflag.bits.gyerek_CAN ^= 1;
                break;
            case 7:
                if (flag.f ^ na1) CANflag.bits.na1_CAN ^= 1;
                break;
            case 8:
                if (flag.f ^ erk_disz) CANflag.bits.erk_disz_CAN ^= 1;
                break;
            case 9:
                if (flag.f ^ gyerek_disz) CANflag.bits.gyerek_disz_CAN ^= 1;
                break;
            case 10:
                if (flag.f ^ hazt) CANflag.bits.hazt_CAN ^= 1;
                break;
            case 11:
                if (flag.f ^ wc) CANflag.bits.wc_CAN ^= 1;
                break;
            case 12:
                if (flag.f ^ furdo) CANflag.bits.furdo_CAN ^= 1;
                break;
            case 13:
                if (flag.f ^ halo) CANflag.bits.halo_CAN ^= 1;
                break;
            case 14:
                if (flag.f ^ dolgozo) CANflag.bits.dolgozo_CAN ^= 1;
                break;
            case 15:
                if (flag.f ^ na2) CANflag.bits.na2_CAN ^= 1;
                break;
            case 16:
                if (flag.f ^ aaa) CANflag.bits.ll_CAN ^= 1;
                break;
            case 17:
                if (flag.f ^ bbb) CANflag.bits.kk ^= 1;
                break;
            case 18:
                if (flag.f ^ ccc) CANflag.bits.jj_CAN ^= 1;
                break;
            case 19:
                if (flag.f ^ ddd) CANflag.bits.hh ^= 1;
                break;
            case 20:
                if (flag.f ^ eee) CANflag.bits.gg_CAN ^= 1;
                break;
            case 21:
                if (flag.f ^ fff) CANflag.bits.ff_CAN ^= 1;
                break;
            case 22:
                if (flag.f ^ ggg) CANflag.bits.dd_CAN ^= 1;
                break;
            case 23:
                break;
        }
#endif
        updateOutput();
    }
}

void updateOutput(void) {

    unsigned int mask, result;
    unsigned char index;

#if defined(emelet)

    gyerek = k_gyerek_bal ^ CANflag.bits.gyerek_CAN;
    gyerek_disz = k_gyerek_jobb ^ CANflag.bits.gyerek_disz_CAN;
    
    erk = k_erk ^ CANflag.bits.erk_CAN;
    erk_disz = k_erk_jobb ^ CANflag.bits.erk_disz_CAN;
    lepcso = k_lepcso_halo_jobb ^ k_lepcso_furdo_bal ^ k_lepcso_lent_jobb ^ k_dolgozo_gyerek_bal ^ k_dolgozo_erk_jobb ^ k_halo_bal ^ CANflag.bits.lepcso_CAN;
    tukor1 = k_tukor1 ^ CANflag.bits.tukor1_CAN;
    tukor2 = k_tukor2 ^ CANflag.bits.tukor2_CAN;

    dolgozo = k_dolgozo_gyerek_jobb ^ k_dolgozo_erk_bal ^ k_lepcso_halo_bal ^ CANflag.bits.dolgozo_CAN;
    halo = k_halo_jobb ^ CANflag.bits.halo_CAN;
    furdo = k_lepcso_furdo_jobb ^ CANflag.bits.furdo_CAN;
    wc = k_wc ^ CANflag.bits.wc_CAN;
    hazt = k_hazt ^ CANflag.bits.hazt_CAN;

#elif defined(foldszint)

    if (k_lepcso_bal != flag.old_lepcso) {
        if (folyoso && szelfogo) {
            flag.folyoso_xor ^= 1;
            flag.eloter_xor ^= 1;
        }

        if (!folyoso) flag.folyoso_xor ^= 1;

        if (!eloter) flag.eloter_xor ^= 1;

        flag.old_lepcso = k_lepcso_bal;
    }

    nappali1 = k_nappali1 ^ CANflag.bits.nappali1_CAN;
    konyha1 = k_nappali3 ^ k_konyha_bal ^ CANflag.bits.konyha1_CAN;
    szelfogo = k_bej_ajto_jobb ^ flag.eloter_xor ^ CANflag.bits.szelfogo_CAN;
    K15 = CANflag.bits.K15_CAN;
    zuhany = k_zuhany ^ CANflag.bits.zuhany_CAN;
    kamra = k_kamra ^ CANflag.bits.kamra_CAN;
    elsoajto_kint = k_bej_ajto_bal ^ k_elso_kulso_ajto ^ CANflag.bits.elsoajto_kint_CAN;

    nappali2 = k_nappali2 ^ CANflag.bits.nappali2_CAN;
    konyha2 = k_nappali4 ^ k_konyha_jobb ^ CANflag.bits.konyha2_CAN;
    eloter = szelfogo ^ CANflag.bits.eloter_CAN;
    folyoso = k_h_ajto_jobb ^ flag.folyoso_xor ^ CANflag.bits.folyoso_CAN;
    tukor = k_tukor ^ CANflag.bits.tukor_CAN;
    muhely = k_muhely_jobb ^ CANflag.bits.muhely_CAN;
    hatsoajto_kint = k_h_ajto_bal ^ k_hatso_kulso_ajto ^ CANflag.bits.hatsoajto_kint_CAN;

#endif

    I2CWriteByte(OUT1_ADDR, OLAT, OUT1_2.OUT.A);
    I2CWriteByte(OUT2_ADDR, OLAT, OUT1_2.OUT.B);

    CAN_TX_Message.ACK = 0;
    CAN_TX_Message.Remote = 0; //clear the remote flag
    CAN_TX_Message.Priority = 0;
    CAN_TX_Message.MSG_TYP = C_SET;
    CAN_TX_Message.NODE_ID = NODEID;
    CAN_TX_Message.NoOfBytes = 1;
    CAN_TX_Message.SUBTYPE = V_STATUS;

    result = (OUT1_2.Int ^ OUT1_old);
    OUT1_old = OUT1_2.Int;
    mask = 1;
    if (result) {
        for (index = 0; index < 16; index++) {
            if (result & 1) {
                DelayMs(10);
                if (OUT1_2.Int & mask) CAN_TX_Message.Data[0] = 48;
                else CAN_TX_Message.Data[0] = 49;
                CAN_TX_Message.CHILD_ID = index;
                CANPut(CAN_TX_Message);
            }
            result >>= 1;
            mask <<= 1;
        }
    }

    result = (OUT3_4.Int ^ OUT2_old);
    OUT2_old = OUT3_4.Int;
    mask = 1;
    if (result) {
        for (index = 0; index < 16; index++) {
            if (result & 1) {
                DelayMs(10);
                if (OUT3_4.Int & mask) CAN_TX_Message.Data[0] = 48;
                else CAN_TX_Message.Data[0] = 49;
                CAN_TX_Message.CHILD_ID = (index + 16);
                CANPut(CAN_TX_Message);
            }
            result >>= 1;
            mask <<= 1;
        }
    }
}

void CANErrorHandler(void) {
    //If CAN error handler is enabled
    //Perform error handling code here
}