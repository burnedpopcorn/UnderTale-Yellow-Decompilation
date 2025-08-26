if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var destroy_check = false;

switch (scene)
{
    case 0:
        image_xscale = lerp(image_xscale, 2, 0.05);
        image_yscale = lerp(image_yscale, 2, 0.05);
        
        if (image_xscale > 1.99)
        {
            image_xscale = 2;
            image_yscale = 2;
            scene++;
        }
        
        break;
    
    case 1:
        instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_axis_red_warning);
        image_xscale = 2.5;
        image_yscale = 2.5;
        scene++;
        break;
    
    case 2:
        image_xscale = lerp(image_xscale, 2, 0.15);
        image_yscale = lerp(image_yscale, 2, 0.15);
        cutscene_wait(throw_delay);
        break;
    
    case 3:
        obj_axis_body.sprite_index = spr_axis_body_charge_release;
        obj_axis_body.image_index = 0;
        direction = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        speed = launch_speed;
        is_active = true;
        scene++;
        break;
    
    case 4:
        break;
}

if (!is_active)
    exit;

if (place_meeting(x, y, obj_battle_enemy_attack_axis_shield) && deflect_noloop == false)
{
    obj_battle_enemy_attack_axis_shield.shield_hit = true;
    var dir_add = point_direction(obj_battle_enemy_attack_axis_shield.x, obj_battle_enemy_attack_axis_shield.y + 10, x, y);
    var dir_base = obj_battle_enemy_attack_axis_shield.direction;
    direction = dir_add;
    speed *= 1.2;
    deflect_noloop = true;
    is_deflected = true;
}

if (place_meeting(x, y, obj_axis_body) && is_deflected == true)
{
    if (!obj_battlebox_controller_axis.shield_enabled)
    {
        instance_destroy();
        audio_play_sound(snd_monster_damage_hit, 1, 0);
        obj_axis_body.axis_damaged_act = true;
        obj_battlebox_controller_axis.axis_trash_meter = 0;
        obj_battlebox_controller_axis.axis_hit_count_current -= 1;
        global.special_action_count += 1;
        global.enemy_mode += 1;
        global.attack_repeat = 0;
        
        with (obj_axis_attack_controller_parent)
            instance_destroy();
    }
    else
    {
        instance_destroy();
        audio_play_sound(snd_pickaxe_ding, 1, 0);
    }
}

var col_generator = instance_place(x, y, obj_battle_enemy_axis_generator);

if (col_generator != -4 && is_deflected == true)
{
    instance_destroy();
    instance_destroy(col_generator);
    obj_battlebox_controller_axis.axis_trash_meter = 0;
    obj_battlebox_controller_axis.axis_hit_count_current -= 1;
    audio_play_sound(snd_monster_damage_hit, 1, 0);
    obj_axis_body.axis_damaged_act = true;
    global.special_action_count += 1;
    global.enemy_mode += 1;
    global.attack_repeat = 0;
    
    with (obj_axis_attack_controller_parent)
        instance_destroy();
}

var hurt_player = false;

if (obj_heart_battle_fighting_axis.movement_mode == 1)
{
    if (bbox_bottom >= battle_box.bbox_bottom)
        hurt_player = true;
}
else if (collision_rectangle(battle_box.x - 5, battle_box.y - 5, battle_box.x + 5, battle_box.y + 5, id, false, false))
{
    hurt_player = true;
}

if (hurt_player)
{
    instance_destroy(self, false);
    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_axis_energy_ball_explosion);
}
