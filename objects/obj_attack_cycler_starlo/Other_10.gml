if (global.turns_passed != 9 && global.turns_passed != 10)
    global.attack_cycle += 1;

if (global.attack_cycle > global.attack_cycle_max)
    global.attack_cycle = 1;

if (global.turns_passed >= 11 && global.attack_cycle < 11)
    global.attack_cycle = 11;
