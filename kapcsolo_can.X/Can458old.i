#line 1 "../src/Can458old.c"
#line 1 "../src/Can458old.c"

#line 1 "../src/../include/Can.h"

#line 3 "../src/../include/Can.h"


#line 6 "../src/../include/Can.h"
#line 7 "../src/../include/Can.h"
#line 8 "../src/../include/Can.h"
#line 9 "../src/../include/Can.h"
#line 10 "../src/../include/Can.h"
#line 11 "../src/../include/Can.h"
#line 12 "../src/../include/Can.h"
#line 13 "../src/../include/Can.h"
#line 14 "../src/../include/Can.h"
#line 15 "../src/../include/Can.h"
#line 17 "../src/../include/Can.h"
#line 19 "../src/../include/Can.h"
#line 20 "../src/../include/Can.h"
#line 21 "../src/../include/Can.h"
#line 22 "../src/../include/Can.h"
#line 23 "../src/../include/Can.h"
#line 24 "../src/../include/Can.h"
#line 25 "../src/../include/Can.h"
#line 26 "../src/../include/Can.h"
#line 27 "../src/../include/Can.h"
#line 28 "../src/../include/Can.h"
#line 29 "../src/../include/Can.h"
#line 30 "../src/../include/Can.h"



#line 34 "../src/../include/Can.h"

#line 36 "../src/../include/Can.h"

#line 38 "../src/../include/Can.h"
#line 39 "../src/../include/Can.h"



#line 43 "../src/../include/Can.h"
#line 44 "../src/../include/Can.h"



#line 48 "../src/../include/Can.h"
#line 49 "../src/../include/Can.h"
#line 50 "../src/../include/Can.h"
#line 51 "../src/../include/Can.h"







#line 59 "../src/../include/Can.h"


#line 62 "../src/../include/Can.h"

#line 64 "../src/../include/Can.h"
#line 66 "../src/../include/Can.h"
	

struct CANMessage {
	unsigned long Address;
	unsigned char Data[8];
	unsigned char NoOfBytes;
	unsigned char Priority;
	unsigned Ext:1;
	unsigned Remote:1;
};

#line 78 "../src/../include/Can.h"
#line 79 "../src/../include/Can.h"
#line 80 "../src/../include/Can.h"
#line 81 "../src/../include/Can.h"

char CANOpen(unsigned char, unsigned char, unsigned char);	
void CANISR(void);
char CANPut(struct CANMessage);
char CANRXMessageIsPending(void);
struct CANMessage CANGet(void);
void CANSetMode(unsigned char);

#line 90 "../src/../include/Can.h"

#line 2 "../src/Can458old.c"

#line 1 "../src/../include/define.h"


















#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"

#line 3 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"


#line 13 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
 

 
#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"

#line 3 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"

#line 5 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 7 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 9 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 11 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 13 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 15 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 17 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 19 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 21 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 23 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 25 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 27 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 29 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 31 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 33 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 35 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 37 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 39 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 41 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 43 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 45 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 47 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 49 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 51 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 53 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 55 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 57 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 59 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 61 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 63 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 65 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 67 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 69 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 71 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 73 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 75 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 77 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 79 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 81 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 83 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 85 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 87 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 89 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 91 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 93 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 95 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 97 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 99 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 101 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 103 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 105 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 107 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 109 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 111 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 113 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 115 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 117 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 119 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 121 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 123 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 125 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 127 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 129 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 131 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 133 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 135 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 137 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 139 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 141 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 143 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 145 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 147 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 149 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 151 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 153 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 155 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 157 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 159 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 161 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 163 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 165 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 167 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 169 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 171 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 173 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 175 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 177 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 179 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 181 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 183 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 185 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 187 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 189 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 191 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 193 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 195 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 197 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 199 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 201 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 203 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 205 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 207 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 209 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 211 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 213 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 5 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 


#line 9 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

extern volatile far  unsigned char       RXF0SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF0SIDHbits;
extern volatile far  unsigned char       RXF0SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF0SIDLbits;
extern volatile far  unsigned char       RXF0EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF0EIDHbits;
extern volatile far  unsigned char       RXF0EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF0EIDLbits;
extern volatile far  unsigned char       RXF1SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF1SIDHbits;
extern volatile far  unsigned char       RXF1SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF1SIDLbits;
extern volatile far  unsigned char       RXF1EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF1EIDHbits;
extern volatile far  unsigned char       RXF1EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF1EIDLbits;
extern volatile far  unsigned char       RXF2SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF2SIDHbits;
extern volatile far  unsigned char       RXF2SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF2SIDLbits;
extern volatile far  unsigned char       RXF2EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF2EIDHbits;
extern volatile far  unsigned char       RXF2EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF2EIDLbits;
extern volatile far  unsigned char       RXF3SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF3SIDHbits;
extern volatile far  unsigned char       RXF3SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF3SIDLbits;
extern volatile far  unsigned char       RXF3EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF3EIDHbits;
extern volatile far  unsigned char       RXF3EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF3EIDLbits;
extern volatile far  unsigned char       RXF4SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF4SIDHbits;
extern volatile far  unsigned char       RXF4SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF4SIDLbits;
extern volatile far  unsigned char       RXF4EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF4EIDHbits;
extern volatile far  unsigned char       RXF4EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF4EIDLbits;
extern volatile far  unsigned char       RXF5SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXF5SIDHbits;
extern volatile far  unsigned char       RXF5SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDEN:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXF5SIDLbits;
extern volatile far  unsigned char       RXF5EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXF5EIDHbits;
extern volatile far  unsigned char       RXF5EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXF5EIDLbits;
extern volatile far  unsigned char       RXM0SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXM0SIDHbits;
extern volatile far  unsigned char       RXM0SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :3;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXM0SIDLbits;
extern volatile far  unsigned char       RXM0EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXM0EIDHbits;
extern volatile far  unsigned char       RXM0EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXM0EIDLbits;
extern volatile far  unsigned char       RXM1SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXM1SIDHbits;
extern volatile far  unsigned char       RXM1SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :3;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXM1SIDLbits;
extern volatile far  unsigned char       RXM1EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXM1EIDHbits;
extern volatile far  unsigned char       RXM1EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXM1EIDLbits;
extern volatile far  unsigned char       TXB2CON;
extern volatile far  struct {
  unsigned TXPRI0:1;
  unsigned TXPRI1:1;
  unsigned :1;
  unsigned TXREQ:1;
  unsigned TXERR:1;
  unsigned TXLARB:1;
  unsigned TXABT:1;
} TXB2CONbits;
extern volatile far  unsigned char       TXB2SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} TXB2SIDHbits;
extern volatile far  unsigned char       TXB2SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDE:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} TXB2SIDLbits;
extern volatile far  unsigned char       TXB2EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} TXB2EIDHbits;
extern volatile far  unsigned char       TXB2EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} TXB2EIDLbits;
extern volatile far  unsigned char       TXB2DLC;
extern volatile far  struct {
  unsigned DLC0:1;
  unsigned DLC1:1;
  unsigned DLC2:1;
  unsigned DLC3:1;
  unsigned :2;
  unsigned TXRTR:1;
} TXB2DLCbits;
extern volatile far  unsigned char       TXB2D0;
extern volatile far  struct {
  unsigned TXB2D00:1;
  unsigned TXB2D01:1;
  unsigned TXB2D02:1;
  unsigned TXB2D03:1;
  unsigned TXB2D04:1;
  unsigned TXB2D05:1;
  unsigned TXB2D06:1;
  unsigned TXB2D07:1;
} TXB2D0bits;
extern volatile far  unsigned char       TXB2D1;
extern volatile far  struct {
  unsigned TXB2D10:1;
  unsigned TXB2D11:1;
  unsigned TXB2D12:1;
  unsigned TXB2D13:1;
  unsigned TXB2D14:1;
  unsigned TXB2D15:1;
  unsigned TXB2D16:1;
  unsigned TXB2D17:1;
} TXB2D1bits;
extern volatile far  unsigned char       TXB2D2;
extern volatile far  struct {
  unsigned TXB2D20:1;
  unsigned TXB2D21:1;
  unsigned TXB2D22:1;
  unsigned TXB2D23:1;
  unsigned TXB2D24:1;
  unsigned TXB2D25:1;
  unsigned TXB2D26:1;
  unsigned TXB2D27:1;
} TXB2D2bits;
extern volatile far  unsigned char       TXB2D3;
extern volatile far  struct {
  unsigned TXB2D30:1;
  unsigned TXB2D31:1;
  unsigned TXB2D32:1;
  unsigned TXB2D33:1;
  unsigned TXB2D34:1;
  unsigned TXB2D35:1;
  unsigned TXB2D36:1;
  unsigned TXB2D37:1;
} TXB2D3bits;
extern volatile far  unsigned char       TXB2D4;
extern volatile far  struct {
  unsigned TXB2D40:1;
  unsigned TXB2D41:1;
  unsigned TXB2D42:1;
  unsigned TXB2D43:1;
  unsigned TXB2D44:1;
  unsigned TXB2D45:1;
  unsigned TXB2D46:1;
  unsigned TXB2D47:1;
} TXB2D4bits;
extern volatile far  unsigned char       TXB2D5;
extern volatile far  struct {
  unsigned TXB2D50:1;
  unsigned TXB2D51:1;
  unsigned TXB2D52:1;
  unsigned TXB2D53:1;
  unsigned TXB2D54:1;
  unsigned TXB2D55:1;
  unsigned TXB2D56:1;
  unsigned TXB2D57:1;
} TXB2D5bits;
extern volatile far  unsigned char       TXB2D6;
extern volatile far  struct {
  unsigned TXB2D60:1;
  unsigned TXB2D61:1;
  unsigned TXB2D62:1;
  unsigned TXB2D63:1;
  unsigned TXB2D64:1;
  unsigned TXB2D65:1;
  unsigned TXB2D66:1;
  unsigned TXB2D67:1;
} TXB2D6bits;
extern volatile far  unsigned char       TXB2D7;
extern volatile far  struct {
  unsigned TXB2D70:1;
  unsigned TXB2D71:1;
  unsigned TXB2D72:1;
  unsigned TXB2D73:1;
  unsigned TXB2D74:1;
  unsigned TXB2D75:1;
  unsigned TXB2D76:1;
  unsigned TXB2D77:1;
} TXB2D7bits;
extern volatile far  unsigned char       CANSTATRO4;
extern volatile far  struct {
  unsigned :1;
  unsigned ICODE0:1;
  unsigned ICODE1:1;
  unsigned ICODE2:1;
  unsigned :1;
  unsigned OPMODE0:1;
  unsigned OPMODE1:1;
  unsigned OPMODE2:1;
} CANSTATRO4bits;
extern volatile far  unsigned char       TXB1CON;
extern volatile far  struct {
  unsigned TXPRI0:1;
  unsigned TXPRI1:1;
  unsigned :1;
  unsigned TXREQ:1;
  unsigned TXERR:1;
  unsigned TXLARB:1;
  unsigned TXABT:1;
} TXB1CONbits;
extern volatile far  unsigned char       TXB1SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} TXB1SIDHbits;
extern volatile far  unsigned char       TXB1SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDE:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} TXB1SIDLbits;
extern volatile far  unsigned char       TXB1EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} TXB1EIDHbits;
extern volatile far  unsigned char       TXB1EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} TXB1EIDLbits;
extern volatile far  unsigned char       TXB1DLC;
extern volatile far  struct {
  unsigned DLC0:1;
  unsigned DLC1:1;
  unsigned DLC2:1;
  unsigned DLC3:1;
  unsigned :2;
  unsigned TXRTR:1;
} TXB1DLCbits;
extern volatile far  unsigned char       TXB1D0;
extern volatile far  struct {
  unsigned TXB1D00:1;
  unsigned TXB1D01:1;
  unsigned TXB1D02:1;
  unsigned TXB1D03:1;
  unsigned TXB1D04:1;
  unsigned TXB1D05:1;
  unsigned TXB1D06:1;
  unsigned TXB1D07:1;
} TXB1D0bits;
extern volatile far  unsigned char       TXB1D1;
extern volatile far  struct {
  unsigned TXB1D10:1;
  unsigned TXB1D11:1;
  unsigned TXB1D12:1;
  unsigned TXB1D13:1;
  unsigned TXB1D14:1;
  unsigned TXB1D15:1;
  unsigned TXB1D16:1;
  unsigned TXB1D17:1;
} TXB1D1bits;
extern volatile far  unsigned char       TXB1D2;
extern volatile far  union {
  struct {
    unsigned TXB1D20:1;
    unsigned TXB1D21:1;
    unsigned TXB1D22:1;
    unsigned TXB1D23:1;
    unsigned TXB1D24:1;
    unsigned TXB1D25:1;
    unsigned TXB1D26:1;
    unsigned TXB1D27:1;
  };
  struct {
    unsigned :3;
    unsigned TBB1D23:1;
  };
} TXB1D2bits;
extern volatile far  unsigned char       TXB1D3;
extern volatile far  struct {
  unsigned TXB1D30:1;
  unsigned TXB1D31:1;
  unsigned TXB1D32:1;
  unsigned TXB1D33:1;
  unsigned TXB1D34:1;
  unsigned TXB1D35:1;
  unsigned TXB1D36:1;
  unsigned TXB1D37:1;
} TXB1D3bits;
extern volatile far  unsigned char       TXB1D4;
extern volatile far  struct {
  unsigned TXB1D40:1;
  unsigned TXB1D41:1;
  unsigned TXB1D42:1;
  unsigned TXB1D43:1;
  unsigned TXB1D44:1;
  unsigned TXB1D45:1;
  unsigned TXB1D46:1;
  unsigned TXB1D47:1;
} TXB1D4bits;
extern volatile far  unsigned char       TXB1D5;
extern volatile far  struct {
  unsigned TXB1D50:1;
  unsigned TXB1D51:1;
  unsigned TXB1D52:1;
  unsigned TXB1D53:1;
  unsigned TXB1D54:1;
  unsigned TXB1D55:1;
  unsigned TXB1D56:1;
  unsigned TXB1D57:1;
} TXB1D5bits;
extern volatile far  unsigned char       TXB1D6;
extern volatile far  struct {
  unsigned TXB1D60:1;
  unsigned TXB1D61:1;
  unsigned TXB1D62:1;
  unsigned TXB1D63:1;
  unsigned TXB1D64:1;
  unsigned TXB1D65:1;
  unsigned TXB1D66:1;
  unsigned TXB1D67:1;
} TXB1D6bits;
extern volatile far  unsigned char       TXB1D7;
extern volatile far  struct {
  unsigned TXB1D70:1;
  unsigned TXB1D71:1;
  unsigned TXB1D72:1;
  unsigned TXB1D73:1;
  unsigned TXB1D74:1;
  unsigned TXB1D75:1;
  unsigned TXB1D76:1;
  unsigned TXB1D77:1;
} TXB1D7bits;
extern volatile far  unsigned char       CANSTATRO3;
extern volatile far  struct {
  unsigned :1;
  unsigned ICODE0:1;
  unsigned ICODE1:1;
  unsigned ICODE2:1;
  unsigned :1;
  unsigned OPMODE0:1;
  unsigned OPMODE1:1;
  unsigned OPMODE2:1;
} CANSTATRO3bits;
extern volatile far  unsigned char       TXB0CON;
extern volatile far  struct {
  unsigned TXPRI0:1;
  unsigned TXPRI1:1;
  unsigned :1;
  unsigned TXREQ:1;
  unsigned TXERR:1;
  unsigned TXLARB:1;
  unsigned TXABT:1;
} TXB0CONbits;
extern volatile far  unsigned char       TXB0SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} TXB0SIDHbits;
extern volatile far  unsigned char       TXB0SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXIDE:1;
  unsigned :1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} TXB0SIDLbits;
