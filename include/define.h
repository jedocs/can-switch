//
//The most common cause for this happening is multiple inclusions of the definitions in a .h file. 
//This frequently happens due to nesting of the .h files or the inclusion of one in multiple .c files.
//The safest way to prevent a .h file from being included multiple times is to wrap each .h file with lines something like these:
//File: mydefs.h
// #ifndef MYDEFS
// #define MYDEFS
// .
// .
// (regular .h file contents go here)
// .
// .
// #endif
// Each .h file needs to have its own unique keyword. (I generally use the source file's root name in all caps.)

//Doing this guarantees that the definitions will only be included once (when MYDEFS hasn't been defined yet) and that any further 
//nested includes of the .h file won't (because MYDEFS was defined the first time the file was included).

#include 	<delays.h>
#include	"GenericTypeDefs.h"

//#include  	<stdlib.h>
//#include 	<string.h>
#include 	<timers.h>					// Timer library functions

#include "../include/Console.h"

#define emelet
//#define foldszint

typedef enum {
    C_PRESENTATION = 0, //!< Sent by a node when they present attached sensors. This is usually done in presentation() at startup.
    C_SET = 1, //!< This message is sent from or to a sensor when a sensor value should be updated.
    C_REQ = 2, //!< Requests a variable value (usually from an actuator destined for controller).
    C_INTERNAL = 3, //!< Internal MySensors messages (also include common messages provided/generated by the library).
    C_STREAM = 4 //!< For firmware and other larger chunks of data that need to be divided into pieces.
} mysensor_command;

/// @brief Type of sensor (used when presenting sensors)

typedef enum {
    S_DOOR = 0, //!< Door sensor, V_TRIPPED, V_ARMED
    S_MOTION = 1, //!< Motion sensor, V_TRIPPED, V_ARMED
    S_SMOKE = 2, //!< Smoke sensor, V_TRIPPED, V_ARMED
    S_BINARY = 3, //!< Binary light or relay, V_STATUS, V_WATT
    S_LIGHT = 3, //!< \deprecated Same as S_BINARY, **** DEPRECATED, DO NOT USE ****
    S_DIMMER = 4, //!< Dimmable light or fan device, V_STATUS (on/off), V_PERCENTAGE (dimmer level 0-100), V_WATT
    S_COVER = 5, //!< Blinds or window cover, V_UP, V_DOWN, V_STOP, V_PERCENTAGE (open/close to a percentage)
    S_TEMP = 6, //!< Temperature sensor, V_TEMP
    S_HUM = 7, //!< Humidity sensor, V_HUM
    S_BARO = 8, //!< Barometer sensor, V_PRESSURE, V_FORECAST
    S_WIND = 9, //!< Wind sensor, V_WIND, V_GUST
    S_RAIN = 10, //!< Rain sensor, V_RAIN, V_RAINRATE
    S_UV = 11, //!< Uv sensor, V_UV
    S_WEIGHT = 12, //!< Personal scale sensor, V_WEIGHT, V_IMPEDANCE
    S_POWER = 13, //!< Power meter, V_WATT, V_KWH, V_VAR, V_VA, V_POWER_FACTOR
    S_HEATER = 14, //!< Header device, V_HVAC_SETPOINT_HEAT, V_HVAC_FLOW_STATE, V_TEMP
    S_DISTANCE = 15, //!< Distance sensor, V_DISTANCE
    S_LIGHT_LEVEL = 16, //!< Light level sensor, V_LIGHT_LEVEL (uncalibrated in percentage),  V_LEVEL (light level in lux)
    S_ARDUINO_NODE = 17, //!< Used (internally) for presenting a non-repeating Arduino node
    S_ARDUINO_REPEATER_NODE = 18, //!< Used (internally) for presenting a repeating Arduino node
    S_LOCK = 19, //!< Lock device, V_LOCK_STATUS
    S_IR = 20, //!< IR device, V_IR_SEND, V_IR_RECEIVE
    S_WATER = 21, //!< Water meter, V_FLOW, V_VOLUME
    S_AIR_QUALITY = 22, //!< Air quality sensor, V_LEVEL
    S_CUSTOM = 23, //!< Custom sensor
    S_DUST = 24, //!< Dust sensor, V_LEVEL
    S_SCENE_CONTROLLER = 25, //!< Scene controller device, V_SCENE_ON, V_SCENE_OFF.
    S_RGB_LIGHT = 26, //!< RGB light. Send color component data using V_RGB. Also supports V_WATT
    S_RGBW_LIGHT = 27, //!< RGB light with an additional White component. Send data using V_RGBW. Also supports V_WATT
    S_COLOR_SENSOR = 28, //!< Color sensor, send color information using V_RGB
    S_HVAC = 29, //!< Thermostat/HVAC device. V_HVAC_SETPOINT_HEAT, V_HVAC_SETPOINT_COLD, V_HVAC_FLOW_STATE, V_HVAC_FLOW_MODE, V_TEMP
    S_MULTIMETER = 30, //!< Multimeter device, V_VOLTAGE, V_CURRENT, V_IMPEDANCE
    S_SPRINKLER = 31, //!< Sprinkler, V_STATUS (turn on/off), V_TRIPPED (if fire detecting device)
    S_WATER_LEAK = 32, //!< Water leak sensor, V_TRIPPED, V_ARMED
    S_SOUND = 33, //!< Sound sensor, V_TRIPPED, V_ARMED, V_LEVEL (sound level in dB)
    S_VIBRATION = 34, //!< Vibration sensor, V_TRIPPED, V_ARMED, V_LEVEL (vibration in Hz)
    S_MOISTURE = 35, //!< Moisture sensor, V_TRIPPED, V_ARMED, V_LEVEL (water content or moisture in percentage?)
    S_INFO = 36, //!< LCD text device / Simple information device on controller, V_TEXT
    S_GAS = 37, //!< Gas meter, V_FLOW, V_VOLUME
    S_GPS = 38, //!< GPS Sensor, V_POSITION
    S_WATER_QUALITY = 39 //!< V_TEMP, V_PH, V_ORP, V_EC, V_STATUS
} mysensor_sensor;

