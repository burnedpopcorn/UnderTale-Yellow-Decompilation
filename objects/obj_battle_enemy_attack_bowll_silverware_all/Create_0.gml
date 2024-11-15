damage_number = scr_determine_damage_number_enemy("bowll a", "bowll b", "bowll c");
box = 3154;
image_speed = 0;
image_index = irandom_range(0, 2);
image_alpha = 0;

if (x < box.x)
    image_xscale = -1;
else
    image_xscale = 1;

if (y < box.y)
    dir = 1;
else
    dir = -1;

move_speed = obj_battle_enemy_attack_bowll_silverware_generator.silv_speed;
fade_state = 0;
fade_speed = 0.2;