extern volatile far  unsigned char       TXB0EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} TXB0EIDHbits;
extern volatile far  unsigned char       TXB0EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} TXB0EIDLbits;
extern volatile far  unsigned char       TXB0DLC;
extern volatile far  struct {
  unsigned DLC0:1;
  unsigned DLC1:1;
  unsigned DLC2:1;
  unsigned DLC3:1;
  unsigned :2;
  unsigned TXRTR:1;
} TXB0DLCbits;
extern volatile far  unsigned char       TXB0D0;
extern volatile far  struct {
  unsigned TXB0D00:1;
  unsigned TXB0D01:1;
  unsigned TXB0D02:1;
  unsigned TXB0D03:1;
  unsigned TXB0D04:1;
  unsigned TXB0D05:1;
  unsigned TXB0D06:1;
  unsigned TXB0D07:1;
} TXB0D0bits;
extern volatile far  unsigned char       TXB0D1;
extern volatile far  struct {
  unsigned TXB0D10:1;
  unsigned TXB0D11:1;
  unsigned TXB0D12:1;
  unsigned TXB0D13:1;
  unsigned TXB0D14:1;
  unsigned TXB0D15:1;
  unsigned TXB0D16:1;
  unsigned TXB0D17:1;
} TXB0D1bits;
extern volatile far  unsigned char       TXB0D2;
extern volatile far  struct {
  unsigned TXB0D20:1;
  unsigned TXB0D21:1;
  unsigned TXB0D22:1;
  unsigned TXB0D23:1;
  unsigned TXB0D24:1;
  unsigned TXB0D25:1;
  unsigned TXB0D26:1;
  unsigned TXB0D27:1;
} TXB0D2bits;
extern volatile far  unsigned char       TXB0D3;
extern volatile far  struct {
  unsigned TXB0D30:1;
  unsigned TXB0D31:1;
  unsigned TXB0D32:1;
  unsigned TXB0D33:1;
  unsigned TXB0D34:1;
  unsigned TXB0D35:1;
  unsigned TXB0D36:1;
  unsigned TXB0D37:1;
} TXB0D3bits;
extern volatile far  unsigned char       TXB0D4;
extern volatile far  struct {
  unsigned TXB0D40:1;
  unsigned TXB0D41:1;
  unsigned TXB0D42:1;
  unsigned TXB0D43:1;
  unsigned TXB0D44:1;
  unsigned TXB0D45:1;
  unsigned TXB0D46:1;
  unsigned TXB0D47:1;
} TXB0D4bits;
extern volatile far  unsigned char       TXB0D5;
extern volatile far  struct {
  unsigned TXB0D50:1;
  unsigned TXB0D51:1;
  unsigned TXB0D52:1;
  unsigned TXB0D53:1;
  unsigned TXB0D54:1;
  unsigned TXB0D55:1;
  unsigned TXB0D56:1;
  unsigned TXB0D57:1;
} TXB0D5bits;
extern volatile far  unsigned char       TXB0D6;
extern volatile far  struct {
  unsigned TXB0D60:1;
  unsigned TXB0D61:1;
  unsigned TXB0D62:1;
  unsigned TXB0D63:1;
  unsigned TXB0D64:1;
  unsigned TXB0D65:1;
  unsigned TXB0D66:1;
  unsigned TXB0D67:1;
} TXB0D6bits;
extern volatile far  unsigned char       TXB0D7;
extern volatile far  struct {
  unsigned TXB0D70:1;
  unsigned TXB0D71:1;
  unsigned TXB0D72:1;
  unsigned TXB0D73:1;
  unsigned TXB0D74:1;
  unsigned TXB0D75:1;
  unsigned TXB0D76:1;
  unsigned TXB0D77:1;
} TXB0D7bits;
extern volatile far  unsigned char       CANSTATRO2;
extern volatile far  struct {
  unsigned :1;
  unsigned ICODE0:1;
  unsigned ICODE1:1;
  unsigned ICODE2:1;
  unsigned :1;
  unsigned OPMODE0:1;
  unsigned OPMODE1:1;
  unsigned OPMODE2:1;
} CANSTATRO2bits;
extern volatile far  unsigned char       RXB1CON;
extern volatile far  struct {
  unsigned FILHIT0:1;
  unsigned FILHIT1:1;
  unsigned FILHIT2:1;
  unsigned RXRTRRO:1;
  unsigned :1;
  unsigned RXM0:1;
  unsigned RXM1:1;
  unsigned RXFUL:1;
} RXB1CONbits;
extern volatile far  unsigned char       RXB1SIDH;
extern volatile far  struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXB1SIDHbits;
extern volatile far  unsigned char       RXB1SIDL;
extern volatile far  struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXID:1;
  unsigned SRR:1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXB1SIDLbits;