/// @brief Type of sensor data (for set/req/ack messages)

typedef enum {
    V_TEMP = 0, //!< S_TEMP. Temperature S_TEMP, S_HEATER, S_HVAC
    V_HUM = 1, //!< S_HUM. Humidity
    V_STATUS = 2, //!< S_BINARY, S_DIMMER, S_SPRINKLER, S_HVAC, S_HEATER. Used for setting/reporting binary (on/off) status. 1=on, 0=off
    V_LIGHT = 2, //!< \deprecated Same as V_STATUS, **** DEPRECATED, DO NOT USE ****
    V_PERCENTAGE = 3, //!< S_DIMMER. Used for sending a percentage value 0-100 (%).
    V_DIMMER = 3, //!< \deprecated Same as V_PERCENTAGE, **** DEPRECATED, DO NOT USE ****
    V_PRESSURE = 4, //!< S_BARO. Atmospheric Pressure
    V_FORECAST = 5, //!< S_BARO. Whether forecast. string of "stable", "sunny", "cloudy", "unstable", "thunderstorm" or "unknown"
    V_RAIN = 6, //!< S_RAIN. Amount of rain
    V_RAINRATE = 7, //!< S_RAIN. Rate of rain
    V_WIND = 8, //!< S_WIND. Wind speed
    V_GUST = 9, //!< S_WIND. Gust
    V_DIRECTION = 10, //!< S_WIND. Wind direction 0-360 (degrees)
    V_UV = 11, //!< S_UV. UV light level
    V_WEIGHT = 12, //!< S_WEIGHT. Weight(for scales etc)
    V_DISTANCE = 13, //!< S_DISTANCE. Distance
    V_IMPEDANCE = 14, //!< S_MULTIMETER, S_WEIGHT. Impedance value
    V_ARMED = 15, //!< S_DOOR, S_MOTION, S_SMOKE, S_SPRINKLER. Armed status of a security sensor. 1 = Armed, 0 = Bypassed
    V_TRIPPED = 16, //!< S_DOOR, S_MOTION, S_SMOKE, S_SPRINKLER, S_WATER_LEAK, S_SOUND, S_VIBRATION, S_MOISTURE. Tripped status of a security sensor. 1 = Tripped, 0
    V_WATT = 17, //!< S_POWER, S_BINARY, S_DIMMER, S_RGB_LIGHT, S_RGBW_LIGHT. Watt value for power meters
    V_KWH = 18, //!< S_POWER. Accumulated number of KWH for a power meter
    V_SCENE_ON = 19, //!< S_SCENE_CONTROLLER. Turn on a scene
    V_SCENE_OFF = 20, //!< S_SCENE_CONTROLLER. Turn of a scene
    V_HVAC_FLOW_STATE = 21, //!< S_HEATER, S_HVAC. HVAC flow state ("Off", "HeatOn", "CoolOn", or "AutoChangeOver")
    V_HEATER = 21, //!< \deprecated Same as V_HVAC_FLOW_STATE, **** DEPRECATED, DO NOT USE ****
    V_HVAC_SPEED = 22, //!< S_HVAC, S_HEATER. HVAC/Heater fan speed ("Min", "Normal", "Max", "Auto")
    V_LIGHT_LEVEL = 23, //!< S_LIGHT_LEVEL. Uncalibrated light level. 0-100%. Use V_LEVEL for light level in lux
    V_VAR1 = 24, //!< VAR1
    V_VAR2 = 25, //!< VAR2
    V_VAR3 = 26, //!< VAR3
    V_VAR4 = 27, //!< VAR4
    V_VAR5 = 28, //!< VAR5
    V_UP = 29, //!< S_COVER. Window covering. Up
    V_DOWN = 30, //!< S_COVER. Window covering. Down
    V_STOP = 31, //!< S_COVER. Window covering. Stop
    V_IR_SEND = 32, //!< S_IR. Send out an IR-command
    V_IR_RECEIVE = 33, //!< S_IR. This message contains a received IR-command
    V_FLOW = 34, //!< S_WATER. Flow of water (in meter)
    V_VOLUME = 35, //!< S_WATER. Water volume
    V_LOCK_STATUS = 36, //!< S_LOCK. Set or get lock status. 1=Locked, 0=Unlocked
    V_LEVEL = 37, //!< S_DUST, S_AIR_QUALITY, S_SOUND (dB), S_VIBRATION (hz), S_LIGHT_LEVEL (lux)
    V_VOLTAGE = 38, //!< S_MULTIMETER
    V_CURRENT = 39, //!< S_MULTIMETER
    V_RGB = 40, //!< S_RGB_LIGHT, S_COLOR_SENSOR. Sent as ASCII hex: RRGGBB (RR=red, GG=green, BB=blue component)
    V_RGBW = 41, //!< S_RGBW_LIGHT. Sent as ASCII hex: RRGGBBWW (WW=white component)
    V_ID = 42, //!< Used for sending in sensors hardware ids (i.e. OneWire DS1820b).
    V_UNIT_PREFIX = 43, //!< Allows sensors to send in a string representing the unit prefix to be displayed in GUI, not parsed by controller! E.g. cm, m, km, inch.
    V_HVAC_SETPOINT_COOL = 44, //!< S_HVAC. HVAC cool setpoint (Integer between 0-100)
    V_HVAC_SETPOINT_HEAT = 45, //!< S_HEATER, S_HVAC. HVAC/Heater setpoint (Integer between 0-100)
    V_HVAC_FLOW_MODE = 46, //!< S_HVAC. Flow mode for HVAC ("Auto", "ContinuousOn", "PeriodicOn")
    V_TEXT = 47, //!< S_INFO. Text message to display on LCD or controller device
    V_CUSTOM = 48, //!< Custom messages used for controller/inter node specific commands, preferably using S_CUSTOM device type.
    V_POSITION = 49, //!< GPS position and altitude. Payload: latitude;longitude;altitude(m). E.g. "55.722526;13.017972;18"
    V_IR_RECORD = 50, //!< Record IR codes S_IR for playback
    V_PH = 51, //!< S_WATER_QUALITY, water PH
    V_ORP = 52, //!< S_WATER_QUALITY, water ORP : redox potential in mV
    V_EC = 53, //!< S_WATER_QUALITY, water electric conductivity μS/cm (microSiemens/cm)
    V_VAR = 54, //!< S_POWER, Reactive power: volt-ampere reactive (var)
    V_VA = 55, //!< S_POWER, Apparent power: volt-ampere (VA)
    V_POWER_FACTOR = 56 //!< S_POWER, Ratio of real power to apparent power: floating point value in the range [-1,..,1]
} mysensor_data;


