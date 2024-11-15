var battle_box;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
battle_box = 3154;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
bullet_spawn_direction = irandom_range(0, 360);
bullet_spawn_direction_inc = 30;
fireball_count = 5;

if (global.hotland_flag[2] == 2)
    fireball_count = 6;

if (global.hotland_flag[2] == 3)
    fireball_count = 7;

fireball_list = ds_list_create();
bullet_hit_points = 3;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;

if (x < battle_box.x)
    x_target = battle_box.bbox_right + 50;
else
    x_target = battle_box.bbox_left - 50;

hspeed_target = sign(battle_box.x - x) * 3;

if (global.hotland_flag[2] == 3)
    hspeed_target = sign(battle_box.x - x) * 4;

fade_out = false;
