// include the c and hal files that we need in main()
#include <string.h>
#include "sys/alt_stdio.h"
#include "alt_types.h"

#include "altera_avalon_spi_regs.h"
#include "altera_avalon_spi.h"
// these includes allow us to perform a quick sanity check that the system was properly assembled in SOPC Builder
#include "system.h"
#include "inc/system_validation.h"

// all helper routine includes are condensed into this one file for neatness
#include "inc/main_includes.h"

#define MAX_COUNT 0xFF  //use a 8-bit maximum count value since we have a 8-bit LED PIO

void do_count( void );


// the main() application routine
int main(void)
{
  // declare the local variables need in main()
  
  // announce that we're running on STDOUT
  alt_printf("\nled_control program starting...\n\n");
  alt_printf ("CONGRATULATIONS!  You have successfully compiled a Nios II project!\n");

  // initialize some peripherals and helper routines
  alarm_init();           // see src/alarm_util.c
//    key_init();             // see src/key_util.c
//    sw_init();              // see src/sw_util.c
//    uart_init();            // see src/uart_util.c
  
  // start an infinite loop

  while(1)
  {
	  char* input = "";
	  while( '\n' != (*input = alt_getchar()) )
	  {
		  input++;
	  }
	  alt_printf( "input is %s\n", input );

	  if( 0 == strcmp("counter", input) )
	  {
		  do_count();
	  }

	//int alt_avalon_spi_command(alt_u32 base, alt_u32 slave,
	//                           alt_u32 write_length, const alt_u8 * write_data,
	//                           alt_u32 read_length, alt_u8 * read_data,
	//                           alt_u32 flags)

	int len = 0;

	alt_u32 write_length = SPI_0_DATABITS;
	const alt_u8 write_data = 0xA;
	alt_u32 read_length = SPI_0_DATABITS;
	alt_u8 read_data = 0;
	alt_u32 flags = ALT_AVALON_SPI_COMMAND_MERGE; //??
	while( len == 0 )
	{
		len = alt_avalon_spi_command( SPI_0_BASE,
									  0,
									  write_length,
									  &write_data,
									  read_length,
									  &read_data,
									  flags );

		alt_printf( "\ndata length read: %x\n", len );
		if( len != 0 )
		{
			alt_printf( "\ndata: %x\n", read_data );
		}
	}


  }
  // we should never get to this point
  return(0);
}

void do_count( void )
{
	while( 1 )
	{
		alt_u8 binary_count;
		char input[5];
		int dir;
		alt_printf("\nPress 'u' to count up\n");
		alt_printf("Press 'd' to count down\n");
		alt_printf("Press '3' to count by threes\n");
		alt_printf("Press 'u5' to count up fives\n");
		alt_printf("Press 'd10' to count down by tens\n");

		//input = alt_getchar();
		int i = 0;
		while( '\n' != (input[i] = alt_getchar() ) )
		{
			i++;
		}

		alt_printf( "You selected: '%s'\n", input );
		if (input[0] == 'u')
		{
			if( input[1] == '5' )
			{
				dir = 5;
				alt_printf(" -  counting up by 5\n");
			}
			else
			{
				dir = 1;
				alt_printf(" -  counting up by 1\n");
			}
			binary_count = 0;
		}
		else if (input[0] == 'd')
		{
			if( input[1] == '1' && input[2] == '0' )
			{
				dir = -10;
				alt_printf(" -  counting down by 10\n");
			}
			else
			{
				dir = -1;
				alt_printf(" -  counting down by 1\n");
			}
			binary_count = MAX_COUNT;
		}
		else if (input[0] == '3')
		{
			dir = 3;
			binary_count = 0;
			alt_printf(" -  counting up by 3\n");
		}
		else
		{
			dir = 1;
			binary_count = MAX_COUNT;
			alt_printf("INVALID ENTRY");
		}

		// initialize the line wrap count variable
		PRINT_STDIO_WRAP_COUNT = 0;

		// print the binary count out the STDOUT
		print_binary_count_stdio(binary_count);         // see src/jtag_uart_util.c

		// update the green led display with the binary count
		update_led(binary_count);                      // see src/led_util.c

		// wait for the delay period
		delay_wait();                                   // see src/delay_wait.c

		// count until we reach all the maximum count
		while( (binary_count < MAX_COUNT && dir > 0) || (binary_count > 0 && dir < 0) )
		{
			static alt_u8 tmp = 0;

			tmp = binary_count + dir;
			if( (0 > dir) && (binary_count < tmp) )
			{
				binary_count = 0;
			}
			else
			{
				binary_count = tmp;
			}

			// increment the binary counter
			//binary_count = binary_count + dir;

			// print the binary count out the STDOUT
			print_binary_count_stdio(binary_count);         // see src/jtag_uart_util.c
            
			// update the green led display with the binary count
			update_led(binary_count);                      // see src/led_util.c
    
			// wait for the delay period
			delay_wait();                                   // see src/delay_wait.c
		}
		// announce loop completion on STDOUT and the UART
		alt_printf("\n\n LED control program completed its loop ...\n\n");

		// wait for the delay period
		delay_wait();                                   // see src/delay_wait.c
	}
}