extern volatile far  unsigned char       RXB1EIDH;
extern volatile far  struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXB1EIDHbits;
extern volatile far  unsigned char       RXB1EIDL;
extern volatile far  struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXB1EIDLbits;
extern volatile far  unsigned char       RXB1DLC;
extern volatile far  union {
  struct {
    unsigned DLC0:1;
    unsigned DLC1:1;
    unsigned DLC2:1;
    unsigned DLC3:1;
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RXRTR:1;
  };
  struct {
    unsigned :4;
    unsigned RESB0:1;
    unsigned RESB1:1;
  };
} RXB1DLCbits;
extern volatile far  unsigned char       RXB1D0;
extern volatile far  struct {
  unsigned RXB1D00:1;
  unsigned RXB1D01:1;
  unsigned RXB1D02:1;
  unsigned RXB1D03:1;
  unsigned RXB1D04:1;
  unsigned RXB1D05:1;
  unsigned RXB1D06:1;
  unsigned RXB1D07:1;
} RXB1D0bits;
extern volatile far  unsigned char       RXB1D1;
extern volatile far  struct {
  unsigned RXB1D10:1;
  unsigned RXB1D11:1;
  unsigned RXB1D12:1;
  unsigned RXB1D13:1;
  unsigned RXB1D14:1;
  unsigned RXB1D15:1;
  unsigned RXB1D16:1;
  unsigned RXB1D17:1;
} RXB1D1bits;
extern volatile far  unsigned char       RXB1D2;
extern volatile far  struct {
  unsigned RXB1D20:1;
  unsigned RXB1D21:1;
  unsigned RXB1D22:1;
  unsigned RXB1D23:1;
  unsigned RXB1D24:1;
  unsigned RXB1D25:1;
  unsigned RXB1D26:1;
  unsigned RXB1D27:1;
} RXB1D2bits;
extern volatile far  unsigned char       RXB1D3;
extern volatile far  struct {
  unsigned RXB1D30:1;
  unsigned RXB1D31:1;
  unsigned RXB1D32:1;
  unsigned RXB1D33:1;
  unsigned RXB1D34:1;
  unsigned RXB1D35:1;
  unsigned RXB1D36:1;
  unsigned RXB1D37:1;
} RXB1D3bits;
extern volatile far  unsigned char       RXB1D4;
extern volatile far  struct {
  unsigned RXB1D40:1;
  unsigned RXB1D41:1;
  unsigned RXB1D42:1;
  unsigned RXB1D43:1;
  unsigned RXB1D44:1;
  unsigned RXB1D45:1;
  unsigned RXB1D46:1;
  unsigned RXB1D47:1;
} RXB1D4bits;
extern volatile far  unsigned char       RXB1D5;
extern volatile far  struct {
  unsigned RXB1D50:1;
  unsigned RXB1D51:1;
  unsigned RXB1D52:1;
  unsigned RXB1D53:1;
  unsigned RXB1D54:1;
  unsigned RXB1D55:1;
  unsigned RXB1D56:1;
  unsigned RXB1D57:1;
} RXB1D5bits;
extern volatile far  unsigned char       RXB1D6;
extern volatile far  struct {
  unsigned RXB1D60:1;
  unsigned RXB1D61:1;
  unsigned RXB1D62:1;
  unsigned RXB1D63:1;
  unsigned RXB1D64:1;
  unsigned RXB1D65:1;
  unsigned RXB1D66:1;
  unsigned RXB1D67:1;
} RXB1D6bits;
extern volatile far  unsigned char       RXB1D7;
extern volatile far  struct {
  unsigned RXB1D70:1;
  unsigned RXB1D71:1;
  unsigned RXB1D72:1;
  unsigned RXB1D73:1;
  unsigned RXB1D74:1;
  unsigned RXB1D75:1;
  unsigned RXB1D76:1;
  unsigned RXB1D77:1;
} RXB1D7bits;
extern volatile far  unsigned char       CANSTATRO1;
extern volatile far  struct {
  unsigned :1;
  unsigned ICODE0:1;
  unsigned ICODE1:1;
  unsigned ICODE2:1;
  unsigned :1;
  unsigned OPMODE0:1;
  unsigned OPMODE1:1;
  unsigned OPMODE2:1;
} CANSTATRO1bits;
extern volatile near unsigned char       RXB0CON;
extern volatile near struct {
  unsigned FILHIT0:1;
  unsigned JTOFF:1;
  unsigned RXB0DBEN:1;
  unsigned RXRTRRO:1;
  unsigned :1;
  unsigned RXM0:1;
  unsigned RXM1:1;
  unsigned RXFUL:1;
} RXB0CONbits;
extern volatile near unsigned char       RXB0SIDH;
extern volatile near struct {
  unsigned SID3:1;
  unsigned SID4:1;
  unsigned SID5:1;
  unsigned SID6:1;
  unsigned SID7:1;
  unsigned SID8:1;
  unsigned SID9:1;
  unsigned SID10:1;
} RXB0SIDHbits;
extern volatile near unsigned char       RXB0SIDL;
extern volatile near struct {
  unsigned EID16:1;
  unsigned EID17:1;
  unsigned :1;
  unsigned EXID:1;
  unsigned SRR:1;
  unsigned SID0:1;
  unsigned SID1:1;
  unsigned SID2:1;
} RXB0SIDLbits;
extern volatile near unsigned char       RXB0EIDH;
extern volatile near struct {
  unsigned EID8:1;
  unsigned EID9:1;
  unsigned EID10:1;
  unsigned EID11:1;
  unsigned EID12:1;
  unsigned EID13:1;
  unsigned EID14:1;
  unsigned EID15:1;
} RXB0EIDHbits;
extern volatile near unsigned char       RXB0EIDL;
extern volatile near struct {
  unsigned EID0:1;
  unsigned EID1:1;
  unsigned EID2:1;
  unsigned EID3:1;
  unsigned EID4:1;
  unsigned EID5:1;
  unsigned EID6:1;
  unsigned EID7:1;
} RXB0EIDLbits;
extern volatile near unsigned char       RXB0DLC;
extern volatile near union {
  struct {
    unsigned DLC0:1;
    unsigned DLC1:1;
    unsigned DLC2:1;
    unsigned DLC3:1;
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RXRTR:1;
  };
  struct {
    unsigned :4;
    unsigned RESB0:1;
    unsigned RESB1:1;
  };
} RXB0DLCbits;
extern volatile near unsigned char       RXB0D0;
extern volatile near union {
  struct {
    unsigned RXB0D00:1;
    unsigned RXB0D01:1;
    unsigned RXB0D02:1;
    unsigned RXB0D03:1;
    unsigned RXB0D04:1;
    unsigned RXB0D05:1;
    unsigned RXB0D06:1;
    unsigned RXB0D07:1;
  };
  struct {
    unsigned RB0D00:1;
    unsigned RB0D01:1;
    unsigned RB0D02:1;
    unsigned RB0D03:1;
    unsigned RB0D04:1;
    unsigned RB0D05:1;
    unsigned RB0D06:1;
    unsigned RB0D07:1;
  };
} RXB0D0bits;
extern volatile near unsigned char       RXB0D1;
extern volatile near union {
  struct {
    unsigned RXB0D10:1;
    unsigned RXB0D11:1;
    unsigned RXB0D12:1;
    unsigned RXB0D13:1;
    unsigned RXB0D14:1;
    unsigned RXB0D15:1;
    unsigned RXB0D16:1;
    unsigned RXB0D17:1;
  };
  struct {
    unsigned RB0D10:1;
    unsigned RB0D11:1;
    unsigned RB0D12:1;
    unsigned RB0D13:1;
    unsigned RB0D14:1;
    unsigned RB0D15:1;
    unsigned RB0D16:1;
    unsigned RB0D17:1;
  };
} RXB0D1bits;
extern volatile near unsigned char       RXB0D2;
extern volatile near union {
  struct {
    unsigned RXB0D20:1;
    unsigned RXB0D21:1;
    unsigned RXB0D22:1;
    unsigned RXB0D23:1;
    unsigned RXB0D24:1;
    unsigned RXB0D25:1;
    unsigned RXB0D26:1;
    unsigned RXB0D27:1;
  };
  struct {
    unsigned RB0D20:1;
    unsigned RB0D21:1;
    unsigned RB0D22:1;
    unsigned RB0D23:1;
    unsigned RB0D24:1;
    unsigned RB0D25:1;
    unsigned RB0D26:1;
    unsigned RB0D27:1;
  };
} RXB0D2bits;
extern volatile near unsigned char       RXB0D3;
extern volatile near union {
  struct {
    unsigned RXB0D30:1;
    unsigned RXB0D31:1;
    unsigned RXB0D32:1;
    unsigned RXB0D33:1;
    unsigned RXB0D34:1;
    unsigned RXB0D35:1;
    unsigned RXB0D36:1;
    unsigned RXB0D37:1;
  };
  struct {
    unsigned RB0D30:1;
    unsigned RB0D31:1;
    unsigned RB0D32:1;
    unsigned RB0D33:1;
    unsigned RB0D34:1;
    unsigned RB0D35:1;
    unsigned RB0D36:1;
    unsigned RB0D37:1;
  };
} RXB0D3bits;
extern volatile near unsigned char       RXB0D4;
extern volatile near union {
  struct {
    unsigned RXB0D40:1;
    unsigned RXB0D41:1;
    unsigned RXB0D42:1;
    unsigned RXB0D43:1;
    unsigned RXB0D44:1;
    unsigned RXB0D45:1;
    unsigned RXB0D46:1;
    unsigned RXB0D47:1;
  };
  struct {
    unsigned RB0D40:1;
    unsigned RB0D41:1;
    unsigned RB0D42:1;
    unsigned RB0D43:1;
    unsigned RB0D44:1;
    unsigned RB0D45:1;
    unsigned RB0D46:1;
    unsigned RB0D47:1;
  };
} RXB0D4bits;
extern volatile near unsigned char       RXB0D5;
extern volatile near union {
  struct {
    unsigned RXB0D50:1;
    unsigned RXB0D51:1;
    unsigned RXB0D52:1;
    unsigned RXB0D53:1;
    unsigned RXB0D54:1;
    unsigned RXB0D55:1;
    unsigned RXB0D56:1;
    unsigned RXB0D57:1;
  };
  struct {
    unsigned RB0D50:1;
    unsigned RB0D51:1;
    unsigned RB0D52:1;
    unsigned RB0D53:1;
    unsigned RB0D54:1;
    unsigned RB0D55:1;
    unsigned RB0D56:1;
    unsigned RB0D57:1;
  };
} RXB0D5bits;
extern volatile near unsigned char       RXB0D6;
extern volatile near union {
  struct {
    unsigned RXB0D60:1;
    unsigned RXB0D61:1;
    unsigned RXB0D62:1;
    unsigned RXB0D63:1;
    unsigned RXB0D64:1;
    unsigned RXB0D65:1;
    unsigned RXB0D66:1;
    unsigned RXB0D67:1;
  };
  struct {
    unsigned RB0D60:1;
    unsigned RB0D61:1;
    unsigned RB0D62:1;
    unsigned RB0D63:1;
    unsigned RB0D64:1;
    unsigned RB0D65:1;
    unsigned RB0D66:1;
    unsigned RB0D67:1;
  };
} RXB0D6bits;
extern volatile near unsigned char       RXB0D7;
extern volatile near union {
  struct {
    unsigned RXB0D70:1;
    unsigned RXB0D71:1;
    unsigned RXB0D72:1;
    unsigned RXB0D73:1;
    unsigned RXB0D74:1;
    unsigned RXB0D75:1;
    unsigned RXB0D76:1;
    unsigned RXB0D77:1;
  };
  struct {
    unsigned RB0D70:1;
    unsigned RB0D71:1;
    unsigned RB0D72:1;
    unsigned RB0D73:1;
    unsigned RB0D74:1;
    unsigned RB0D75:1;
    unsigned RB0D76:1;
    unsigned RB0D77:1;
  };
} RXB0D7bits;
extern volatile near unsigned char       CANSTAT;
extern volatile near struct {
  unsigned :1;
  unsigned ICODE0:1;
  unsigned ICODE1:1;
  unsigned ICODE2:1;
  unsigned :1;
  unsigned OPMODE0:1;
  unsigned OPMODE1:1;
  unsigned OPMODE2:1;
} CANSTATbits;
extern volatile near unsigned char       CANCON;
extern volatile near struct {
  unsigned :1;
  unsigned WIN0:1;
  unsigned WIN1:1;
  unsigned WIN2:1;
  unsigned ABAT:1;
  unsigned REQOP0:1;
  unsigned REQOP1:1;
  unsigned REQOP2:1;
} CANCONbits;
extern volatile near unsigned char       BRGCON1;
extern volatile near struct {
  unsigned BRP0:1;
  unsigned BRP1:1;
  unsigned BRP2:1;
  unsigned BRP3:1;
  unsigned BRP4:1;
  unsigned BRP5:1;
  unsigned SJW0:1;
  unsigned SJW1:1;
} BRGCON1bits;
extern volatile near unsigned char       BRGCON2;
extern volatile near struct {
  unsigned PRSEG0:1;
  unsigned PRSEG1:1;
  unsigned PRSEG2:1;
  unsigned SEG1PH0:1;
  unsigned SEG1PH1:1;
  unsigned SEG1PH2:1;
  unsigned SAM:1;
  unsigned SEG2PHTS:1;
} BRGCON2bits;
extern volatile near unsigned char       BRGCON3;
extern volatile near struct {
  unsigned SEG2PH0:1;
  unsigned SEG2PH1:1;
  unsigned SEG2PH2:1;
  unsigned :3;
  unsigned WAKFIL:1;
} BRGCON3bits;
extern volatile near unsigned char       CIOCON;
extern volatile near struct {
  unsigned :4;
  unsigned CANCAP:1;
  unsigned ENDRHI:1;
} CIOCONbits;
extern volatile near unsigned char       COMSTAT;
extern volatile near union {
  struct {
    unsigned EWARN:1;
    unsigned RXWARN:1;
    unsigned TXWARN:1;
    unsigned RXBP:1;
    unsigned TXBP:1;
    unsigned TXBO:1;
    unsigned RXB1OVFL:1;
    unsigned RXB0OVFL:1;
  };
  struct {
    unsigned :6;
    unsigned RX2OVFL:1;
    unsigned RX1OVFL:1;
  };
} COMSTATbits;
extern volatile near unsigned char       RXERRCNT;
extern volatile near struct {
  unsigned REC0:1;
  unsigned REC1:1;
  unsigned REC2:1;
  unsigned REC3:1;
  unsigned REC4:1;
  unsigned REC5:1;
  unsigned REC6:1;
  unsigned REC7:1;
} RXERRCNTbits;
extern volatile near unsigned char       TXERRCNT;
extern volatile near struct {
  unsigned TEC0:1;
  unsigned TEC1:1;
  unsigned TEC2:1;
  unsigned TEC3:1;
  unsigned TEC4:1;
  unsigned TEC5:1;
  unsigned TEC6:1;
  unsigned TEC7:1;
} TXERRCNTbits;
extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned :1;
    unsigned AN4:1;
    unsigned OSC2:1;
  };
  struct {
    unsigned CVREF:1;
    unsigned :1;
    unsigned VREFM:1;
    unsigned VREFP:1;
    unsigned T0CKI:1;
    unsigned NOT_SS:1;
    unsigned CLKO:1;
  };
  struct {
    unsigned :5;
    unsigned SS:1;
  };
  struct {
    unsigned :5;
    unsigned LVDIN:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned INT0:1;
    unsigned INT1:1;
    unsigned CANTX:1;
    unsigned CANRX:1;
    unsigned :1;
    unsigned PGM:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned :1;
    unsigned SCK:1;
    unsigned SDI:1;
    unsigned SDO:1;
    unsigned TX:1;
    unsigned RX:1;
  };
  struct {
    unsigned T1CKI:1;
    unsigned :1;
    unsigned CCP1:1;
    unsigned SCL:1;
    unsigned SDA:1;
    unsigned :1;
    unsigned CK:1;
    unsigned DT:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned C1INP:1;
    unsigned C1INM:1;
    unsigned C2INP:1;
    unsigned C2INM:1;
    unsigned P1A:1;
    unsigned P1B:1;
    unsigned P1C:1;
    unsigned P1D:1;
  };
  struct {
    unsigned :4;
    unsigned ECCP1:1;
  };
  struct {
    unsigned PSP0:1;
    unsigned PSP1:1;
    unsigned PSP2:1;
    unsigned PSP3:1;
    unsigned PSP4:1;
    unsigned PSP5:1;
    unsigned PSP6:1;
    unsigned PSP7:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned AN5:1;
    unsigned AN6:1;
    unsigned AN7:1;
  };
  struct {
    unsigned NOT_RD:1;
    unsigned NOT_WR:1;
    unsigned NOT_CS:1;
  };
  struct {
    unsigned RD:1;
    unsigned WR:1;
    unsigned CS:1;
  };
} PORTEbits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
  unsigned LATA5:1;
  unsigned LATA6:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned LATC3:1;
  unsigned LATC4:1;
  unsigned LATC5:1;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       DDRA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} DDRAbits;