/// @brief Type of internal messages (for internal messages)

typedef enum {
    I_BATTERY_LEVEL = 0, //!< Battery level
    I_TIME = 1, //!< Time
    I_VERSION = 2, //!< Version
    I_ID_REQUEST = 3, //!< ID request
    I_ID_RESPONSE = 4, //!< ID response
    I_INCLUSION_MODE = 5, //!< Inclusion mode
    I_CONFIG = 6, //!< Config
    I_FIND_PARENT = 7, //!< Find parent
    I_FIND_PARENT_RESPONSE = 8, //!< Find parent response
    I_LOG_MESSAGE = 9, //!< Log message
    I_CHILDREN = 10, //!< Children
    I_SKETCH_NAME = 11, //!< Sketch name
    I_SKETCH_VERSION = 12, //!< Sketch version
    I_REBOOT = 13, //!< Reboot request
    I_GATEWAY_READY = 14, //!< Gateway ready
    I_SIGNING_PRESENTATION = 15, //!< Provides signing related preferences (first byte is preference version)
    I_NONCE_REQUEST = 16, //!< Request for a nonce
    I_NONCE_RESPONSE = 17, //!< Payload is nonce data
    I_HEARTBEAT = 18, //!< Heartbeat request
    I_PRESENTATION = 19, //!< Presentation message
    I_DISCOVER = 20, //!< Discover request
    I_DISCOVER_RESPONSE = 21, //!< Discover response
    I_HEARTBEAT_RESPONSE = 22, //!< Heartbeat response
    I_LOCKED = 23, //!< Node is locked (reason in string-payload)
    I_PING = 24, //!< Ping sent to node, payload incremental hop counter
    I_PONG = 25, //!< In return to ping, sent back to sender, payload incremental hop counter
    I_REGISTRATION_REQUEST = 26, //!< Register request to GW
    I_REGISTRATION_RESPONSE = 27, //!< Register response from GW
    I_DEBUG = 28 //!< Debug message
} mysensor_internal;


