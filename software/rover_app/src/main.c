#include <stdlib.h>
#include "xparameters.h"
#include "pwm_controller.h"
#include "stepper_motor.h"
#include "sleep.h"

int main() {

	StepperMotor *step;
	bool dir = false;

	const int NELEMS = 2;
	const u32 PWMCTRL_ADDR[2] = { XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR,
	XPAR_PWM_CONTROLLER_1_S00_AXI_BASEADDR };
	const u32 GPIO_ID[2] = { XPAR_AXI_GPIO_0_DEVICE_ID,
	XPAR_AXI_GPIO_1_DEVICE_ID };

	step = (StepperMotor *) malloc(sizeof(StepperMotor) * NELEMS);

	for (int i = 0; i < NELEMS; i++) {
		step[i].gpio = (XGpio *) malloc(sizeof(XGpio));
		step[i].pwm = (PwmCtrl *) malloc(sizeof(PwmCtrl));

		PwmCtrl_Initialize(step[i].pwm, PWMCTRL_ADDR[i], 100000000, 500);
		PwmCtrl_SetDuty(step[i].pwm, 0.1);

		XGpio_Initialize(step[i].gpio, GPIO_ID[i]);
		StepMot_Initialize(&step[i], step[i].gpio, step[i].pwm);
	}

	sleep(5);
	while (1) {
		dir = !dir;
		for (int i = 0; i < NELEMS; i++) {
			StepMot_DISABLE(&step[i]);
			StepMot_DIRECTION(&step[i], dir);
		}

		sleep(1);
		for (int i = 0; i < NELEMS; i++) {
			StepMot_ENABLE(&step[i]);
		}
		sleep(5);
	}

	return 0;
}
