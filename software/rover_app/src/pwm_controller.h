#ifndef SRC_PWMCTRL_H
#define SRC_PWMCTRL_H

#include "xil_types.h"
#include "xil_io.h"
#include "xstatus.h"

#define PERIOD_OFFSET 0x0
#define PULSEWIDTH_OFFSET 0x4

typedef struct PwmCtrl_Config_STRUCT
{
	u32 BaseAddress;
	u32 InputClockHz;
	u32 TargetClockHz;
	float duty;
} PwmCtrl_Config;

typedef struct PwmCtrl_STRUCT
{
	PwmCtrl_Config Config;
	u32 IsReady;
} PwmCtrl;

int PwmCtrl_Initialize(PwmCtrl *pwm_p, u32 baseaddress, u32 input_clk_hz, u32 target_hz);

int PwmCtrl_SetFreq(PwmCtrl *pwm_p, u32 target_hz);

u32 PwmCtrl_GetPW_u32(PwmCtrl *pwm_p);

int PwmCtrl_SetPW_u32(PwmCtrl *pwm_p, u32 pulsewidth);

u32 PwmCtrl_GetPer_u32(PwmCtrl *pwm_p);

int PwmCtrl_SetDuty(PwmCtrl *pwm_p, float duty);

//float PwmCtrl_GetDuty(PwmCtrl *pwm_p);

#endif



