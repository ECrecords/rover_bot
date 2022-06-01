#include "pwm_controller.h"

static void PwmCtrl_SetPer(PwmCtrl *pwm_p, u32 period);

int PwmCtrl_Initialize(PwmCtrl *pwm_p, u32 baseaddress, u32 input_clk_hz, u32 target_hz)
{
	(pwm_p->Config).BaseAddress = baseaddress;
	(pwm_p->Config).InputClockHz = input_clk_hz;
	(pwm_p->Config).TargetClockHz = target_hz;

	pwm_p->IsReady = 1;

	PwmCtrl_SetPer(pwm_p, (u32) (pwm_p->Config).InputClockHz/(pwm_p->Config).TargetClockHz);

	pwm_p->Config.duty = 0.0;
	PwmCtrl_SetPW_u32(pwm_p, pwm_p->Config.duty);

	return XST_SUCCESS;
}

static void PwmCtrl_SetPer(PwmCtrl *pwm_p, u32 period)
{
	Xil_Out32((pwm_p->Config).BaseAddress + PERIOD_OFFSET, period);
}


int PwmCtrl_SetFreq(PwmCtrl *pwm_p, u32 target_hz)
{
	if (pwm_p->IsReady != 1) return XST_FAILURE;

	(pwm_p->Config).TargetClockHz = target_hz;

	PwmCtrl_SetPer(pwm_p, (u32) pwm_p->Config.InputClockHz / (pwm_p->Config).TargetClockHz);


	PwmCtrl_SetDuty(pwm_p, pwm_p->Config.duty);

	return XST_SUCCESS;
}


u32 PwmCtrl_GetPW_u32(PwmCtrl *pwm_p)
{
	return Xil_In32(pwm_p->Config.BaseAddress + PULSEWIDTH_OFFSET);
}

int PwmCtrl_SetPW_u32(PwmCtrl *pwm_p, u32 pulsewidth)
{
	Xil_Out32((pwm_p->Config).BaseAddress + PULSEWIDTH_OFFSET, pulsewidth);
	return XST_SUCCESS;
}

u32 PwmCtrl_GetPer_u32(PwmCtrl *pwm_p)
{
	return Xil_In32(pwm_p->Config.BaseAddress + PERIOD_OFFSET);
}

int PwmCtrl_SetDuty(PwmCtrl *pwm_p, float duty)
{
	u32 curr_period;
	u32 tmp_pulsewidth;

	if (pwm_p->IsReady == 0) return XST_FAILURE;

	curr_period = PwmCtrl_GetPer_u32(pwm_p);

	tmp_pulsewidth = (u32) curr_period * duty;

	pwm_p->Config.duty = duty;
	PwmCtrl_SetPW_u32(pwm_p, tmp_pulsewidth);

	return XST_SUCCESS;
}


//float PwmCtrl_GetDuty(PwmCtrl *pwm_p)
//{
//	double duty;
//	u32 curr_period = Xil_In32((pwm_p->Config).BaseAddress + PERIOD_OFFSET);
//	u32 curr_pulsewidth = Xil_In32((pwm_p->Config).BaseAddress + PULSEWIDTH_OFFSET);
//
//	duty = (curr_pulsewidth / (float)curr_period) * 100.0;
//
//	xil_printf("Period: %d, Pulse Width: %d | Duty: %d \n", curr_period, curr_pulsewidth, duty*100.0);
//
//	return duty;
//}
