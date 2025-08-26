damage_number = scr_determine_damage_number_enemy("dunebud a", "dunebud b", "dunebud c");
id_dunebud_enemy = global.id_store;
global.id_store = id;

with (id_dunebud_enemy)
    id_dunebud_attack = global.id_store;

id_dunebud_particles = -4;
side = 0;

if (id_dunebud_enemy.id_dunebud.sprite_index == spr_dunebud_critical)
    critical = true;
else
    critical = false;

if (critical == true)
{
    sprite_rise[0] = 1837;
    sprite_rise[1] = 1825;
    sprite_sink[0] = 1838;
    sprite_sink[1] = 1826;
    sprite_move[0] = 1839;
    sprite_move[1] = 1827;
}
else
{
    sprite_rise[0] = 1828;
    sprite_rise[1] = 1815;
    sprite_sink[0] = 1829;
    sprite_sink[1] = 1817;
    sprite_move[0] = 1832;
    sprite_move[1] = 1818;
}

sprite_fly_begin[0] = 1833;
sprite_fly_begin[1] = 1819;
sprite_fly[0] = 1834;
sprite_fly[1] = 1821;
sprite_fly_end[0] = 1835;
sprite_fly_end[1] = 1823;
sprite_index = sprite_rise[side];
image_speed_rise = 1/3;
image_speed_sink = 1/3;

if (critical == true)
    image_speed_move = 0.16666666666666666;
else
    image_speed_move = 1/3;

image_speed_fly_begin = 1/3;
image_speed_fly = 0;
image_speed_fly_end = 1/3;
image_speed = image_speed_rise;
image_index = 0;
can_sink = false;
alarm[0] = 180;

if (global.battle_enemy_name == "dunebud duo")
    alarm[0] = 220;

state = "animate";

if (critical == true)
{
    move_max = 1;
    move_accel = 0.16666666666666666;
    move_speed = 0;
    move_sign = 0;
}
else
{
    move_max = 6;
    move_accel = 1;
    move_speed = 0;
    move_sign = 0;
}

fly_speed = 10;
