var damage;

damage = (global.enemy_attack_stat - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;

if (damage < 1)
    damage = 1;

script_execute(scr_controls_battle_heart_blue_up);
move_x = key_left + key_right;
hsp = move_x * walk_speed;

if (key_revert)
    hsp = round(hsp / 2);

if (vsp > -20 && floating == false)
    vsp -= grav;

if (key_down_release && vsp < 0)
{
    vsp = 0;
    floating = true;
    alarm[1] = 3;
}

if ((bbox_top - 1) <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4))
{
    floating = false;
    alarm[1] = 0;
    vsp = key_down * -jumpspeed;
}
else if (place_meeting(x, y - 1, obj_battle_enemy_attack_platform_parent) && !box_collision(x, y, 3150))
{
    floating = false;
    alarm[1] = 0;
    vsp = key_down * -jumpspeed;
}

if (!place_meeting(x, y - 1, obj_battle_enemy_attack_platform_parent) || box_collision(x, y, 3150))
    hsp_carry = 0;

if (sign(hsp) == -1 && (bbox_left + hsp) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
{
    while ((bbox_left + sign(hsp)) > (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
        x += sign(hsp);
    
    hsp = 0;
}
else if (sign(hsp) == 1 && (bbox_right + hsp) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
{
    while ((bbox_right + sign(hsp)) < (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
        x += sign(hsp);
    
    hsp = 0;
}

x += (hsp + hsp_carry);

if (sign(vsp) == -1 && (bbox_top + vsp) <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4))
{
    while ((bbox_top + sign(vsp)) > (obj_dialogue_box_battle_transformation_any.bbox_top + 4))
        y += sign(vsp);
    
    vsp = 0;
}
else if (sign(vsp) == 1 && (bbox_bottom + vsp) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
{
    while ((bbox_bottom + sign(vsp)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
        y += sign(vsp);
    
    vsp = 0;
}
else if (instance_exists(obj_battle_enemy_attack_platform_parent))
{
    if (!box_collision(x, y, 3150))
    {
        if (place_meeting(x, y_position + vsp, obj_battle_enemy_attack_platform_parent) && vsp <= 0)
        {
            while (!place_meeting(x, y_position + sign(vsp), obj_battle_enemy_attack_platform_parent))
            {
                y_position += (sign(vsp) / 2);
                y = ceil(y_position - 0.5);
            }
            
            vsp = 0;
        }
    }
}

y_position += vsp;
y = ceil(y_position - 0.5);

if (vulnerable == true)
{
    if (place_meeting(x, y, obj_battle_enemy_attack_parent))
    {
        vulnerable = false;
        global.hit_self = true;
        global.current_hp_self -= damage;
        audio_play_sound(snd_hurt, 20, false);
        alarm[0] = global.invulnerability_self;
    }
    
    if (place_meeting(x, y, obj_battle_enemy_attack_orange_parent) && hsp == 0 && vsp == 0)
    {
        vulnerable = false;
        global.hit_self = true;
        global.current_hp_self -= damage;
        audio_play_sound(snd_hurt, 20, false);
        alarm[0] = global.invulnerability_self;
    }
    
    if (place_meeting(x, y, obj_battle_enemy_attack_blue_parent) && (hsp != 0 || vsp != 0))
    {
        vulnerable = false;
        global.hit_self = true;
        global.current_hp_self -= damage;
        audio_play_sound(snd_hurt, 20, false);
        alarm[0] = global.invulnerability_self;
    }
}

if (vulnerable == false)
{
    image_speed = 1;
}
else
{
    image_speed = 0;
    image_index = 0;
}

if (global.current_hp_self < 0)
    global.current_hp_self = 0;

if (global.current_hp_self == 0)
{
    global.heart_battle_fighting_color = "red";
    global.heart_battle_fighting_x = x;
    global.heart_battle_fighting_y = y;
    
    with (obj_battle_generator)
        audio_extend = false;
    
    audio_stop_all();
    room_goto(rm_death_screen);
}