extern volatile near unsigned char       TRISA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} TRISAbits;
extern volatile near unsigned char       DDRB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} DDRBbits;
extern volatile near unsigned char       TRISB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} TRISBbits;
extern volatile near unsigned char       DDRC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} DDRCbits;
extern volatile near unsigned char       TRISC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} TRISCbits;
extern volatile near unsigned char       DDRD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} DDRDbits;
extern volatile near unsigned char       TRISD;
extern volatile near union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
  };
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
} TRISDbits;
extern volatile near unsigned char       DDRE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned DDRE0:1;
    unsigned DDRE1:1;
    unsigned DDRE2:1;
  };
} DDREbits;
extern volatile near unsigned char       TRISE;
extern volatile near union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned :1;
    unsigned PSPMODE:1;
    unsigned IBOV:1;
    unsigned OBF:1;
    unsigned IBF:1;
  };
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
  };
  struct {
    unsigned DDRE0:1;
    unsigned DDRE1:1;
    unsigned DDRE2:1;
  };
} TRISEbits;
extern volatile near unsigned char       PIE1;
extern volatile near struct {
  unsigned TMR1IE:1;
  unsigned TMR2IE:1;
  unsigned CCP1IE:1;
  unsigned SSPIE:1;
  unsigned TXIE:1;
  unsigned RCIE:1;
  unsigned ADIE:1;
  unsigned PSPIE:1;
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near struct {
  unsigned TMR1IF:1;
  unsigned TMR2IF:1;
  unsigned CCP1IF:1;
  unsigned SSPIF:1;
  unsigned TXIF:1;
  unsigned RCIF:1;
  unsigned ADIF:1;
  unsigned PSPIF:1;
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near struct {
  unsigned TMR1IP:1;
  unsigned TMR2IP:1;
  unsigned CCP1IP:1;
  unsigned SSPIP:1;
  unsigned TXIP:1;
  unsigned RCIP:1;
  unsigned ADIP:1;
  unsigned PSPIP:1;
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near struct {
  unsigned ECCP1IE:1;
  unsigned TMR3IE:1;
  unsigned LVDIE:1;
  unsigned BCLIE:1;
  unsigned EEIE:1;
  unsigned :1;
  unsigned CMIE:1;
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near struct {
  unsigned ECCP1IF:1;
  unsigned TMR3IF:1;
  unsigned LVDIF:1;
  unsigned BCLIF:1;
  unsigned EEIF:1;
  unsigned :1;
  unsigned CMIF:1;
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near struct {
  unsigned ECCP1IP:1;
  unsigned TMR3IP:1;
  unsigned LVDIP:1;
  unsigned BCLIP:1;
  unsigned EEIP:1;
  unsigned :1;
  unsigned CMIP:1;
} IPR2bits;
extern volatile near unsigned char       PIE3;
extern volatile near union {
  struct {
    unsigned RXB0IE:1;
    unsigned RXB1IE:1;
    unsigned TXB0IE:1;
    unsigned TXB1IE:1;
    unsigned TXB2IE:1;
    unsigned ERRIE:1;
    unsigned WAKIE:1;
    unsigned IRXIE:1;
  };
  struct {
    unsigned RX0IE:1;
    unsigned RX1IE:1;
    unsigned TX0IE:1;
    unsigned TX1IE:1;
    unsigned TX2IE:1;
    unsigned :2;
    unsigned IVRE:1;
  };
} PIE3bits;
extern volatile near unsigned char       PIR3;
extern volatile near union {
  struct {
    unsigned RXB0IF:1;
    unsigned RXB1IF:1;
    unsigned TXB0IF:1;
    unsigned TXB1IF:1;
    unsigned TXB2IF:1;
    unsigned ERRIF:1;
    unsigned WAKIF:1;
    unsigned IRXIF:1;
  };
  struct {
    unsigned RX0IF:1;
    unsigned RX1IF:1;
    unsigned TX0IF:1;
    unsigned TX1IF:1;
    unsigned TX2IF:1;
    unsigned :2;
    unsigned IVRF:1;
  };
} PIR3bits;
extern volatile near unsigned char       IPR3;
extern volatile near union {
  struct {
    unsigned RXB0IP:1;
    unsigned RXB1IP:1;
    unsigned TXB0IP:1;
    unsigned TXB1IP:1;
    unsigned TXB2IP:1;
    unsigned ERRIP:1;
    unsigned WAKIP:1;
    unsigned IRXIP:1;
  };
  struct {
    unsigned :7;
    unsigned IVRP:1;
  };
} IPR3bits;
extern volatile near unsigned char       EECON1;
extern volatile near union {
  struct {
    unsigned RD:1;
    unsigned WR:1;
    unsigned WREN:1;
    unsigned WRERR:1;
    unsigned FREE:1;
    unsigned :1;
    unsigned CFGS:1;
    unsigned EEPGD:1;
  };
  struct {
    unsigned :6;
    unsigned EEFS:1;
  };
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       EEDATA;
extern volatile near unsigned char       EEADR;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned RCD8:1;
    unsigned :5;
    unsigned RC9:1;
  };
  struct {
    unsigned :6;
    unsigned RC8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_RC8:1;
  };
} RCSTAbits;
extern volatile near unsigned char       TXSTA;
extern volatile near union {
  struct {
    unsigned TX9D:1;
    unsigned TRMT:1;
    unsigned BRGH:1;
    unsigned :1;
    unsigned SYNC:1;
    unsigned TXEN:1;
    unsigned TX9:1;
    unsigned CSRC:1;
  };
  struct {
    unsigned TXD8:1;
    unsigned :5;
    unsigned TX8_9:1;
  };
  struct {
    unsigned :6;
    unsigned NOT_TX8:1;
  };
} TXSTAbits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned TMR3CS:1;
    unsigned NOT_T3SYNC:1;
    unsigned T3CCP1:1;
    unsigned T3CKPS:2;
    unsigned T3ECCP1:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T3INSYNC:1;
    unsigned :1;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T3SYNC:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       CMCON;
extern volatile near union {
  struct {
    unsigned CM:3;
    unsigned CIS:1;
    unsigned C1INV:1;
    unsigned C2INV:1;
    unsigned C1OUT:1;
    unsigned C2OUT:1;
  };
  struct {
    unsigned CM0:1;
    unsigned CM1:1;
    unsigned CM2:1;
  };
} CMCONbits;
extern volatile near unsigned char       CVRCON;
extern volatile near union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned CVREN:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
} CVRCONbits;
extern volatile near unsigned char       ECCPAS;
extern volatile near union {
  struct {
    unsigned PSSBD:2;
    unsigned PSSAC:2;
    unsigned ECCPAS:3;
    unsigned ECCPASE:1;
  };
  struct {
    unsigned PSSBD0:1;
    unsigned PSSBD1:1;
    unsigned PSSAC0:1;
    unsigned PSSAC1:1;
    unsigned ECCPAS0:1;
    unsigned ECCPAS1:1;
    unsigned ECCPAS2:1;
  };
} ECCPASbits;
extern volatile near unsigned char       ECCP1DEL;
extern volatile near union {
  struct {
    unsigned EPDC:8;
  };
  struct {
    unsigned EPDC0:1;
    unsigned EPDC1:1;
    unsigned EPDC2:1;
    unsigned EPDC3:1;
    unsigned EPDC4:1;
    unsigned EPDC5:1;
    unsigned EPDC6:1;
    unsigned EPDC7:1;
  };
} ECCP1DELbits;
extern volatile near unsigned char       ECCP1CON;
extern volatile near union {
  struct {
    unsigned ECCP1M:4;
    unsigned EDC1B:2;
    unsigned EPWM1M:2;
  };
  struct {
    unsigned ECCP1M0:1;
    unsigned ECCP1M1:1;
    unsigned ECCP1M2:1;
    unsigned ECCP1M3:1;
    unsigned EDC1B0:1;
    unsigned EDC1B1:1;
    unsigned EPWM1M0:1;
    unsigned EPWM1M1:1;
  };
  struct {
    unsigned :4;
    unsigned EDC2B0:1;
    unsigned EDC2B1:1;
  };
} ECCP1CONbits;
extern volatile near unsigned            ECCPR1;
extern volatile near unsigned char       ECCPR1L;
extern volatile near unsigned char       ECCPR1H;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
  };
  struct {
    unsigned :4;
    unsigned CCP1Y:1;
    unsigned CCP1X:1;
  };
} CCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned PCFG:4;
    unsigned :2;
    unsigned ADCS2:1;
    unsigned ADFM:1;
  };
  struct {
    unsigned PCFG0:1;
    unsigned PCFG1:1;
    unsigned PCFG2:1;
    unsigned PCFG3:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned :1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:3;
    unsigned ADCS:2;
  };
  struct {
    unsigned :2;
    unsigned DONE:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned ADCS0:1;
    unsigned ADCS1:1;
  };
  struct {
    unsigned :2;
    unsigned GO_DONE:1;
  };
  struct {
    unsigned :2;
    unsigned GO:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSPCON2;
extern volatile near struct {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned ACKSTAT:1;
  unsigned GCEN:1;
} SSPCON2bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DATA:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :5;
    unsigned I2C_DAT:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned TOUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned TOUTPS0:1;
    unsigned TOUTPS1:1;
    unsigned TOUTPS2:1;
    unsigned TOUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned TMR1CS:1;
    unsigned NOT_T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned :1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T1INSYNC:1;
    unsigned :1;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T1SYNC:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned :2;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned :2;
    unsigned NOT_IPEN:1;
  };
} RCONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       LVDCON;
extern volatile near union {
  struct {
    unsigned LVDL:4;
    unsigned LVDEN:1;
    unsigned IRVST:1;
  };
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned :1;
    unsigned IVRST:1;
  };
} LVDCONbits;
extern volatile near unsigned char       OSCCON;
extern volatile near struct {
  unsigned SCS:1;
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       W;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned :1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned :1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned :1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned :1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned :1;
    unsigned TMR0IP:1;
    unsigned :1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :2;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern volatile near unsigned char       INTCON1;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCON1bits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned STKPTR0:1;
    unsigned STKPTR1:1;
    unsigned STKPTR2:1;
    unsigned STKPTR3:1;
    unsigned STKPTR4:1;
    unsigned :2;
    unsigned STKOVF:1;
  };
  struct {
    unsigned SP0:1;
    unsigned SP1:1;
    unsigned SP2:1;
    unsigned SP3:1;
    unsigned SP4:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;

#pragma varlocate 15 RXF0SIDH
#pragma varlocate 15 RXF0SIDHbits
#pragma varlocate 15 RXF0SIDL
#pragma varlocate 15 RXF0SIDLbits
#pragma varlocate 15 RXF0EIDH
#pragma varlocate 15 RXF0EIDHbits
#pragma varlocate 15 RXF0EIDL
#pragma varlocate 15 RXF0EIDLbits
#pragma varlocate 15 RXF1SIDH
#pragma varlocate 15 RXF1SIDHbits
#pragma varlocate 15 RXF1SIDL
#pragma varlocate 15 RXF1SIDLbits
#pragma varlocate 15 RXF1EIDH
#pragma varlocate 15 RXF1EIDHbits
#pragma varlocate 15 RXF1EIDL
#pragma varlocate 15 RXF1EIDLbits
#pragma varlocate 15 RXF2SIDH
#pragma varlocate 15 RXF2SIDHbits
#pragma varlocate 15 RXF2SIDL
#pragma varlocate 15 RXF2SIDLbits
#pragma varlocate 15 RXF2EIDH
#pragma varlocate 15 RXF2EIDHbits
#pragma varlocate 15 RXF2EIDL
#pragma varlocate 15 RXF2EIDLbits
#pragma varlocate 15 RXF3SIDH
#pragma varlocate 15 RXF3SIDHbits
#pragma varlocate 15 RXF3SIDL
#pragma varlocate 15 RXF3SIDLbits
#pragma varlocate 15 RXF3EIDH
#pragma varlocate 15 RXF3EIDHbits
#pragma varlocate 15 RXF3EIDL
#pragma varlocate 15 RXF3EIDLbits
#pragma varlocate 15 RXF4SIDH
#pragma varlocate 15 RXF4SIDHbits
#pragma varlocate 15 RXF4SIDL
#pragma varlocate 15 RXF4SIDLbits
#pragma varlocate 15 RXF4EIDH
#pragma varlocate 15 RXF4EIDHbits
#pragma varlocate 15 RXF4EIDL
#pragma varlocate 15 RXF4EIDLbits
#pragma varlocate 15 RXF5SIDH
#pragma varlocate 15 RXF5SIDHbits
#pragma varlocate 15 RXF5SIDL
#pragma varlocate 15 RXF5SIDLbits
#pragma varlocate 15 RXF5EIDH
#pragma varlocate 15 RXF5EIDHbits
#pragma varlocate 15 RXF5EIDL
#pragma varlocate 15 RXF5EIDLbits
#pragma varlocate 15 RXM0SIDH
#pragma varlocate 15 RXM0SIDHbits
#pragma varlocate 15 RXM0SIDL
#pragma varlocate 15 RXM0SIDLbits
#pragma varlocate 15 RXM0EIDH
#pragma varlocate 15 RXM0EIDHbits
#pragma varlocate 15 RXM0EIDL
#pragma varlocate 15 RXM0EIDLbits
#pragma varlocate 15 RXM1SIDH
#pragma varlocate 15 RXM1SIDHbits
#pragma varlocate 15 RXM1SIDL
#pragma varlocate 15 RXM1SIDLbits
#pragma varlocate 15 RXM1EIDH
#pragma varlocate 15 RXM1EIDHbits
#pragma varlocate 15 RXM1EIDL
#pragma varlocate 15 RXM1EIDLbits
#pragma varlocate 15 TXB2CON
#pragma varlocate 15 TXB2CONbits
#pragma varlocate 15 TXB2SIDH
#pragma varlocate 15 TXB2SIDHbits
#pragma varlocate 15 TXB2SIDL
#pragma varlocate 15 TXB2SIDLbits
#pragma varlocate 15 TXB2EIDH
#pragma varlocate 15 TXB2EIDHbits
#pragma varlocate 15 TXB2EIDL
#pragma varlocate 15 TXB2EIDLbits
#pragma varlocate 15 TXB2DLC
#pragma varlocate 15 TXB2DLCbits
#pragma varlocate 15 TXB2D0
#pragma varlocate 15 TXB2D0bits
#pragma varlocate 15 TXB2D1
#pragma varlocate 15 TXB2D1bits
#pragma varlocate 15 TXB2D2
#pragma varlocate 15 TXB2D2bits
#pragma varlocate 15 TXB2D3
#pragma varlocate 15 TXB2D3bits
#pragma varlocate 15 TXB2D4
#pragma varlocate 15 TXB2D4bits
#pragma varlocate 15 TXB2D5
#pragma varlocate 15 TXB2D5bits
#pragma varlocate 15 TXB2D6
#pragma varlocate 15 TXB2D6bits
#pragma varlocate 15 TXB2D7
#pragma varlocate 15 TXB2D7bits
#pragma varlocate 15 CANSTATRO4
#pragma varlocate 15 CANSTATRO4bits
#pragma varlocate 15 TXB1CON
#pragma varlocate 15 TXB1CONbits
#pragma varlocate 15 TXB1SIDH
#pragma varlocate 15 TXB1SIDHbits
#pragma varlocate 15 TXB1SIDL
#pragma varlocate 15 TXB1SIDLbits
#pragma varlocate 15 TXB1EIDH
#pragma varlocate 15 TXB1EIDHbits
#pragma varlocate 15 TXB1EIDL
#pragma varlocate 15 TXB1EIDLbits
#pragma varlocate 15 TXB1DLC
#pragma varlocate 15 TXB1DLCbits
#pragma varlocate 15 TXB1D0
#pragma varlocate 15 TXB1D0bits
#pragma varlocate 15 TXB1D1
#pragma varlocate 15 TXB1D1bits
#pragma varlocate 15 TXB1D2
#pragma varlocate 15 TXB1D2bits
#pragma varlocate 15 TXB1D3
#pragma varlocate 15 TXB1D3bits
#pragma varlocate 15 TXB1D4
#pragma varlocate 15 TXB1D4bits
#pragma varlocate 15 TXB1D5
#pragma varlocate 15 TXB1D5bits
#pragma varlocate 15 TXB1D6
#pragma varlocate 15 TXB1D6bits
#pragma varlocate 15 TXB1D7
#pragma varlocate 15 TXB1D7bits
#pragma varlocate 15 CANSTATRO3
#pragma varlocate 15 CANSTATRO3bits
#pragma varlocate 15 TXB0CON
#pragma varlocate 15 TXB0CONbits
#pragma varlocate 15 TXB0SIDH
#pragma varlocate 15 TXB0SIDHbits
#pragma varlocate 15 TXB0SIDL
#pragma varlocate 15 TXB0SIDLbits
#pragma varlocate 15 TXB0EIDH
#pragma varlocate 15 TXB0EIDHbits
#pragma varlocate 15 TXB0EIDL
#pragma varlocate 15 TXB0EIDLbits
#pragma varlocate 15 TXB0DLC
#pragma varlocate 15 TXB0DLCbits
#pragma varlocate 15 TXB0D0
#pragma varlocate 15 TXB0D0bits
#pragma varlocate 15 TXB0D1
#pragma varlocate 15 TXB0D1bits
#pragma varlocate 15 TXB0D2
#pragma varlocate 15 TXB0D2bits
#pragma varlocate 15 TXB0D3
#pragma varlocate 15 TXB0D3bits
#pragma varlocate 15 TXB0D4
#pragma varlocate 15 TXB0D4bits
#pragma varlocate 15 TXB0D5
#pragma varlocate 15 TXB0D5bits
#pragma varlocate 15 TXB0D6
#pragma varlocate 15 TXB0D6bits
#pragma varlocate 15 TXB0D7
#pragma varlocate 15 TXB0D7bits
#pragma varlocate 15 CANSTATRO2
#pragma varlocate 15 CANSTATRO2bits
#pragma varlocate 15 RXB1CON
#pragma varlocate 15 RXB1CONbits
#pragma varlocate 15 RXB1SIDH
#pragma varlocate 15 RXB1SIDHbits
#pragma varlocate 15 RXB1SIDL
#pragma varlocate 15 RXB1SIDLbits
#pragma varlocate 15 RXB1EIDH
#pragma varlocate 15 RXB1EIDHbits
#pragma varlocate 15 RXB1EIDL
#pragma varlocate 15 RXB1EIDLbits
#pragma varlocate 15 RXB1DLC
#pragma varlocate 15 RXB1DLCbits
#pragma varlocate 15 RXB1D0
#pragma varlocate 15 RXB1D0bits
#pragma varlocate 15 RXB1D1
#pragma varlocate 15 RXB1D1bits
#pragma varlocate 15 RXB1D2
#pragma varlocate 15 RXB1D2bits
#pragma varlocate 15 RXB1D3
#pragma varlocate 15 RXB1D3bits
#pragma varlocate 15 RXB1D4
#pragma varlocate 15 RXB1D4bits
#pragma varlocate 15 RXB1D5
#pragma varlocate 15 RXB1D5bits
#pragma varlocate 15 RXB1D6
#pragma varlocate 15 RXB1D6bits
#pragma varlocate 15 RXB1D7
#pragma varlocate 15 RXB1D7bits
#pragma varlocate 15 CANSTATRO1
#pragma varlocate 15 CANSTATRO1bits


#line 2745 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2747 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2748 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2751 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2753 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2754 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2755 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2756 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2758 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2759 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2760 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2761 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2762 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2766 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2768 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2783 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 

#line 2809 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2810 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2813 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2815 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2816 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2817 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2818 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2819 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2820 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2821 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2822 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2823 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2825 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2826 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2829 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2831 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2832 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2833 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2835 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2836 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2838 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2839 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2840 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2841 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2844 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2846 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2847 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2848 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2850 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2851 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2852 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2853 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2854 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2855 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2856 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2857 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2860 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2862 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2863 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2864 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2866 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2867 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2869 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2870 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2873 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2875 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2876 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2877 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2879 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2880 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2882 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2883 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2885 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2886 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2889 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2891 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2892 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2893 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2895 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2896 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2899 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2901 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2902 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2903 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2905 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2906 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2908 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2909 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2911 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2912 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2915 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2917 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2918 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2919 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2921 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2922 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2924 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2925 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2928 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2930 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2931 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2932 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2934 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2935 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2937 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2938 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"

#line 2940 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2941 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2944 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
 
#line 2946 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2947 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 2948 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"


#line 2951 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18f458.h"
#line 213 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"

#line 215 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 217 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 219 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 221 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 223 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 225 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 227 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 229 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 231 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 233 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 235 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 237 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 239 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 241 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 243 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 245 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 247 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 249 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 251 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 253 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 255 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 257 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 259 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 261 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 263 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 265 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 267 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 269 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 271 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 273 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 275 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 277 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 279 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 281 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 283 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 285 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 287 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 289 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 291 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 293 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 295 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 297 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 299 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 301 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 303 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 305 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 307 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 309 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 311 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 313 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 315 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 317 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 319 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 321 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 323 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 325 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 327 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 329 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 331 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 333 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 335 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 337 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 339 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 341 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 343 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 345 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 347 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 349 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 351 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 353 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 355 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 357 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 359 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 361 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 363 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 365 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 367 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 369 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 371 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 373 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 375 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 377 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 379 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 381 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 383 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 385 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 387 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 389 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 391 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 393 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 395 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 397 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 399 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 401 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 403 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 405 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 407 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 409 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 411 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 413 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 415 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 417 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 419 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 421 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 423 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 425 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 427 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 429 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 431 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 433 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 435 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 437 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 439 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 441 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 443 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 445 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 447 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 449 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 451 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 453 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 455 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 457 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 459 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 461 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 463 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 465 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 467 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 469 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 471 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 473 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 475 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 477 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 479 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 481 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 483 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 485 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 487 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 489 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 491 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 493 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 495 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 497 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 499 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 501 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 503 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 505 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 507 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 509 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 511 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 513 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 515 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 517 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 519 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 521 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 523 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 525 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 527 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 529 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 531 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 533 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 535 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 537 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 539 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 541 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 543 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 545 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 547 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 549 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 551 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 553 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 555 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 557 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 559 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 561 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"

#line 563 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 16 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"


 
#line 20 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"

#line 22 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"

 
#line 25 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"


#line 31 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
 
void Delay10TCYx(auto  unsigned char);


#line 38 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
 
void Delay100TCYx(auto  unsigned char);


#line 45 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
 
void Delay1KTCYx(auto  unsigned char);


#line 52 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
 
void Delay10KTCYx(auto  unsigned char);

#line 56 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/delays.h"
#line 19 "../src/../include/define.h"

#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 45 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
 


#line 49 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
#line 52 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 54 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 55 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 56 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 58 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 59 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 60 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 

#line 4 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
#line 36 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"


#line 41 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
 
#line 43 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"

#line 45 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/stddef.h"
#line 62 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
 

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;     
typedef enum _BIT { CLEAR = 0, SET } BIT;

#line 68 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 69 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 70 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
typedef signed int          INT;
typedef signed char         INT8;
typedef signed short int    INT16;
typedef signed long int     INT32;

 
#line 79 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 81 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 
typedef unsigned int        UINT;
typedef unsigned char       UINT8;
typedef unsigned short int  UINT16;
 
#line 88 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef unsigned short long UINT24;
#line 90 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef unsigned long int   UINT32;      
 
#line 93 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 95 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

typedef union
{
    UINT8 Val;
    struct
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union 
{
    UINT16 Val;
    UINT8 v[2] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;

 
#line 144 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
typedef union
{
    UINT24 Val;
    UINT8 v[3] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
    } bits;
} UINT24_VAL, UINT24_BITS;
#line 183 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

typedef union
{
    UINT32 Val;
    UINT16 w[2] ;
    UINT8  v[4] ;
    struct 
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct 
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
         UINT8 b24:1;
         UINT8 b25:1;
         UINT8 b26:1;
         UINT8 b27:1;
         UINT8 b28:1;
         UINT8 b29:1;
         UINT8 b30:1;
         UINT8 b31:1;
    } bits;
} UINT32_VAL;

 
#line 245 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 332 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

 

 
typedef void                    VOID;

typedef char                    CHAR8;
typedef unsigned char           UCHAR8;

typedef unsigned char           BYTE;                            
typedef unsigned short int      WORD;                            
typedef unsigned long           DWORD;                           
 

typedef unsigned long long      QWORD;                           
typedef signed char             CHAR;                            
typedef signed short int        SHORT;                           
typedef signed long             LONG;                            
 

typedef signed long long        LONGLONG;                        
typedef union
{
    BYTE Val;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2] ;
    struct 
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2] ;
    BYTE v[4] ;
    struct 
    {
        WORD LW;
        WORD HW;
    } word;
    struct 
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct 
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
    } bits;
} DWORD_VAL;

 
typedef union
{
    QWORD Val;
    DWORD d[2] ;
    WORD w[4] ;
    BYTE v[8] ;
    struct 
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct 
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
         BYTE b32:1;
         BYTE b33:1;
         BYTE b34:1;
         BYTE b35:1;
         BYTE b36:1;
         BYTE b37:1;
         BYTE b38:1;
         BYTE b39:1;
         BYTE b40:1;
         BYTE b41:1;
         BYTE b42:1;
         BYTE b43:1;
         BYTE b44:1;
         BYTE b45:1;
         BYTE b46:1;
         BYTE b47:1;
         BYTE b48:1;
         BYTE b49:1;
         BYTE b50:1;
         BYTE b51:1;
         BYTE b52:1;
         BYTE b53:1;
         BYTE b54:1;
         BYTE b55:1;
         BYTE b56:1;
         BYTE b57:1;
         BYTE b58:1;
         BYTE b59:1;
         BYTE b60:1;
         BYTE b61:1;
         BYTE b62:1;
         BYTE b63:1;
    } bits;
} QWORD_VAL;

