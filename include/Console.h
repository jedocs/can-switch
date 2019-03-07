#ifndef  _CONSOLE_H_
#define  _CONSOLE_H_

/************************ HEADERS **********************************/
//#include "define.h"

#define BAUD_RATE 19200		//9600

/************************ DEFINITIONS ******************************/
/************************ FUNCTION PROTOTYPES **********************/

    #if defined(ENABLE_CONSOLE)   // Useful for disabling the console (saving power)
        void ConsoleInit(void);

        #define ConsoleIsPutReady()     (TXSTAbits.TRMT)

        void ConsolePut(BYTE c);
        void ConsolePutString(BYTE *s);
        void ConsolePutROMString(const rom char *str);
    
        #define ConsoleIsGetReady()     (PIR1bits.RCIF)

        BYTE ConsoleGet(void);
//        BYTE ConsoleGetString(char *buffer, BYTE bufferLen);
        void PrintChar(BYTE);
        void PrintDec(BYTE);
    #else
        #define ConsoleInit()
        #define ConsoleIsPutReady() 1
        #define ConsolePut(c)
        #define ConsolePutString(s)
        #define ConsolePutROMString(str)
    
        #define ConsoleIsGetReady() 1
        #define ConsoleGet()        'a'
  //      #define ConsoleGetString(buffer, bufferLen) 0
        #define PrintChar(a)
        #define PrintDec(a)
    #endif

//#define Printf(x) ConsolePutROMString((ROM char*)x)
#define printf(x) ConsolePutROMString((ROM char*)x)
#endif


