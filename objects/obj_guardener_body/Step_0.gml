if (global.current_hp_enemy_draw <= 0 && damage_disjoint_x == 0)
{
    if (!global.enemy_dead)
    {
        global.enemy_dead = true;
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create_depth(0, 0, -1000, obj_quote_battle_guardener_death);
    }
}

if (global.enemy_dead == true && !instance_exists(obj_quote_battle_guardener_death))
{
    sprite_index = -4;
    
    if (death_noloop == true)
        layer_sequence_destroy(idle_sequence);
    
    if (!death_noloop)
    {
        layer_sequence_create("sequence_layer", x, y, 4);
        alarm[0] = 60;
        death_noloop = true;
    }
    
    exit;
}

var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;
var enemy_sparing = global.enemy_sparing;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_spared == true)
{
    sprite_index = spr_guardener_hurt;
    x = xstart;
    y = ystart;
    image_speed = 0;
    image_index = 0;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 22, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
}

if (damage_disjoint_count > 0 && damage_disjoint_timer <= 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false && damage_disjoint_count <= 0)
{
    if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
    {
        if (low_hp_noloop == false)
            low_hp_noloop = true;
        
        sprite_index = -4;
    }
    else
    {
        sprite_index = -4;
    }
}
else if (enemy_spared == true)
{
    sprite_index = spr_guardener_hurt;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    sprite_index = spr_guardener_hurt;
    time_elapsed = 0;
    sign_modifier = 1;
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
}
else if (!instance_exists(obj_text_damage_count))
{
    no_loop_damage_disjoint_count = false;
}

if (damage_disjoint_timer <= 0)
{
    damage_disjoint_timer = damage_disjoint_timer_max;
    
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
}
else
{
    damage_disjoint_timer -= 1;
}

x = xstart + damage_disjoint_x;

if (guardener_stop_animating == true)
{
    if (layer_sequence_get_headpos(2) >= (layer_sequence_get_length(2) - 1))
        layer_sequence_pause(2);
}