#line 547 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"

#line 549 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/GenericTypeDefs.h"
#line 20 "../src/../include/define.h"






#line 1 "../src/../include/Console.h"

#line 3 "../src/../include/Console.h"

 


#line 8 "../src/../include/Console.h"

 
 

#line 13 "../src/../include/Console.h"
#line 28 "../src/../include/Console.h"
#line 29 "../src/../include/Console.h"
#line 30 "../src/../include/Console.h"
#line 31 "../src/../include/Console.h"
#line 32 "../src/../include/Console.h"
#line 33 "../src/../include/Console.h"
    
#line 35 "../src/../include/Console.h"
#line 36 "../src/../include/Console.h"
  
#line 38 "../src/../include/Console.h"
#line 39 "../src/../include/Console.h"
#line 40 "../src/../include/Console.h"


#line 43 "../src/../include/Console.h"
#line 44 "../src/../include/Console.h"


#line 26 "../src/../include/define.h"


#line 29 "../src/../include/define.h"


typedef enum {
    C_PRESENTATION = 0, 
    C_SET = 1, 
    C_REQ = 2, 
    C_INTERNAL = 3, 
    C_STREAM = 4 
} mysensor_command;



typedef enum {
    S_DOOR = 0, 
    S_MOTION = 1, 
    S_SMOKE = 2, 
    S_BINARY = 3, 
    S_LIGHT = 3, 
    S_DIMMER = 4, 
    S_COVER = 5, 
    S_TEMP = 6, 
    S_HUM = 7, 
    S_BARO = 8, 
    S_WIND = 9, 
    S_RAIN = 10, 
    S_UV = 11, 
    S_WEIGHT = 12, 
    S_POWER = 13, 
    S_HEATER = 14, 
    S_DISTANCE = 15, 
    S_LIGHT_LEVEL = 16, 
    S_ARDUINO_NODE = 17, 
    S_ARDUINO_REPEATER_NODE = 18, 
    S_LOCK = 19, 
    S_IR = 20, 
    S_WATER = 21, 
    S_AIR_QUALITY = 22, 
    S_CUSTOM = 23, 
    S_DUST = 24, 
    S_SCENE_CONTROLLER = 25, 
    S_RGB_LIGHT = 26, 
    S_RGBW_LIGHT = 27, 
    S_COLOR_SENSOR = 28, 
    S_HVAC = 29, 
    S_MULTIMETER = 30, 
    S_SPRINKLER = 31, 
    S_WATER_LEAK = 32, 
    S_SOUND = 33, 
    S_VIBRATION = 34, 
    S_MOISTURE = 35, 
    S_INFO = 36, 
    S_GAS = 37, 
    S_GPS = 38, 
    S_WATER_QUALITY = 39 
} mysensor_sensor;