/// @brief Type of data stream  (for streamed message)

typedef enum {
    ST_FIRMWARE_CONFIG_REQUEST = 0, //!< Request new FW, payload contains current FW details
    ST_FIRMWARE_CONFIG_RESPONSE = 1, //!< New FW details to initiate OTA FW update
    ST_FIRMWARE_REQUEST = 2, //!< Request FW block
    ST_FIRMWARE_RESPONSE = 3, //!< Response FW block
    ST_SOUND = 4, //!< Sound
    ST_IMAGE = 5 //!< Image
} mysensor_stream;

/// @brief Type of payload

typedef enum {
    P_STRING = 0, //!< Payload type is string
    P_BYTE = 1, //!< Payload type is byte
    P_INT16 = 2, //!< Payload type is INT16
    P_UINT16 = 3, //!< Payload type is UINT16
    P_LONG32 = 4, //!< Payload type is INT32
    P_ULONG32 = 5, //!< Payload type is UINT32
    P_CUSTOM = 6, //!< Payload type is binary
    P_FLOAT32 = 7 //!< Payload type is float32
} mysensor_payload;


#if defined(foldszint)	
#define NODEID 10
#elif defined (emelet)
#define NODEID 20
#else
#endif			

#define BROADCASTID 255

#define CLOCK_FREQ          16000000
#define GetInstructionClock()   (CLOCK_FREQ / 4)
//#define ENABLE_CONSOLE
#define ENABLE_CAN

#define TRISB2 TRISBbits.TRISB2
#define TRISB3 TRISBbits.TRISB3
#define TXB0REQ TXB0CONbits.TXREQ
#define RXB0FUL RXB0CONbits.RXFUL
#define RXB0RTRRO RXB0CONbits.RXRTRRO

#define RXB0IF PIR3bits.RXB0IF
#define RXB1IF PIR3bits.RXB1IF
#define TXB0IF PIR3bits.TXB0IF
#define TXB1IF PIR3bits.TXB1IF
#define TXB2IF PIR3bits.TXB2IF
#define ERRIF PIR3bits.ERRIF
#define WAKIF PIR3bits.WAKIF

#define RXB0IE PIE3bits.RXB0IE
#define RXB1IE PIE3bits.RXB1IE
#define TXB0IE PIE3bits.TXB0IE
#define TXB1IE PIE3bits.TXB1IE
#define TXB2IE PIE3bits.TXB2IE
#define ERRIE PIE3bits.ERRIE
#define WAKIE PIE3bits.WAKIE


//*************** CAN ***********************
#define CONFIG_MODE 0x9F
#define LISTEN_MODE 0x7F
#define LOOPBACK_MODE 0x5F
#define DISABLE_MODE 0x3F
#define NORMAL_MODE 0x1F
#define MODE_MASK 0xE0

#define NoInterrupt 0x00
#define ErrorInterrupt 0x02
#define TXB2Interrupt 0x04
#define TXB1Interrupt 0x06
#define TXB0Interrupt 0x08
#define RXB1Interrupt 0x0A
#define RXB0Interrupt 0x0C
#define WakeUpInterrupt 0x0E

//100Kbps prop 3 sjw 1 phase1 6 phase2 6

#define BAUD_RATE_PRESC 5
#define SJW_TIME 1
#define SAMPLES 1
#define PROP_TIME 3
#define PH_SEG_1 6
#define PH_SEG_2 6
#define CAN_CONFIG_1 BAUD_RATE_PRESC-1|(SJW_TIME-1<<6)
#if SAMPLES == 1
#define CAN_CONFIG_2 0x80|(PH_SEG_1-1<<3)|(PROP_TIME-1)
#elif SAMPLES == 3
#define CAN_CONFIG_2 0xC0|(PH_SEG_1-1<<3)|(PROP_TIME-1)
#else
#error "Number of samples is out of range"
#endif
#define CAN_CONFIG_3 PH_SEG_2-1

