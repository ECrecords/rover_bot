#ifndef SRC_STEPPERMOTOR_H
#define SRC_STEPPERMOTOR_H

#include "xil_types.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xstatus.h"
#include "xgpio.h"
#include "pwm_controller.h"
#include <stdbool.h>

#define GPIO_PIN1_MASK 0x00000001
#define GPIO_PIN2_MASK 0x00000002
#define GPIO_PIN3_MASK 0x00000004
#define GPIO_PIN4_MASK 0x00000008
#define GPIO_PIN5_MASK 0x00000010
#define GPIO_PIN6_MASK 0x00000020
#define GPIO_PIN7_MASK 0x00000040
#define GPIO_PIN8_MASK 0x00000080

#define FULL_STEP			0x00000000
#define HALF_STEP			0x00000004
#define QUARTER_STEP		0x00000002
#define EIGHTH_STEP			0x00000006
#define SIXTEENTH_STEP		0x00000007

#define STEP_RESOLUTION_MASK 	GPIO_PIN1_MASK | GPIO_PIN2_MASK | GPIO_PIN3_MASK

#define DIR_FWD	0
#define DIR_BWD	1

//#define DIRECTION(DIR) 	0x000000(DIR)0
#define DIRECTION_MASK 	GPIO_PIN4_MASK

#define ENABLE	0
#define DISABLE 1

#define ENABLE_MASK GPIO_PIN5_MASK

#define RESET_ON 0
#define RESET_OFF 1
#define RESET_MASK GPIO_PIN6_MASK

#define SLEEP_ON 0
#define SLEEP_OFF 1
#define SLEEP_MASK GPIO_PIN7_MASK

#define CHANNEL_1 1

#define GPIO_MASK 0x000000FF

#define GPIO_PIN1_MASK 0x00000001
#define GPIO_PIN2_MASK 0x00000002
#define GPIO_PIN3_MASK 0x00000004
#define GPIO_PIN4_MASK 0x00000008
#define GPIO_PIN5_MASK 0x00000010
#define GPIO_PIN6_MASK 0x00000020
#define GPIO_PIN7_MASK 0x00000040
#define GPIO_PIN8_MASK 0x00000080

#define ALL_GPIO_OUTPUT 0x00000000

typedef struct
{
	XGpio *gpio;
	PwmCtrl *pwm;
	bool isReady;

} StepperMotor;

int StepMot_Initialize(StepperMotor *stepmot_p, XGpio *gpio_P, PwmCtrl *pwm_p);

int StepMot_ENABLE(StepperMotor *stepmot);

int StepMot_DISABLE(StepperMotor *stepmot);

int StepMot_SLEEP(StepperMotor *stepmot);
int StepMot_WAKE(StepperMotor *stepmot);

int StepMot_RESET(StepperMotor *stepmot);

int StepMot_DIRECTION(StepperMotor *stepmot, bool dir);

int StepMot_RESULTION(StepperMotor *stepmot, u8 step_res);

#endif