typedef enum {
    V_TEMP = 0, 
    V_HUM = 1, 
    V_STATUS = 2, 
    V_LIGHT = 2, 
    V_PERCENTAGE = 3, 
    V_DIMMER = 3, 
    V_PRESSURE = 4, 
    V_FORECAST = 5, 
    V_RAIN = 6, 
    V_RAINRATE = 7, 
    V_WIND = 8, 
    V_GUST = 9, 
    V_DIRECTION = 10, 
    V_UV = 11, 
    V_WEIGHT = 12, 
    V_DISTANCE = 13, 
    V_IMPEDANCE = 14, 
    V_ARMED = 15, 
    V_TRIPPED = 16, 
    V_WATT = 17, 
    V_KWH = 18, 
    V_SCENE_ON = 19, 
    V_SCENE_OFF = 20, 
    V_HVAC_FLOW_STATE = 21, 
    V_HEATER = 21, 
    V_HVAC_SPEED = 22, 
    V_LIGHT_LEVEL = 23, 
    V_VAR1 = 24, 
    V_VAR2 = 25, 
    V_VAR3 = 26, 
    V_VAR4 = 27, 
    V_VAR5 = 28, 
    V_UP = 29, 
    V_DOWN = 30, 
    V_STOP = 31, 
    V_IR_SEND = 32, 
    V_IR_RECEIVE = 33, 
    V_FLOW = 34, 
    V_VOLUME = 35, 
    V_LOCK_STATUS = 36, 
    V_LEVEL = 37, 
    V_VOLTAGE = 38, 
    V_CURRENT = 39, 
    V_RGB = 40, 
    V_RGBW = 41, 
    V_ID = 42, 
    V_UNIT_PREFIX = 43, 
    V_HVAC_SETPOINT_COOL = 44, 
    V_HVAC_SETPOINT_HEAT = 45, 
    V_HVAC_FLOW_MODE = 46, 
    V_TEXT = 47, 
    V_CUSTOM = 48, 
    V_POSITION = 49, 
    V_IR_RECORD = 50, 
    V_PH = 51, 
    V_ORP = 52, 
    V_EC = 53, 
    V_VAR = 54, 
    V_VA = 55, 
    V_POWER_FACTOR = 56 
} mysensor_data;




typedef enum {
    I_BATTERY_LEVEL = 0, 
    I_TIME = 1, 
    I_VERSION = 2, 
    I_ID_REQUEST = 3, 
    I_ID_RESPONSE = 4, 
    I_INCLUSION_MODE = 5, 
    I_CONFIG = 6, 
    I_FIND_PARENT = 7, 
    I_FIND_PARENT_RESPONSE = 8, 
    I_LOG_MESSAGE = 9, 
    I_CHILDREN = 10, 
    I_SKETCH_NAME = 11, 
    I_SKETCH_VERSION = 12, 
    I_REBOOT = 13, 
    I_GATEWAY_READY = 14, 
    I_SIGNING_PRESENTATION = 15, 
    I_NONCE_REQUEST = 16, 
    I_NONCE_RESPONSE = 17, 
    I_HEARTBEAT = 18, 
    I_PRESENTATION = 19, 
    I_DISCOVER = 20, 
    I_DISCOVER_RESPONSE = 21, 
    I_HEARTBEAT_RESPONSE = 22, 
    I_LOCKED = 23, 
    I_PING = 24, 
    I_PONG = 25, 
    I_REGISTRATION_REQUEST = 26, 
    I_REGISTRATION_RESPONSE = 27, 
    I_DEBUG = 28 
} mysensor_internal;




typedef enum {
    ST_FIRMWARE_CONFIG_REQUEST = 0, 
    ST_FIRMWARE_CONFIG_RESPONSE = 1, 
    ST_FIRMWARE_REQUEST = 2, 
    ST_FIRMWARE_RESPONSE = 3, 
    ST_SOUND = 4, 
    ST_IMAGE = 5 
} mysensor_stream;



typedef enum {
    P_STRING = 0, 
    P_BYTE = 1, 
    P_INT16 = 2, 
    P_UINT16 = 3, 
    P_LONG32 = 4, 
    P_ULONG32 = 5, 
    P_CUSTOM = 6, 
    P_FLOAT32 = 7 
} mysensor_payload;


#line 212 "../src/../include/define.h"
#line 214 "../src/../include/define.h"
#line 215 "../src/../include/define.h"
#line 216 "../src/../include/define.h"

#line 218 "../src/../include/define.h"
#line 219 "../src/../include/define.h"

#line 221 "../src/../include/define.h"

#line 223 "../src/../include/define.h"
#line 224 "../src/../include/define.h"
#line 225 "../src/../include/define.h"
#line 226 "../src/../include/define.h"
#line 227 "../src/../include/define.h"

#line 229 "../src/../include/define.h"
#line 230 "../src/../include/define.h"
#line 231 "../src/../include/define.h"
#line 232 "../src/../include/define.h"
#line 233 "../src/../include/define.h"
#line 234 "../src/../include/define.h"
#line 235 "../src/../include/define.h"

#line 237 "../src/../include/define.h"
#line 238 "../src/../include/define.h"
#line 239 "../src/../include/define.h"
#line 240 "../src/../include/define.h"
#line 241 "../src/../include/define.h"
#line 242 "../src/../include/define.h"
#line 243 "../src/../include/define.h"



#line 247 "../src/../include/define.h"
#line 248 "../src/../include/define.h"
#line 249 "../src/../include/define.h"
#line 250 "../src/../include/define.h"
#line 251 "../src/../include/define.h"
#line 252 "../src/../include/define.h"

#line 254 "../src/../include/define.h"
#line 255 "../src/../include/define.h"
#line 256 "../src/../include/define.h"
#line 257 "../src/../include/define.h"
#line 258 "../src/../include/define.h"
#line 259 "../src/../include/define.h"
#line 260 "../src/../include/define.h"
#line 261 "../src/../include/define.h"



#line 265 "../src/../include/define.h"
#line 266 "../src/../include/define.h"
#line 267 "../src/../include/define.h"
#line 268 "../src/../include/define.h"
#line 269 "../src/../include/define.h"
#line 270 "../src/../include/define.h"
#line 271 "../src/../include/define.h"
#line 272 "../src/../include/define.h"
#line 273 "../src/../include/define.h"
#line 274 "../src/../include/define.h"
#line 276 "../src/../include/define.h"
#line 278 "../src/../include/define.h"
#line 279 "../src/../include/define.h"


#line 282 "../src/../include/define.h"

#line 284 "../src/../include/define.h"

#line 286 "../src/../include/define.h"
#line 288 "../src/../include/define.h"



#line 293 "../src/../include/define.h"
 
