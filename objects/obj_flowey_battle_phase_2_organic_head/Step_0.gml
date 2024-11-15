if (live_call())
    return global.live_result;

event_inherited();

if (curve_x == 0)
    curve_x += 0.001;

f_x = ((((sin(curve_x) / curve_x) * (abs(curve_x + 8) - abs(curve_x - 5))) / ((13 * power((curve_x + 1) / 7, 4)) + 1)) * curve_amp) + 1;
image_xscale = f_x + (sin(current_time / 400) * 0.02) + 0.02;
image_yscale = f_x + (sin(current_time / 400) * 0.02) + 0.02;
curve_x += curve_spd;

if (curve_x >= 15)
    curve_x = curve_delay;

if (blink == -19)
    blink = irandom_range(20, 50);

blink--;

if (!instance_exists(obj_flowey_battle_phase_2_organic_weakpoint) || obj_flowey_battle_phase_2_organic_weakpoint.hp_self < 0)
    curve_spd = 0.9;
