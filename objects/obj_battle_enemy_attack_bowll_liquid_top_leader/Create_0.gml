damage_number = scr_determine_damage_number_enemy("bowll a", "bowll b", "bowll c");
image_speed = 1/3;
image_index = 0;
image_alpha = 0;
fade_in_speed = 0.1;
default_y = y;

for (i = 1; i <= 2; i++)
    instance_create(x + (sprite_width * i), y, obj_battle_enemy_attack_bowll_liquid_top_slave);

instance_create(x, y + 1, obj_battle_enemy_attack_bowll_liquid_bottom);