//Size of RX buffer (14 bytes per buffer entry) has to be greater than or equal to 2
#define RXBUF 4
//Size of TX buffer (14 bytes per buffer entry) has to be greater than or equal to 2
#define TXBUF 4

#if TXBUF < 2 || RXBUF < 2
#error "The RXbuffer and TXbuffer has to greater than or equal to 2"
#endif


/*************************************************************
MCP23X08.h

 **************************************************************/
#define IODIR   	0x00
#define IPOL   	  	0x01
#define GPINTEN   	0x02
#define DEFVAL    	0x03
#define INTCON 		0x04
#define IOCON		0x05
#define GPPU  		0x06
#define INTF 		0x07
#define INTCAP 		0x08
#define GPIO  		0x09
#define OLAT   		0x0A

#define OUT1_ADDR  	0b01000000    
#define OUT2_ADDR  	0b01000010

/*************************************************************
MCP23X17.h

#defines assume IOCON.BANK = 0
 **************************************************************/
#define IODIRA   	0x00
#define IODIRB   	0x01
#define IPOLA    	0x02
#define IPOLB    	0x03
#define GPINTENA 	0x04
#define GPINTENB 	0x05
#define DEFVALA  	0x06
#define DEFVALB  	0x07
#define INTCONA  	0x08
#define INTCONB  	0x09
#define IOCONA   	0x0A
#define IOCONB   	0x0B
#define GPPUA    	0x0C
#define GPPUB    	0x0D
#define INTFA    	0x0E
#define INTFB    	0x0F
#define INTCAPA  	0x010
#define INTCAPB  	0x011
#define GPIOA    	0x012
#define GPIOB    	0x013
#define OLATA    	0x014
#define OLATB    	0x015

#define IN1_ADDR  	0b01001100    
#define IN2_ADDR  	0b01001110

#define RdCmd 1
#define WrtCmd 0

//*************** I2C defs *************************************************

#define  DATA1_LOW   TRISCbits.TRISC1 = 0; // define macro for data pin output
#define  DATA1_HI    TRISCbits.TRISC1 = 1; // define macro for data pin input
#define  DATA1_LAT   LATCbits.LATC1        // define macro for data pin latch
#define  DATA1_PIN   PORTCbits.RC1         // define macro for data pin

#define  DATA2_LOW   TRISCbits.TRISC2 = 0; // define macro for data pin output
#define  DATA2_HI    TRISCbits.TRISC2 = 1; // define macro for data pin input
#define  DATA2_LAT   LATCbits.LATC2        // define macro for data pin latch
#define  DATA2_PIN   PORTCbits.RC2         // define macro for data pin


#define  CLOCK_LOW  TRISCbits.TRISC0 = 0; // define macro for clock pin output
#define  CLOCK_HI   TRISCbits.TRISC0 = 1; // define macro for clock pin input
#define  SCLK_LAT   LATCbits.LATC0        // define macro for clock pin latch
#define  SCLK_PIN   PORTCbits.RC0         // define macro for clock pin

//******************* uC IO defs ***********************************************

#define AI0		PORTAbits.RA0
#define	AI1		PORTAbits.RA1		
#define	AI2		PORTAbits.RA2
#define AI3		PORTAbits.RA3
#define DE		PORTAbits.RA4
#define AI4		PORTAbits.RA5

#define AI5		PORTEbits.RE0
#define	AI6		PORTEbits.RE1		
#define	AI7		PORTEbits.RE2

#if defined(emelet)

#define RE		PORTBbits.RB6
#define IN1_INT PORTBbits.RB4
#define IN2_INT PORTBbits.RB5

#elif defined(foldszint)

#define RE		PORTDbits.RD5
#define IN1_INT PORTDbits.RD6
#define IN2_INT PORTDbits.RD7

#define R_pwr_pin	PORTBbits.RB6
#define S_pwr_pin   PORTBbits.RB5
#define T_pwr_pin   PORTBbits.RB4

#endif

#define	SCL		PORTCbits.RC0		
#define SDA1	PORTCbits.RC1
#define SDA2	PORTCbits.RC2

#define DI1		PORTDbits.RD4
//#define DI2		PORTDbits.RD5
//#define DI3		PORTDbits.RD6
//#define DI4		PORTDbits.RD7

#if defined(emelet)

#define RELAY	PORTDbits.RD0

