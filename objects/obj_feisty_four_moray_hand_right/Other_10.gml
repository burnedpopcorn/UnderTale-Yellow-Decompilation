var enemy_dead, enemy_spared, enemy_mode;

if (!instance_exists(obj_feisty_four_moray_legs))
{
    instance_destroy();
    exit;
}

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;
enemy_mode = global.enemy_mode;

if (enemy_dead == true)
{
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    instance_destroy();
    exit;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false)
{
    if (global.current_hp_enemy <= 0)
        sprite_index = spr_feisty_four_moray_hand_right;
    else
        sprite_index = spr_feisty_four_moray_hand_right;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
}
else if (!instance_exists(obj_text_damage_count))
{
    no_loop_damage_disjoint_count = false;
}

if (damage_disjoint_count == 12)
    damage_disjoint_x = -50;
else if (damage_disjoint_count == 10)
    damage_disjoint_x = 50;
else if (damage_disjoint_count == 8)
    damage_disjoint_x = -20;
else if (damage_disjoint_count == 6)
    damage_disjoint_x = 20;
else if (damage_disjoint_count == 4)
    damage_disjoint_x = -10;
else if (damage_disjoint_count == 2)
    damage_disjoint_x = 10;
else if (damage_disjoint_count == 0)
    damage_disjoint_x = 0;

if (damage_disjoint_count > 0)
    image_alpha = 0;

if (obj_feisty_four_moray_legs.animating == true)
{
    x = obj_feisty_four_moray_legs.x - difference_x;
    y = obj_feisty_four_moray_legs.hand_right_displacement_y;
}
else
{
    x = obj_feisty_four_moray_legs.x - difference_x;
    y = obj_feisty_four_moray_legs.y - difference_y;
}
