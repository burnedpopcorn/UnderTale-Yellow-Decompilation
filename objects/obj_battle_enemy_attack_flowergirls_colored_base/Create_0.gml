var box;

damage_number = scr_determine_damage_number_enemy("flower girls", "void", "void");
box = 3154;
dir = choose(1, -1);

if (dir == 1)
    x -= (sprite_width - 200);

move_speed = 4;
alarm[0] = 20;
can_move = false;
flowers_instance = instance_create(x, y, choose(obj_battle_enemy_attack_flowergirls_colored_blue, obj_battle_enemy_attack_flowergirls_colored_orange));