#define	na1     OUT1_2.bits.bit7 
#define gyerek	OUT1_2.bits.bit6
#define	erk     OUT1_2.bits.bit5   
#define lepcso	OUT1_2.bits.bit4
#define	tukor1	OUT1_2.bits.bit3  
#define tukor2	OUT1_2.bits.bit2
#define	spare11	OUT1_2.bits.bit1  
#define spare12	OUT1_2.bits.bit0

#define	na2     OUT1_2.bits.bit15
#define dolgozo	OUT1_2.bits.bit14
#define	halo	OUT1_2.bits.bit13  
#define furdo	OUT1_2.bits.bit12
#define	wc      OUT1_2.bits.bit11  
#define hazt	OUT1_2.bits.bit10
#define	gyerek_disz	OUT1_2.bits.bit9   
#define erk_disz	OUT1_2.bits.bit8

#define	aaa		OUT3_4.bits.bit7
#define bbb     OUT3_4.bits.bit6
#define	ccc		OUT3_4.bits.bit5   
#define ddd     OUT3_4.bits.bit4
#define	eee		OUT3_4.bits.bit3  
#define fff 	OUT3_4.bits.bit2
#define	ggg		OUT3_4.bits.bit1  
#define hhh     OUT3_4.bits.bit0

#define	iii		OUT3_4.bits.bit15
#define jjj     OUT3_4.bits.bit14
#define	kkk     OUT3_4.bits.bit13  
#define lll	 	OUT3_4.bits.bit12
#define	mmm		OUT3_4.bits.bit11  
#define nnn   	OUT3_4.bits.bit10
#define	ooo		OUT3_4.bits.bit9   
#define ppp     OUT3_4.bits.bit8


#define	k_gyerek_bal 		exp_in1.InData.bits.bit8
#define	k_erk			exp_in1.InData.bits.bit9
#define	k_lepcso_halo_jobb	exp_in1.InData.bits.bit10
#define	k_tukor1		exp_in1.InData.bits.bit11
#define	k_tukor2		exp_in1.InData.bits.bit12
#define	k_11b			exp_in1.InData.bits.bit13
#define	k_12b			exp_in1.InData.bits.bit14
#define	k_13b			exp_in1.InData.bits.bit15

#define	k_dolgozo_gyerek_jobb	exp_in2.InData.bits.bit8
#define	k_halo_jobb		exp_in2.InData.bits.bit9  
#define	k_lepcso_furdo_jobb	exp_in2.InData.bits.bit10
#define	k_wc			exp_in2.InData.bits.bit11
#define	k_hazt			exp_in2.InData.bits.bit12
#define	k21b			exp_in2.InData.bits.bit13
#define	k22b			exp_in2.InData.bits.bit14
#define	k23b			exp_in2.InData.bits.bit15

#define	k_lepcso_furdo_bal	exp_in2.InData.bits.bit7
#define	k_lepcso_lent_jobb	exp_in2.InData.bits.bit6
#define	k_dolgozo_erk_jobb	exp_in2.InData.bits.bit5
#define	k_dolgozo_gyerek_bal	exp_in2.InData.bits.bit4
#define	k_halo_bal		exp_in2.InData.bits.bit3
#define	k_21a           exp_in2.InData.bits.bit2	
#define	k_22a			exp_in2.InData.bits.bit1
#define	k_23a			exp_in2.InData.bits.bit0

#define	k_dolgozo_erk_bal	exp_in1.InData.bits.bit7
#define	k_lepcso_halo_bal	exp_in1.InData.bits.bit6
#define	k_gyerek_jobb		exp_in1.InData.bits.bit5
#define	k_erk_jobb			exp_in1.InData.bits.bit4
#define	k_15a			exp_in1.InData.bits.bit3
#define	k_11a			exp_in1.InData.bits.bit2
#define	k_12a			exp_in1.InData.bits.bit1
#define	k_13a			exp_in1.InData.bits.bit0

#elif defined(foldszint) 

#define	na1         OUT1_2.bits.bit7
#define nappali1	OUT1_2.bits.bit6
#define	konyha1		OUT1_2.bits.bit5   
#define szelfogo	OUT1_2.bits.bit4
#define	zuhany 		OUT1_2.bits.bit3  //K15
#define K15         OUT1_2.bits.bit2    //zuhany
#define	kamra		OUT1_2.bits.bit1
#define hatsoajto_kint	OUT1_2.bits.bit0

#define	na2         OUT1_2.bits.bit15
#define nappali2	OUT1_2.bits.bit14
#define	konyha2 	OUT1_2.bits.bit13  
#define eloter	 	OUT1_2.bits.bit12
#define	folyoso		OUT1_2.bits.bit11  
#define tukor   	OUT1_2.bits.bit10
#define	muhely		OUT1_2.bits.bit9
#define elsoajto_kint	OUT1_2.bits.bit8