#line 295 "../src/../include/define.h"
#line 296 "../src/../include/define.h"
#line 297 "../src/../include/define.h"
#line 298 "../src/../include/define.h"
#line 299 "../src/../include/define.h"
#line 300 "../src/../include/define.h"
#line 301 "../src/../include/define.h"
#line 302 "../src/../include/define.h"
#line 303 "../src/../include/define.h"
#line 304 "../src/../include/define.h"
#line 305 "../src/../include/define.h"

#line 307 "../src/../include/define.h"
#line 308 "../src/../include/define.h"


#line 313 "../src/../include/define.h"
 
#line 315 "../src/../include/define.h"
#line 316 "../src/../include/define.h"
#line 317 "../src/../include/define.h"
#line 318 "../src/../include/define.h"
#line 319 "../src/../include/define.h"
#line 320 "../src/../include/define.h"
#line 321 "../src/../include/define.h"
#line 322 "../src/../include/define.h"
#line 323 "../src/../include/define.h"
#line 324 "../src/../include/define.h"
#line 325 "../src/../include/define.h"
#line 326 "../src/../include/define.h"
#line 327 "../src/../include/define.h"
#line 328 "../src/../include/define.h"
#line 329 "../src/../include/define.h"
#line 330 "../src/../include/define.h"
#line 331 "../src/../include/define.h"
#line 332 "../src/../include/define.h"
#line 333 "../src/../include/define.h"
#line 334 "../src/../include/define.h"
#line 335 "../src/../include/define.h"
#line 336 "../src/../include/define.h"

#line 338 "../src/../include/define.h"
#line 339 "../src/../include/define.h"

#line 341 "../src/../include/define.h"
#line 342 "../src/../include/define.h"



#line 346 "../src/../include/define.h"
#line 347 "../src/../include/define.h"
#line 348 "../src/../include/define.h"
#line 349 "../src/../include/define.h"

#line 351 "../src/../include/define.h"
#line 352 "../src/../include/define.h"
#line 353 "../src/../include/define.h"
#line 354 "../src/../include/define.h"


#line 357 "../src/../include/define.h"
#line 358 "../src/../include/define.h"
#line 359 "../src/../include/define.h"
#line 360 "../src/../include/define.h"



#line 364 "../src/../include/define.h"
#line 365 "../src/../include/define.h"
#line 366 "../src/../include/define.h"
#line 367 "../src/../include/define.h"
#line 368 "../src/../include/define.h"
#line 369 "../src/../include/define.h"

#line 371 "../src/../include/define.h"
#line 372 "../src/../include/define.h"
#line 373 "../src/../include/define.h"

#line 375 "../src/../include/define.h"

#line 377 "../src/../include/define.h"
#line 378 "../src/../include/define.h"
#line 379 "../src/../include/define.h"

#line 381 "../src/../include/define.h"
#line 382 "../src/../include/define.h"

#line 384 "../src/../include/define.h"
#line 385 "../src/../include/define.h"
#line 386 "../src/../include/define.h"
#line 387 "../src/../include/define.h"

#line 389 "../src/../include/define.h"










#line 400 "../src/../include/define.h"
#line 401 "../src/../include/define.h"
#line 402 "../src/../include/define.h"
#line 403 "../src/../include/define.h"
#line 404 "../src/../include/define.h"
#line 405 "../src/../include/define.h"
#line 406 "../src/../include/define.h"
#line 407 "../src/../include/define.h"
#line 408 "../src/../include/define.h"

#line 410 "../src/../include/define.h"
#line 411 "../src/../include/define.h"
#line 412 "../src/../include/define.h"
#line 413 "../src/../include/define.h"
#line 414 "../src/../include/define.h"
#line 415 "../src/../include/define.h"
#line 416 "../src/../include/define.h"
#line 417 "../src/../include/define.h"


#line 420 "../src/../include/define.h"
#line 421 "../src/../include/define.h"
#line 422 "../src/../include/define.h"
#line 423 "../src/../include/define.h"
#line 424 "../src/../include/define.h"
#line 425 "../src/../include/define.h"
#line 426 "../src/../include/define.h"
#line 427 "../src/../include/define.h"

#line 429 "../src/../include/define.h"
#line 430 "../src/../include/define.h"
#line 431 "../src/../include/define.h"
#line 432 "../src/../include/define.h"
#line 433 "../src/../include/define.h"
#line 434 "../src/../include/define.h"
#line 435 "../src/../include/define.h"
#line 436 "../src/../include/define.h"

#line 438 "../src/../include/define.h"
#line 439 "../src/../include/define.h"
#line 440 "../src/../include/define.h"
#line 441 "../src/../include/define.h"
#line 442 "../src/../include/define.h"
#line 443 "../src/../include/define.h"
#line 444 "../src/../include/define.h"
#line 445 "../src/../include/define.h"

#line 447 "../src/../include/define.h"
#line 448 "../src/../include/define.h"
#line 449 "../src/../include/define.h"
#line 450 "../src/../include/define.h"
#line 451 "../src/../include/define.h"
#line 452 "../src/../include/define.h"
#line 453 "../src/../include/define.h"
#line 454 "../src/../include/define.h"

#line 456 "../src/../include/define.h"
#line 522 "../src/../include/define.h"

#line 524 "../src/../include/define.h"
#line 526 "../src/../include/define.h"

#line 528 "../src/../include/define.h"
#line 530 "../src/../include/define.h"

 
void Setup(void); 
void Init_Exp(void);

void isr(void);
void isrhandler(void); 

void putrsUSART(const rom char *data); 
void putsUSART(char *data); 

void Delay10us(UINT32 tenMicroSecondCounter);
void DelayMs(UINT16 ms);

void updateOutput(void);

void I2CStart(void); 
void I2CReStart(void);
void I2CStop(void); 
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




#line 588 "../src/../include/define.h"
#line 589 "../src/../include/define.h"
#line 590 "../src/../include/define.h"
#line 591 "../src/../include/define.h"

#line 593 "../src/../include/define.h"
#line 594 "../src/../include/define.h"
#line 595 "../src/../include/define.h"


#line 598 "../src/../include/define.h"
#line 599 "../src/../include/define.h"

#line 601 "../src/../include/define.h"
#line 602 "../src/../include/define.h"

#line 604 "../src/../include/define.h"
#line 605 "../src/../include/define.h"

#line 607 "../src/../include/define.h"
#line 608 "../src/../include/define.h"

#line 610 "../src/../include/define.h"
#line 611 "../src/../include/define.h"

#line 613 "../src/../include/define.h"
#line 614 "../src/../include/define.h"

#line 616 "../src/../include/define.h"
#line 617 "../src/../include/define.h"



#line 621 "../src/../include/define.h"

#line 623 "../src/../include/define.h"
#line 624 "../src/../include/define.h"

#line 626 "../src/../include/define.h"
#line 627 "../src/../include/define.h"

#line 629 "../src/../include/define.h"
#line 630 "../src/../include/define.h"

#line 632 "../src/../include/define.h"
#line 633 "../src/../include/define.h"

#line 635 "../src/../include/define.h"

#line 637 "../src/../include/define.h"
#line 638 "../src/../include/define.h"

#line 3 "../src/Can458old.c"


#line 1 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 5 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 7 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 9 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 11 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 13 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 15 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 17 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 19 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 21 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 23 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 25 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 27 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 29 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 31 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 33 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 35 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 37 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 39 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 41 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 43 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 45 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 47 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 49 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 51 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 53 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 55 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 57 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 59 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 61 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 63 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 65 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 67 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 69 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 71 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 73 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 75 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 77 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 79 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 81 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 83 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 85 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 87 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 89 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 91 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 93 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 95 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 97 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 99 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 101 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 103 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 105 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 107 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 109 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 111 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 113 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 115 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 117 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 119 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 121 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 123 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 125 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 127 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 129 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 131 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 133 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 135 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 137 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 139 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 141 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 143 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 145 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 147 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 149 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 151 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 153 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 155 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 157 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 159 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 161 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 163 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 165 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 167 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 169 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 171 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 173 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 175 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 177 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 179 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 181 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 183 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 185 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 187 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 189 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 191 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 193 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 195 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 197 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 199 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 201 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 203 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 205 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 207 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 209 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 211 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 213 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 215 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 217 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 219 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 221 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 223 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 225 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 227 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 229 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 231 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 233 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 235 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 237 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 239 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 241 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 243 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 245 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 247 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 249 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 251 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 253 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 255 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 257 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 259 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 261 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 263 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 265 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 267 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 269 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 271 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 273 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 275 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 277 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 279 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 281 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 283 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 285 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 287 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 289 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 291 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 293 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 295 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 297 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 299 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 301 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 303 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 305 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 307 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 309 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 311 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 313 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 315 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 317 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 319 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 321 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 323 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 325 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 327 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 329 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 331 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 333 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 335 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 337 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 339 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 341 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 343 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 345 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 347 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 349 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 351 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 353 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 355 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 357 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 359 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 361 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 363 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 365 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 367 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 369 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 371 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 373 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 375 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 377 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 379 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 381 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 383 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 385 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 387 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 389 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 391 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 393 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 395 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 397 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 399 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 401 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 403 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 405 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 407 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 409 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 411 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 413 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 415 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 417 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 419 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 421 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 423 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 425 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 427 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 429 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 431 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 433 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 435 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 437 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 439 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 441 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 443 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 445 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 447 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 449 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 451 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 453 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 455 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 457 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 459 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 461 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 463 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 465 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 467 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 469 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 471 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 473 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 475 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 477 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 479 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 481 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 483 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 485 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 487 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 489 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 491 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 493 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 495 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 497 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 499 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 501 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 503 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 505 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 507 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 509 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 511 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 513 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 515 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 517 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 519 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 521 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 523 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 525 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 527 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 529 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 531 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 533 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 535 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 537 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 539 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 541 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 543 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 545 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 547 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 549 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 551 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 553 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 555 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 557 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 559 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 561 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 563 "c:/program files (x86)/microchip/mplabc18/v3.40/bin/../h/p18cxxx.h"
#line 5 "../src/Can458old.c"


#line 8 "../src/Can458old.c"
#line 9 "../src/Can458old.c"
#line 10 "../src/Can458old.c"
#line 11 "../src/Can458old.c"
#line 12 "../src/Can458old.c"

#line 14 "../src/Can458old.c"
#line 15 "../src/Can458old.c"
#line 16 "../src/Can458old.c"
#line 17 "../src/Can458old.c"
#line 18 "../src/Can458old.c"
#line 19 "../src/Can458old.c"
#line 20 "../src/Can458old.c"

#line 22 "../src/Can458old.c"
#line 23 "../src/Can458old.c"
#line 24 "../src/Can458old.c"
#line 25 "../src/Can458old.c"
#line 26 "../src/Can458old.c"
#line 27 "../src/Can458old.c"
#line 28 "../src/Can458old.c"


#line 31 "../src/Can458old.c"
#line 32 "../src/Can458old.c"
#line 33 "../src/Can458old.c"
#line 34 "../src/Can458old.c"
#line 35 "../src/Can458old.c"
#line 36 "../src/Can458old.c"

#line 38 "../src/Can458old.c"
#line 39 "../src/Can458old.c"
#line 40 "../src/Can458old.c"
#line 41 "../src/Can458old.c"
#line 42 "../src/Can458old.c"
#line 43 "../src/Can458old.c"
#line 44 "../src/Can458old.c"
#line 45 "../src/Can458old.c"


#line 51 "../src/Can458old.c"
#line 52 "../src/Can458old.c"
#line 53 "../src/Can458old.c"

