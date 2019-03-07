
/************************ HEADERS **********************************/
#include	"../include/define.h"

#if defined(ENABLE_CONSOLE)

/************************ VARIABLES ********************************/
const rom unsigned char CharacterArray[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    
/************************ DEFINITIONS ******************************/
#define USART_USE_BRGH_HIGH
#if defined(USART_USE_BRGH_LOW)
    #define SPBRG_VAL   ( ((CLOCK_FREQ/BAUD_RATE)/64) - 1)
#else
    #define SPBRG_VAL   ( ((CLOCK_FREQ/BAUD_RATE)/16) - 1)
#endif

#if SPBRG_VAL > 255
    #error "Calculated SPBRG value is out of range for currnet CLOCK_FREQ."
#endif

/************************ FUNCTIONS ********************************/
    
/*********************************************************************
* Function:         void ConsoleInit(void)
*
* Overview:		    This function will configure the UART for use at 
*                   in 8 bits, 1 stop, no flowcontrol mode
********************************************************************/
void ConsoleInit(void)
{
        TRISCbits.TRISC7 = 1;
        TRISCbits.TRISC6 = 0;
        #if defined(USART_USE_BRGH_HIGH)
            TXSTA = 0x24;
        #else
            TXSTA = 0x20;
        #endif
    
        RCSTA = 0x90; // 0b10010000;
        SPBRG = SPBRG_VAL;
}

/*********************************************************************
* Function:         void ConsolePutROMString(ROM char* str)
*
* Input:		    str - ROM string that needs to be printed
*
* Overview:		    This function will print the inputed ROM string
********************************************************************/
void ConsolePutROMString(const rom char* str)
{
    BYTE c;

    while( c = *str++ )
        ConsolePut(c);
}

/*********************************************************************
* Function:         void ConsolePut(BYTE c)
*
* Input:		    c - character to be printed
*
* Overview:		    This function will print the inputed character
********************************************************************/
void ConsolePut(BYTE c)
{
    while( !ConsoleIsPutReady() );
    TXREG = c;
}


/*********************************************************************
* Function:         BYTE ConsoleGet(void)
*
* Output:		    one byte received by UART
*
* Overview:		    This function will receive one byte from UART
********************************************************************/
BYTE ConsoleGet(void)
{
	// Clear overrun error if it has occured
    // New bytes cannot be received if the error occurs and isn't cleared
    if(RCSTAbits.OERR)
    {
    	RCSTAbits.CREN = 0;   // Disable UART receiver
        RCSTAbits.CREN = 1;   // Enable UART receiver
    }

    return RCREG;
}


/*********************************************************************
* Function:         void PrintChar(BYTE toPrint)
*
* Overview:		    This function will print the inputed BYTE to 
*                   the console in hexidecimal form
********************************************************************/
void PrintChar(BYTE toPrint)
{
    BYTE PRINT_VAR;
    PRINT_VAR = toPrint;
    toPrint = (toPrint>>4)&0x0F;
    ConsolePut(CharacterArray[toPrint]);
    toPrint = (PRINT_VAR)&0x0F;
    ConsolePut(CharacterArray[toPrint]);
    return;
}

/*********************************************************************
* Function:         void PrintDec(BYTE toPrint)
*
* Input:		    toPrint - character to be printed. Range is 0-99
*
* Overview:		    This function will print the inputed BYTE to 
*                   the console in decimal form
********************************************************************/
void PrintDec(BYTE toPrint)
{
    if( toPrint >= 100 )
        ConsolePut(CharacterArray[toPrint/100]);
    if( toPrint >= 10 )
        ConsolePut(CharacterArray[(toPrint%100)/10]);
    ConsolePut(CharacterArray[toPrint%10]);
}

#endif  //ENABLE_CONSOLE