#define	aaa		OUT3_4.bits.bit7
#define bbb     OUT3_4.bits.bit6
#define	ccc		OUT3_4.bits.bit5   
#define ddd     OUT3_4.bits.bit4
#define	eee		OUT3_4.bits.bit3  
#define fff 	OUT3_4.bits.bit2
#define	ggg		OUT3_4.bits.bit1  
#define hhh     OUT3_4.bits.bit0

#define	iii		OUT3_4.bits.bit15
#define jjj     OUT3_4.bits.bit14
#define	kkk     OUT3_4.bits.bit13  
#define lll	 	OUT3_4.bits.bit12
#define	mmm		OUT3_4.bits.bit11  
#define nnn   	OUT3_4.bits.bit10
#define	ooo		OUT3_4.bits.bit9   
#define ppp     OUT3_4.bits.bit8

#define	k_nappali1 	exp_in1.InData.bits.bit8
#define	k_nappali3	exp_in1.InData.bits.bit9
#define	k_bej_ajto_bal	exp_in1.InData.bits.bit10   //kamra
#define	k_h_ajto_bal	exp_in1.InData.bits.bit11
#define	k_zuhany	exp_in1.InData.bits.bit12   //ha bal
#define	k_kamra     	exp_in1.InData.bits.bit13
#define	k_konyha_bal	exp_in1.InData.bits.bit14
#define	k_lll		exp_in1.InData.bits.bit15

#define	k_nappali2      exp_in2.InData.bits.bit8
#define	k_nappali4      exp_in2.InData.bits.bit9
#define	k_bej_ajto_jobb	exp_in2.InData.bits.bit10   //muhely
#define	k_h_ajto_jobb	exp_in2.InData.bits.bit11
#define	k_tukor         exp_in2.InData.bits.bit12   //ha jobb
#define	k_muhely_jobb	exp_in2.InData.bits.bit13
#define	k_konyha_jobb	exp_in2.InData.bits.bit14
#define	k_lepcso_bal	exp_in2.InData.bits.bit15

#define	k_hatso_kulso_ajto	exp_in2.InData.bits.bit7 //ok
#define	k_elso_kulso_ajto	exp_in2.InData.bits.bit6    //ok
#define	k_24a			exp_in2.InData.bits.bit5
#define	k_25a			exp_in2.InData.bits.bit4
#define	k_26a			exp_in2.InData.bits.bit3
#define	k_21a			exp_in2.InData.bits.bit2
#define	k_22a			exp_in2.InData.bits.bit1
#define	k_23a			exp_in2.InData.bits.bit0

#define	k_18a		exp_in1.InData.bits.bit7
#define	k_16a		exp_in1.InData.bits.bit6
#define	k_17a		exp_in1.InData.bits.bit5
#define	k_14a		exp_in1.InData.bits.bit4
#define	k_15a		exp_in1.InData.bits.bit3
#define	k_11a		exp_in1.InData.bits.bit2
#define	k_12a		exp_in1.InData.bits.bit1
#define	k_13a		exp_in1.InData.bits.bit0


#endif

#if !defined(emelet) && !defined(foldszint)
#error "Az emelet nincs defini�lva"
#endif

#if defined(emelet) && defined(foldszint)
#error "Mindk�t emelet defini�lva van"
#endif

/*****   COMMON FUNCTION PROTOTYPES   *****/
void Setup(void); // Configures peripherals and variables
void Init_Exp(void);

void isr(void);
void isrhandler(void); // Located at high interrupt vector

void putrsUSART(const rom char *data); // Writes a string from ROM to the USART
void putsUSART(char *data); // Writes a string from RAM to the USART

void Delay10us(UINT32 tenMicroSecondCounter);
void DelayMs(UINT16 ms);

void updateOutput(void);

void I2CStart(void); // Generate bus start condition
void I2CReStart(void);
void I2CStop(void); // Generate bus stop condition
unsigned char I2CAck(void);
void nACK(void);
void ACK(void);
unsigned char ReadI2C(void);
unsigned char WriteI2C(unsigned char data_out);
void I2CWriteByte(unsigned char addr, unsigned char reg, unsigned char data);
unsigned char I2CReadByte(unsigned char addr, unsigned char reg);
unsigned int I2CReadWord(unsigned char addr, unsigned char reg);

char readEEPROM(int addr);
void writeEEPROM(int addr, char data);
void readStringEEPROM(int addr, char string[38], char final_character);
void writeStringEEPROM(int addr, char string[38]);

