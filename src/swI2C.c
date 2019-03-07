
#include "../include/define.h"

/********************************************************************
*     Function Name:    void SWStartI2C(void)                       *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      Send I2C bus start condition.               *
********************************************************************/
void I2CStart( void )
{
  	CLOCK_HI;
	Delay10TCYx(10);                // user may need to modify based on Fosc
  	DATA1_LOW;                      // set pin to output to drive low
    Delay10TCYx(10);                // user may need to modify based on Fosc
}

/**********************************************************************
*     Function Name:    signed char WriteI2C(unsigned char data_out)*
*     Return Value:     error condition if bus error occurred         *
*     Parameters:       Single data byte for I2C bus.                 *
*     Description:      This routine writes a single byte to the      *
*                       I2C bus.                                      *
**********************************************************************/
unsigned char WriteI2C( unsigned char data_out )
{
	unsigned char i;
  	for (i=0; i<8; i++)
  	{
		// clock stretch?????
    	
      	if ( data_out & 0b10000000 )        
      	{
       		CLOCK_LOW;              // set clock pin output to drive low
       		
			DATA1_HI;               // release data line to float high 
       		Delay10TCYx(10);        // user may need to modify based on Fosc
       		CLOCK_HI;               // release clock line to float high 
       		Delay10TCYx(10);        // user may need to modify based on Fosc
      	}
      	else                        // transmit out logic 0
      	{
        	CLOCK_LOW;              // set clock pin output to drive low
           	
			DATA1_LOW;              // set data pin output to drive low 
       	  	Delay10TCYx(10);        // user may need to modify based on Fosc
        	CLOCK_HI;               // release clock line to float high 
        	Delay10TCYx(10);        // user may need to modify based on Fosc
      	}
  		data_out = data_out<<1;
	}			 

  	return ( 0 );                   // return with no error
}

/********************************************************************
*     Function Name:                     *
*     Return Value:     error condition status                      *
*     Parameters:       void                                        *
*     Description:      Reads the acknowledge, returns 0 if ACK ok  *
********************************************************************/
unsigned char I2CAck( void )
{
	unsigned char i;
  	CLOCK_LOW;                     // set clock pin to output to drive low
	
  	DATA1_HI;                      // release data line to float high 
  	Delay10TCYx(10);
  	CLOCK_HI;                      // release clock line to float high
  	Delay10TCYx(10);                // 1 cycle delay

  	
 	if ( DATA1_PIN )               // error if ack = 1, slave did not ack
  	{
		/*	while(1)
			{
				PORTDbits.RD0 = 0;
				DelayMs(250);
				PORTDbits.RD0 = 1;
				DelayMs(250);
			}*/

    	return ( 1 );             // return with acknowledge error
  	}
  	else
  	{
    	return ( 0 );              // return with no error
  	}
}

/********************************************************************
*     Function Name:    void SWRestartI2C(void)                     *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      Send I2C bus restart condition.             *
********************************************************************/
void I2CReStart( void )
{
  	CLOCK_LOW;                      // set clock pin to output to drive low
  	
	DATA1_HI;                       // release data pin to float high
  	Delay10TCYx(10);
  	CLOCK_HI;                       // release clock pin to float high
  	Delay10TCYx(10);
  	DATA1_LOW;                      // set data pin output to drive low
  	Delay10TCYx(10);
}

/********************************************************************
*     Function Name:    unsigned int ReadI2C(void)                *
*     Return Value:     data byte or error condition                *
*     Parameters:       void                                        *
*     Description:      Read single byte from I2C bus.              *
********************************************************************/
unsigned char ReadI2C( void )
{
	unsigned char recv,kk;
	
Delay10TCYx(50);

	for (kk = 0; kk < 8; kk++)
  	{		
    	CLOCK_LOW;                 	// set clock pin output to drive low
    
		DATA1_HI;                  	// release data line to float high
    	Delay10TCYx(10);
    	CLOCK_HI;                  	// release clock line to float high
    	Delay10TCYx(10);

 		recv <<= 1;             	// shift composed byte by 1
	   	if ( DATA1_PIN ) recv |= 0x01;    	// set bit 0 to logic 1
  	}
		return ( recv ); 			// return with data
}

/********************************************************************
*     Function Name:    void SWStopI2C(void)                        *
*     Return Value:     void                                        *
*     Parameters:       void                                        *
*     Description:      Send I2C bus stop condition.                *
********************************************************************/
void I2CStop( void )
{
   	CLOCK_LOW;                      // set clock pin to output to drive low
	
  	DATA1_LOW;                      // set data pin output to drive low
  	Delay10TCYx(10);
  	CLOCK_HI;                       // release clock pin to float high
  	Delay10TCYx(10);
  	DATA1_HI;                       // release data pin to float high
	
	Delay10TCYx(10);
}


//********************************************* ACK ********************
void ACK(void)
{
	CLOCK_LOW;                  	// make clock pin output to drive low
	
    DATA1_LOW;                   	// make data pin output to drive low
    Delay10TCYx(10);
    CLOCK_HI;                   	// release clock line to float high 
    Delay10TCYx(10);
}

//********************************************** NACK *******************


void nACK(void)                		// initiate NOT ACK
{
	CLOCK_LOW;                  	// make clock pin output to drive low
  	
    DATA1_HI;                    	// release data line to float high 
    Delay10TCYx(10);               	// user may need to modify based on Fosc
    CLOCK_HI;                   	// release clock line to float high 
    Delay10TCYx(10);               	// user may need to modify based on Fosc
}