union RXBuffer {				
	unsigned char Data[14];		
	struct {					
		union {
			unsigned char Byte;
			struct {
				unsigned FILHIT0:1;
				unsigned JTOFF:1;
				unsigned RXB0DBEN:1;
				unsigned RXRTRRO:1;
				unsigned :1;
				unsigned RXM0:1;
				unsigned RXM1:1;
				unsigned RXFUL:1;
			} Bits;
		} RXBCON;
		union {
			unsigned char Byte;
		} RXBSIDH;
		union {
			unsigned char Byte;
			struct {
				unsigned EID16:1;
				unsigned EID17:1;
				unsigned :1;
				unsigned EXID:1;
				unsigned SRR:1;
				unsigned SID0:1;
				unsigned SID1:1;
				unsigned SID2:1;
			} Bits;
		} RXBSIDL;
		union {
			unsigned char Byte;
		} RXBEIDH;
		union {
			unsigned char Byte;
		} RXBEIDL;
		union {
			unsigned char Byte;
			struct {
				unsigned DLC0:1;
				unsigned DLC1:1;
				unsigned DLC2:1;
				unsigned DLC3:1;
				unsigned RB0:1;
				unsigned RB1:1;
				unsigned RXRTR:1;
				unsigned :1;
			} Bits;
		} RXBDLC;
		union {
			unsigned char Array[8];
			struct {
				unsigned char RXBD0;
				unsigned char RXBD1;
				unsigned char RXBD2;
				unsigned char RXBD3;
				unsigned char RXBD4;
				unsigned char RXBD5;
				unsigned char RXBD6;
				unsigned char RXBD7;
			} Bytes;
		} RXBD;
	} Specific;
};

union TXBuffer {					
	unsigned char Data[14];
	struct {
		union {
			unsigned char Byte;
			struct {
				unsigned TXPRI0:1;
				unsigned TXPRI1:1;
				unsigned :1;
				unsigned TXREQ:1;
				unsigned TXERR:1;
				unsigned TXLARB:1;
				unsigned TXABT:1;
			} Bits;
		} TXBCON;
		union {
			unsigned char Byte;
		} TXBSIDH;
		union {
			unsigned char Byte;
			struct {
				unsigned EID16:1;
				unsigned EID17:1;
				unsigned :1;
				unsigned EXIDE:1;
				unsigned :1;
				unsigned SID0:1;
				unsigned SID1:1;
				unsigned SID2:1;
			} Bits;
		} TXBSIDL;
		union {
			unsigned char Byte;
		} TXBEIDH;
		union {
			unsigned char Byte;
		} TXBEIDL;
		union {
			unsigned char Byte;
			struct {
				unsigned DLC0:1;
				unsigned DLC1:1;
				unsigned DLC2:1;
				unsigned DLC3:1;
				unsigned :1;
				unsigned :1;
				unsigned TXRTR:1;
				unsigned :1;
			} Bits;
		} TXBDLC;
		union {
			unsigned char Array[8];
			struct {
				unsigned char TXBD0;
				unsigned char TXBD1;
				unsigned char TXBD2;
				unsigned char TXBD3;
				unsigned char TXBD4;
				unsigned char TXBD5;
				unsigned char TXBD6;
				unsigned char TXBD7;
			} Bytes;
		} TXBD;
	} Specific;
};

union RXBuffer RXMessage[4  ];		
union TXBuffer TXMessage[4  ];		
char RXRPtr = 0;						
char RXWPtr = 0;						
char TXRPtr = 0;						
char TXWPtr = 0;						



#line 211 "../src/Can458old.c"
 
void CANGetMessage(void);


#line 231 "../src/Can458old.c"
 
 char CANPutMessage(void);


#line 250 "../src/Can458old.c"
 
char CANOpen(unsigned char CONFIG1, unsigned char CONFIG2, unsigned char CONFIG3)
{
	TRISBbits.TRISB2  = 0;
	TRISBbits.TRISB3  = 1;
	PIE3 = 0;										
	PIR3 = 0;										
	CANCON = (0x9F  & 0xE0 ) | (CANCON & 0x3F);	
	while((CANSTAT & 0xE0 ) != (0x9F  & 0xE0 ));	

	BRGCON1 = CONFIG1;
	BRGCON2 = CONFIG2;
	BRGCON3 = CONFIG3;
	
	RXB0CON = 0x04;					
	RXB1CON = 0x00;					
	
	
	RXF0SIDL = (unsigned char)(0   << 5);
	RXF0SIDH = (unsigned char)(0   >> 3);
	RXF1SIDL = (unsigned char)(0   << 5);
	RXF1SIDH = (unsigned char)(0   >> 3);
	RXF2SIDL = (unsigned char)(0   << 5);
	RXF2SIDH = (unsigned char)(0   >> 3);
	RXF3SIDL = (unsigned char)(0   << 5);
	RXF3SIDH = (unsigned char)(0   >> 3);
	RXF4SIDL = (unsigned char)(0   << 5);
	RXF4SIDH = (unsigned char)(0   >> 3);
	RXF5SIDL = (unsigned char)(0   << 5);
	RXF5SIDH = (unsigned char)(0   >> 3);


	RXM0EIDL = (unsigned char)(0   & 0xFF);	
	RXM0EIDH = (unsigned char)((0   >> 8) & 0xFF);
	RXM0SIDL = (unsigned char)((0   >> 16) & 0x03) | (unsigned char)((0   >> 13) & 0xE0) | 0x08;
	RXM0SIDH = (unsigned char)((0   >> 21) & 0xFF);
	RXM1EIDL = (unsigned char)(0   & 0xFF);	
	RXM1EIDH = (unsigned char)((0   >> 8) & 0xFF);
	RXM1SIDL = (unsigned char)((0   >> 16) & 0x03) | (unsigned char)((0   >> 13) & 0xE0) | 0x08;
	RXM1SIDH = (unsigned char)((0   >> 21) & 0xFF);

	CIOCON = 0x20;						







	CANCON = (0x1F  & 0xE0 ) | (CANCON & (0xE0  ^ 0xFF));					
	while((CANSTAT & 0xE0 ) != (0x1F  & 0xE0 ));		

	PIE3 = 0x1F  & 0xE3;			
	PIR3 = 0x18;						



	TXB0SIDL = (unsigned char)(0x201  << 5);
	TXB0SIDH = (unsigned char)(0x201  >> 3);		
	TXB0DLC = 0x08;												
	TXB0CON = 0x00;												
	TXB0CONbits.TXREQ  = 1;
	
	return 0;
}



#line 333 "../src/Can458old.c"
 
void CANISR(void)
{
	unsigned char TempCANCON;

	if(PIR3 & PIE3)
	{
		TempCANCON = CANCON;
		
		if(PIR3bits.RXB0IF  && PIE3bits.RXB0IE )
		{
			PIR3bits.RXB0IF  = 0;		
			CANCON = CANCON & 0xF0 | 0x0C ;
			CANGetMessage();
		}
		else if(PIR3bits.RXB1IF  && PIE3bits.RXB1IE )
		{
			PIR3bits.RXB1IF  = 0;		
			CANCON = CANCON & 0xF0 | 0x0A ;
			CANGetMessage();
		}
		else if(PIR3bits.TXB0IF  && PIE3bits.TXB0IE )
		{
			CANCON = CANCON & 0xF0 | 0x08 ;
			if(CANPutMessage())
				PIE3bits.TXB0IE  = 0;
			else
				PIR3bits.TXB0IF  = 0;
		}
		else if(PIR3bits.TXB1IF  && PIE3bits.TXB1IE )
		{
			CANCON = CANCON & 0xF0 | 0x06 ;
			if(CANPutMessage())
				PIE3bits.TXB1IE  = 0;
			else
				PIR3bits.TXB1IF  = 0;
		}
		else if(PIR3bits.TXB2IF  && PIE3bits.TXB2IE )
		{
			CANCON = CANCON & 0xF0 | 0x04 ;
			if(CANPutMessage())			
				PIE3bits.TXB2IE  = 0;				
			else						
				PIR3bits.TXB2IF  = 0;				
		}
		else if(PIR3bits.ERRIF  && PIE3bits.ERRIE )
		{
			PIR3bits.ERRIF  = 0;			
#line 384 "../src/Can458old.c"
								
		}
		else if(PIR3bits.WAKIF  && PIE3bits.WAKIE )
		{
			PIR3bits.WAKIF  = 0;			
		}

		CANCON = TempCANCON;
	}
}



#line 412 "../src/Can458old.c"
 
void CANGetMessage(void)
{
	unsigned char i;
	if(++RXWPtr >= 4  )		
		RXWPtr = 0;				
	
	for(i=0;i<14;i++)
	{
		RXMessage[RXWPtr].Data[i] = *(unsigned char *)(0xF60+i);
	}
	RXB0CONbits.RXFUL  = 0;
}



#line 444 "../src/Can458old.c"
 
char CANPutMessage(void)
{
	unsigned char i;
	if(TXWPtr != TXRPtr)						
	{
		if(++TXRPtr >= 4  )					
			TXRPtr = 0;
		for(i=0;i<14;i++)
			*(unsigned char *)(0xF60+i) = TXMessage[TXRPtr].Data[i];
		RXB0CONbits.RXRTRRO  = 1;	
		return 0;
	}
	else
		return 1;
}



#line 480 "../src/Can458old.c"
 
char CANPut(struct CANMessage Message)
{
	unsigned char TempPtr, i;
	if(TXWPtr == TXRPtr-1 || (TXWPtr == 4  -1 && TXRPtr == 0))	
		return 1;
		
	
	
	if(TXWPtr >= 4  -1)					
	{
		TempPtr = 0;							
	}
	else
	{
		TempPtr = TXWPtr+1;							
	}
	
	if(Message.NoOfBytes > 8)					
		Message.NoOfBytes = 8;	
		
	TXMessage[TempPtr].Specific.TXBDLC.Byte = Message.NoOfBytes;				

	if(!Message.Remote)			
	{
		TXMessage[TempPtr].Specific.TXBDLC.Bits.TXRTR = 0;								
		
		for(i = 0; i < Message.NoOfBytes; i++)	
		{
			TXMessage[TempPtr].Specific.TXBD.Array[i] = Message.Data[i];
		}
	}
	else											
	{
		TXMessage[TempPtr].Specific.TXBDLC.Bits.TXRTR = 1;								
	}

	TXMessage[TempPtr].Specific.TXBSIDL.Byte = (unsigned char)((Message.Address << 5) & 0xFF);	
	TXMessage[TempPtr].Specific.TXBSIDH.Byte = (unsigned char)((Message.Address >> 3) & 0xFF);	
	TXMessage[TempPtr].Specific.TXBSIDL.Bits.EXIDE = 0; 

	TXMessage[TempPtr].Specific.TXBCON.Byte = Message.Priority & 0x03;	
	
	TXWPtr = TempPtr;

	
	
	
	if(!PIE3bits.TXB0IE )			
		PIE3bits.TXB0IE  = 1;		
	else if(!PIE3bits.TXB1IE )		
		PIE3bits.TXB1IE  = 1;		
	else if(!PIE3bits.TXB2IE )		
		PIE3bits.TXB2IE  = 1;	

	return 0;
}



#line 557 "../src/Can458old.c"
 
char CANRXMessageIsPending(void)
{
	if(RXWPtr != RXRPtr)
		return 1;
	else
		return 0;
}


#line 583 "../src/Can458old.c"
 
struct CANMessage CANGet(void)
{
	struct CANMessage ReturnMessage;
	unsigned char TempPtr, i;

	
#line 590 "../src/Can458old.c"
 
	if(RXRPtr >= 4  -1)					
	{
		TempPtr = 0;
	}
	else
	{
		TempPtr = RXRPtr+1;
	}
	
	ReturnMessage.NoOfBytes = RXMessage[TempPtr].Specific.RXBDLC.Byte & 0x0F;					
	if(RXMessage[TempPtr].Specific.RXBCON.Bits.RXRTRRO)	
	{
		ReturnMessage.Remote = 1;
	}
	else				
	{
		ReturnMessage.Remote = 0;									
		for(i = 0; i < ReturnMessage.NoOfBytes; i++)				
			ReturnMessage.Data[i] = RXMessage[TempPtr].Specific.RXBD.Array[i];
	}
	CANCON = CANCON & 0xF0;
	
	ReturnMessage.Address = (unsigned int)(RXMessage[TempPtr].Specific.RXBSIDH.Byte) << 3;			
	ReturnMessage.Address |= (RXMessage[TempPtr].Specific.RXBSIDL.Byte >> 5);

	ReturnMessage.Ext = 0;		
	
	RXRPtr = TempPtr;
	return ReturnMessage;		
}



#line 642 "../src/Can458old.c"
 
void CANSetMode(unsigned char Mode)
{
	CANCON = (Mode & 0xE0 ) | (CANCON & (0xE0  ^ 0xFF));
	while((CANSTAT & 0xE0 ) != (Mode & 0xE0 ));
}