char CANRXMessageIsPending(void);
struct CANMessage CANGet(void);
void CANISR(void);
char CAN_init(unsigned char, unsigned char, unsigned char);
char CANPut(struct CANMessage Message);
void CANGetMessage(void);
char CANPutMessage(void);
void CANRx(void);

struct CANMessage {
    unsigned char NODE_ID;
    unsigned char CHILD_ID;
    unsigned char MSG_TYP;
    unsigned char SUBTYPE;
    unsigned char Data[8];
    unsigned char NoOfBytes;
    unsigned char Priority;
    unsigned ACK : 1;
    unsigned Remote : 1;
};

union Long_Char {
    unsigned long Long;
    char Char [4];
};

#ifndef BIT
#define BIT(n)                  ( 1<<(n) ) //!< Bit indexing macro
#endif
#define BIT_MASK(len)           ( BIT(len)-1 ) //!< Create a bitmask of length 'len'
#define BF_MASK(start, len)     ( BIT_MASK(len)<<(start) ) //!< Create a bitfield mask of length starting at bit 'start'

#define BF_PREP(x, start, len)  ( ((x)&BIT_MASK(len)) << (start) ) //!< Prepare a bitmask for insertion or combining
#define BF_GET(y, start, len)   ( ((y)>>(start)) & BIT_MASK(len) ) //!< Extract a bitfield of length 'len' starting at bit 'start' from 'y'
#define BF_SET(y, x, start, len)    ( y= ((y) &~ BF_MASK(start, len)) | BF_PREP(x, start, len) ) //!< Insert a new bitfield value 'x' into 'y'

// Getters/setters for special bit fields in header
#define mSetVersion(_msg,_version) BF_SET(_msg.version_length, _version, 0, 2) //!< Set version field
#define mGetVersion(_msg) ((uint8_t)BF_GET(_msg.version_length, 0, 2)) //!< Get version field

#define mSetSigned(_msg,_signed) BF_SET(_msg.version_length, _signed, 2, 1) //!< Set signed field
#define mGetSigned(_msg) ((bool)BF_GET(_msg.version_length, 2, 1)) //!< Get versignedsion field

#define mSetLength(_msg,_length) BF_SET(_msg.version_length, _length, 3, 5) //!< Set length field
#define mGetLength(_msg) ((uint8_t)BF_GET(_msg.version_length, 3, 5)) //!< Get length field

#define mSetCommand(_msg,_command) BF_SET(_msg.command_ack_payload, _command, 0, 3) //!< Set command field
#define mGetCommand(_msg) ((uint8_t)BF_GET(_msg.command_ack_payload, 0, 3)) //!< Get command field

#define mSetRequestAck(_msg,_rack) BF_SET(_msg.command_ack_payload, _rack, 3, 1) //!< Set ack-request field
#define mGetRequestAck(_msg) ((bool)BF_GET(_msg.command_ack_payload, 3, 1)) //!< Get  ack-request field

#define mSetAck(_msg,_ackMsg) BF_SET(_msg.command_ack_payload, _ackMsg, 4, 1) //!< Set ack field
#define mGetAck(_msg) ((bool)BF_GET(_msg.command_ack_payload, 4, 1)) //!< Get ack field

#define mSetPayloadType(_msg, _pt) BF_SET(_msg.command_ack_payload, _pt, 5, 3) //!< Set payload type field
#define mGetPayloadType(_msg) ((uint8_t)BF_GET(_msg.command_ack_payload, 5, 3)) //!< Get payload type field


// internal access for special fields
#define miGetCommand() ((uint8_t)BF_GET(command_ack_payload, 0, 3)) //!< Internal getter for command field

#define miSetLength(_length) BF_SET(version_length, _length, 3, 5) //!< Internal setter for length field
#define miGetLength() ((uint8_t)BF_GET(version_length, 3, 5)) //!< Internal getter for length field

#define miSetRequestAck(_rack) BF_SET(command_ack_payload, _rack, 3, 1) //!< Internal setter for ack-request field
#define miGetRequestAck() ((bool)BF_GET(command_ack_payload, 3, 1)) //!< Internal getter for ack-request field

#define miSetAck(_ack) BF_SET(command_ack_payload, _ack, 4, 1) //!< Internal setter for ack field
#define miGetAck() ((bool)BF_GET(command_ack_payload, 4, 1)) //!< Internal getter for ack field

#define miSetPayloadType(_pt) BF_SET(command_ack_payload, _pt, 5, 3) //!< Internal setter for payload type field
#define miGetPayloadType() (uint8_t)BF_GET(command_ack_payload, 5, 3) //!< Internal getter for payload type field

#define MY_GATEWAY_MAX_RECEIVE_LENGTH   31



