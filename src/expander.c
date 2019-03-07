#include	"../include/define.h"

unsigned char x,num1,num2;

void Init_Exp(void)
{
	SCLK_LAT = 0;
	DATA1_LAT = 0;
	DATA2_LAT = 0;	


	I2CWriteByte(IN1_ADDR,IODIRA, 0xFF);		//all input
	I2CWriteByte(IN1_ADDR,IODIRB, 0xFF);		//all input
	I2CWriteByte(IN1_ADDR,GPPUA, 0xFF);			//pullup enable
	I2CWriteByte(IN1_ADDR,GPPUB, 0xFF);			//pullup enable    
    I2CWriteByte(IN1_ADDR,IOCONA, 0b01000000);	//INT pins connected internally 
	I2CWriteByte(IN1_ADDR,IOCONB, 0b01000000);	//INT pins connected internally 
    I2CWriteByte(IN1_ADDR,GPINTENA, 0xFF);		//int on change enable
	I2CWriteByte(IN1_ADDR,GPINTENB, 0xFF);		//int on change enable
    
	I2CWriteByte(IN2_ADDR,IODIRA, 0xFF);		//all input
	I2CWriteByte(IN2_ADDR,IODIRB, 0xFF);		//all input
	I2CWriteByte(IN2_ADDR,GPPUA, 0xFF);			//pullup enable
	I2CWriteByte(IN2_ADDR,GPPUB, 0xFF);			//pullup enable    
    I2CWriteByte(IN2_ADDR,IOCONA, 0b01000000);	//INT pins connected internally 
	I2CWriteByte(IN2_ADDR,IOCONB, 0b01000000);	//INT pins connected internally 
    I2CWriteByte(IN2_ADDR,GPINTENA, 0xFF);		//int on change enable
	I2CWriteByte(IN2_ADDR,GPINTENB, 0xFF);		//int on change enable

	I2CWriteByte(OUT1_ADDR,OLAT, 0xFF);			//all 1
	I2CWriteByte(OUT1_ADDR,IODIR, 0x00);		//all input

	I2CWriteByte(OUT2_ADDR,OLAT, 0xFF);			//all 1
	I2CWriteByte(OUT2_ADDR,IODIR, 0x00);		//all input
}

/*****************************************************************
	I2CWriteByte(unsigned char addr, unsigned char byte)
	Writes a byte to the 23017
*****************************************************************/
void I2CWriteByte(unsigned char addr, unsigned char reg, unsigned char data)
{
	I2CStart();
	WriteI2C( addr | WrtCmd );
	x = I2CAck();
	WriteI2C( reg );
	x = I2CAck();
	WriteI2C( data );
	x = I2CAck();
	I2CStop();
}

/*****************************************************************
	int I2CReadByte(unsigned char addr))
	Reads a byte from the MCP23X08/17	
******************************************************************/
unsigned char I2CReadByte(unsigned char addr, unsigned char reg)
{
	unsigned char num,i;

	I2CStart();
	WriteI2C( addr | WrtCmd );
	x = I2CAck();
	WriteI2C( reg );
	x = I2CAck();
	
	I2CReStart();
	WriteI2C( addr | RdCmd );
	
	x = I2CAck();

	num = ReadI2C();

	nACK();
	I2CStop();

	return(num);
}

/*****************************************************************
	int I2CReadByte(unsigned char addr))
	Reads a byte from the MCP23X08/17	
******************************************************************/
unsigned int I2CReadWord(unsigned char addr, unsigned char reg)
{
	unsigned char i;

	I2CStart();
	WriteI2C( addr | WrtCmd );
	x = I2CAck();
	WriteI2C( reg );
	x = I2CAck();
	
	I2CReStart();
	WriteI2C( addr | RdCmd );
	
	x = I2CAck();

	num1 = ReadI2C();
	ACK();
	num2 = ReadI2C();

	nACK();

	I2CStop();

	return(0);
}