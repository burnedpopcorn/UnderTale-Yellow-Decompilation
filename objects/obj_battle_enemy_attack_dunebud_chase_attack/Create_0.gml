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
    sprite_rise[0] = spr_dunebud_attack_rise_c_r;
    sprite_rise[1] = spr_dunebud_attack_rise_c;
    sprite_sink[0] = spr_dunebud_attack_sink_c_r;
    sprite_sink[1] = spr_dunebud_attack_sink_c;
    sprite_move[0] = spr_dunebud_attack_move_c_r;
    sprite_move[1] = spr_dunebud_attack_move_c;
}
else
{
    sprite_rise[0] = spr_dunebud_attack_rise_r;
    sprite_rise[1] = spr_dunebud_attack_rise;
    sprite_sink[0] = spr_dunebud_attack_sink_r;
    sprite_sink[1] = spr_dunebud_attack_sink;
    sprite_move[0] = spr_dunebud_attack_move_r;
    sprite_move[1] = spr_dunebud_attack_move;
}

sprite_fly_begin[0] = spr_dunebud_attack_fly_begin_r;
sprite_fly_begin[1] = spr_dunebud_attack_fly_begin;
sprite_fly[0] = spr_dunebud_attack_fly_r;
sprite_fly[1] = spr_dunebud_attack_fly;
sprite_fly_end[0] = spr_dunebud_attack_fly_end_r;
sprite_fly_end[1] = spr_dunebud_attack_fly_end;
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
