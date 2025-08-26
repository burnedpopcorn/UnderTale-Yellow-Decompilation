if (live_call())
    return global.live_result;

if (random_attack_current == "nothing")
    random_attack_current = ds_list_find_value(random_attack_list, irandom_range(0, ds_list_size(random_attack_list) - 1));

while (random_attack_current == random_attack_current_last)
    random_attack_current = ds_list_find_value(random_attack_list, irandom_range(0, ds_list_size(random_attack_list) - 1));

var enemy_attack = random_attack_current;

if (enemy_attack == "Crispy Slash")
{
    if (attack_counter_current == -1)
        attack_counter_current = 90;
    
    script_execute(scr_enemy_attack_crispy_slash);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
}
else if (enemy_attack == "Flier Flies")
{
    if (attack_counter_current == -1)
        attack_counter_current = 120;
    
    script_execute(scr_enemy_attack_flier_flies);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
}
else if (enemy_attack == "Penilla Drawing" && !instance_exists(obj_battle_enemy_attack_penilla_pencil))
{
    if (attack_counter_current == -1)
        attack_counter_current = 100;
    
    script_execute(scr_enemy_attack_penilla_drawing);
}
else if (enemy_attack == "Rorrim Mirror")
{
    if (attack_counter_current == -1)
        attack_counter_current = 80;
    
    script_execute(scr_enemy_attack_rorrim_mirror);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
}
else if (enemy_attack == "Candy Spear Corn")
{
    if (attack_counter_current == -1)
        attack_counter_current = 80;
    
    script_execute(scr_enemy_attack_candy_spear_corn);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
    
    if (!instance_exists(obj_battle_enemy_attack_spear_corn) && !instance_exists(obj_battle_enemy_attack_spear_corn_warning))
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_spear_corn_warning);
}
else if (enemy_attack == "Frostermit Ice Cubes")
{
    if (attack_counter_current == -1)
        attack_counter_current = 120;
    
    script_execute(scr_enemy_attack_frostermit_ice_cubes);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
}
else if (enemy_attack == "Insomnitot Stars")
{
    if (attack_counter_current == -1)
        attack_counter_current = 90;
    
    script_execute(scr_enemy_attack_insomnitot_stars);
    
    if (global.attack_counter >= 0)
    {
        global.attack_counter -= 1;
        
        if (global.attack_counter < 0)
            global.attack_counter = global.attack_counter_max;
    }
}
else if (enemy_attack == "Know Cone Cherries" && !instance_exists(obj_battle_enemy_attack_know_cone_cherry))
{
    if (attack_counter_current == -1)
        attack_counter_current = 80;
    
    script_execute(scr_enemy_attack_know_cone_cherries);
}
else if (enemy_attack == "Bowll Silverware" && !instance_exists(obj_battle_enemy_attack_bowll_silverware_generator))
{
    if (attack_counter_current == -1)
        attack_counter_current = 80;
    
    instance_create(0, 0, obj_battle_enemy_attack_bowll_silverware_generator);
}
else if (enemy_attack == "Cactony Needle Side" && !instance_exists(obj_battle_enemy_attack_cactony_needle_side_generator))
{
    if (attack_counter_current == -1)
        attack_counter_current = 90;
    
    var script_tgt = obj_dialogue_box_battle_transformation_any;
    scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
    instance_create(0, 0, obj_battle_enemy_attack_cactony_needle_side_generator);
}
else if (enemy_attack == "Dunebud Tumbleweeds" && !instance_exists(obj_battle_enemy_attack_dunebud_tumbleweeds_creator))
{
    if (attack_counter_current == -1)
        attack_counter_current = 120;
    
    instance_create(0, 0, obj_battle_enemy_attack_dunebud_tumbleweeds_creator);
}

attack_counter_current -= 1;

with (obj_battle_enemy_attack_parent)
    damage_number = scr_determine_damage_number_enemy("tellyvis a", "void", "void");

if (attack_counter_current == 0)
{
    scene = 2;
    attack_counter_max -= 1;
    
    with (all)
    {
        if (object_index == obj_quote_bubble_battle || object_index == obj_quote_battle_tellyvis_a_mid_attack)
            exit;
        
        var destroy_self = true;
        
        for (var i = 0; i < ds_list_size(other.instance_list); i++)
        {
            if (ds_list_find_value(other.instance_list, i) == id)
                destroy_self = false;
        }
        
        if (destroy_self == true)
            instance_destroy();
    }
}
