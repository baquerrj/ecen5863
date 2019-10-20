#include "sys/alt_stdio.h"
#include <stdio.h>
#include "altera_avalon_pio_regs.h"
#include "system.h"
void debouce(uint);
int main()
{ 
	int switch_datain, i=0;

	alt_putstr("Hello from Nios II..!!\n");


  while (1)
	  {

	    switch_datain = IORD_ALTERA_AVALON_PIO_DATA(SWITCH_BASE);
	  	IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,switch_datain);

/* ********************************* *
 *  switch_datain = 3 on KEY0 stroke
 *  switch_datain = 0 on KEY1 stroke
 *  ******************************** */

	  	switch (switch_datain)
	  	{
			case 0:
			{
				/* Check if KEY1 has been pressed next time, if yes, ignore it */

				if(i==0)
				{
				printf("Bijan, Todor, Roberto\n");
				switch_datain = 2;
				}
				i = 1; // Set flag to prevent bouncing KEY1
				break;
			}
			case 3:
			{
				/* Check if KEY0 has been pressed next time, if yes, ignore it */

				if(i==1)
				{
				printf("Todor, Roberto, Bijan\n");
				switch_datain = 2;
				}
				i = 0; // Set flag to prevent bouncing KEY0
				break;
			}
	  	}

	  }

  return 0;
}

