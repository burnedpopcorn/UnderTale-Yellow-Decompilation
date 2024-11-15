if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
is_caught = false;
tongue_parent = -4;
hsp = 3;

if (x > 320)
    hsp *= -1;

jitter = 2;
x_normal = x;
x_offset = 0;
y_offset = 0;
