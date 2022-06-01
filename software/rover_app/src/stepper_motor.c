#include "stepper_motor.h"

int StepMot_Initialize(StepperMotor *stepmot_p, XGpio *gpio_p, PwmCtrl *pwm_p) {

//	if (stepmot_p->gpio->IsReady != XIL_COMPONENT_IS_READY || stepmot_p->pwm->IsReady != 1 )
//		return XST_FAILURE;

	stepmot_p->gpio = gpio_p;

	stepmot_p->pwm = pwm_p;

	XGpio_SetDataDirection(stepmot_p->gpio, CHANNEL_1, ALL_GPIO_OUTPUT);

	stepmot_p->isReady = true;

	StepMot_RESET_OFF(stepmot_p);
	StepMot_WAKE(stepmot_p);
	StepMot_DIRECTION(stepmot_p, false);
	StepMot_RESULTION(stepmot_p, FULL_STEP);
	StepMot_ENABLE(stepmot_p);

	return XST_SUCCESS;
}

int StepMot_ENABLE(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;
	XGpio_DiscreteClear(stepmot->gpio, CHANNEL_1, ENABLE_MASK);
	return XST_SUCCESS;
}

int StepMot_DISABLE(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;
	XGpio_DiscreteSet(stepmot->gpio, CHANNEL_1, ENABLE_MASK);
	return XST_SUCCESS;
}

int StepMot_SLEEP(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;

	XGpio_DiscreteClear(stepmot->gpio, CHANNEL_1, SLEEP_MASK);
	return XST_SUCCESS;
}

int StepMot_RESET_OFF(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;

	XGpio_DiscreteSet(stepmot->gpio, CHANNEL_1, RESET_MASK);
	return XST_SUCCESS;
}

int StepMot_RESET_ON(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;

	XGpio_DiscreteClear(stepmot->gpio, CHANNEL_1, RESET_MASK);
	return XST_SUCCESS;
}

int StepMot_WAKE(StepperMotor *stepmot) {
	if (stepmot->isReady == false)
		return XST_FAILURE;

	XGpio_DiscreteSet(stepmot->gpio, CHANNEL_1, SLEEP_MASK);
	return XST_SUCCESS;
}

int StepMot_RESET(StepperMotor *stepmot) {
	return XST_FAILURE;
}

int StepMot_DIRECTION(StepperMotor *stepmot, bool dir) {

	if (dir == false)
		XGpio_DiscreteSet(stepmot->gpio, CHANNEL_1, DIRECTION_MASK);

	else if (dir == true)
		XGpio_DiscreteClear(stepmot->gpio, CHANNEL_1, DIRECTION_MASK);

	return XST_SUCCESS;
}

int StepMot_RESULTION(StepperMotor *stepmot, u8 step_res) {
	u32 curr_gpio_reg;

	if (stepmot->isReady == false)
		return XST_FAILURE;

	if (step_res == FULL_STEP || step_res == HALF_STEP
			|| step_res == QUARTER_STEP || step_res == EIGHTH_STEP
			|| step_res == SIXTEENTH_STEP) {

		curr_gpio_reg = XGpio_DiscreteRead(stepmot->gpio, CHANNEL_1);
		curr_gpio_reg = curr_gpio_reg & ~(STEP_RESOLUTION_MASK);
		XGpio_DiscreteWrite(stepmot->gpio, CHANNEL_1,
				(u32) (step_res | curr_gpio_reg));
		return XST_SUCCESS;
	}

	return XST_FAILURE;
}
