if (instance_exists(obj_battle_enemy_attack_tellyvis_remote_generator) && obj_battle_enemy_attack_tellyvis_remote_generator.attack_remote_destroy == false)
    exit;

if (global.attack_end_text == false)
{
    global.attack_end_text = scr_battle_core_directory_enemy_attack_end();
    
    if (global.attack_end_text != false)
        exit;
}

if (instance_exists(obj_attack_cycler_parent))
{
    with (obj_attack_cycler_parent)
        instance_destroy();
}

if (instance_exists(obj_attack_boundary_creator))
{
    with (obj_attack_boundary_creator)
        instance_destroy();
}

if (instance_exists(obj_attack_boundary_box))
{
    with (obj_attack_boundary_box)
        instance_destroy();
}

if (instance_exists(obj_surface_drawer))
{
    with (obj_surface_drawer)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_generator))
{
    with (obj_sme_yellow_rhythm_generator)
        instance_destroy();
}

global.turns_passed += 1;
global.last_action_selected = "Nothing";
global.last_action_selected_2 = "Nothing";
global.last_action_selected_3 = "Nothing";
global.hurt_self = global.hit_self;
global.hit_self = false;
global.enemy_hurt = global.enemy_hit;
global.enemy_hit = false;

if (global.enemy_count >= 2)
{
    global.enemy_hurt_2 = global.enemy_hit_2;
    global.enemy_hit_2 = false;
}

if (global.enemy_count >= 3)
{
    global.enemy_hurt_3 = global.enemy_hit_3;
    global.enemy_hit_3 = false;
}

global.item_used = global.item_use;
global.item_use = "Nothing";
global.item_gifted = global.item_gift;
global.item_gift = "Nothing";
instance_create(319, 320, obj_dialogue_box_battle_transformation_any_in);

with (obj_heart_battle_fighting_parent)
    instance_destroy();

instance_destroy();
global.attack_end_text = false;

if (global.player_armor_modifier == "Silver Scarf" && global.current_hp_self < global.max_hp_self)
{
    global.current_hp_self += 2;
    global.current_hp_self = clamp(global.current_hp_self, 0, global.max_hp_self);
    audio_play_sound(snd_heal, 1, 0);
}
