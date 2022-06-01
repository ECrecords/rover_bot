#include "xparameters.h"
#include "pwm_controller.h"
#include "stepper_motor.h"
#include "sleep.h"

int main()
{
	PwmCtrl pwm;
	XGpio	gpio;
	StepperMotor step;

	bool dir = false;

	PwmCtrl_Initialize(&pwm, XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, 100000000, 200);
	PwmCtrl_SetDuty(&pwm, 0.5);

	XGpio_Initialize(&gpio, XPAR_GPIO_0_DEVICE_ID);
	StepMot_Initialize(&step, &gpio, &pwm);

	sleep(5);

	while(1)
	{
		StepMot_DISABLE(&step);
		dir = !dir;
		StepMot_DIRECTION(&step, dir);

		sleep(1);

		StepMot_ENABLE(&step);
		sleep(5);
	}


	return 0;
}
