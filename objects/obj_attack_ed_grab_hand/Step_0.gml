var battle_box = obj_dialogue_box_battle_transformation_any;
var soul = obj_heart_battle_fighting_parent;

switch (attack_state)
{
    case 1:
        var x_target = battle_box.bbox_right + 30;
        x = lerp(x, x_target, 0.3);
        
        if (abs(x - x_target) <= 1)
        {
            x = x_target;
            attack_state += 1;
            _y_sin_current = 0;
            _attack_timer = room_speed * 1;
        }
        
        break;
    
    case 2:
        soul = obj_heart_battle_fighting_parent;
        _y_sin_current += 0.1;
        
        if (_y_sin_current > (2 * pi))
            _y_sin_current -= (2 * pi);
        
        y = ystart + (sin(_y_sin_current) * 90);
        _attack_timer -= 1;
        
        if (_attack_timer <= 0 && abs(y - soul.y) < 10)
        {
            attack_state += 1;
            instance_create(soul.x, soul.y, obj_attack_ed_grab_warning);
        }
        
        break;
    
    case 3:
        soul = obj_heart_battle_fighting_parent;
        y = lerp(y, soul.y, 0.25);
        
        if (sprite_index != spr_attack_ed_hand_grab)
        {
            sprite_index = spr_attack_ed_hand_grab;
            image_index = 1;
            image_speed = 0.5;
        }
        
        if (image_index >= (image_number - 1))
        {
            attack_state += 1;
            _attack_caught_player = false;
            sprite_index = spr_attack_ed_hand_grab_2;
            image_index = 0;
            image_speed = 0;
        }
        
        break;
    
    case 4:
        if (hspeed > -15)
            hspeed -= 3;
        
        soul = obj_heart_battle_fighting_parent;
        
        if (place_meeting(x, y, soul) && soul.moveable == true)
        {
            soul.image_alpha = 0;
            soul.moveable = false;
            soul.vulnerable = false;
            _attack_caught_player = true;
            
            if (sprite_index != spr_attack_ed_hand_grab_3)
            {
                sprite_index = spr_attack_ed_hand_grab_3;
                image_speed = 1/3;
                image_index = 0;
            }
        }
        
        var _anim_ready = false;
        
        if (sprite_index == spr_attack_ed_hand_grab_3 && image_index >= 6)
        {
            _anim_ready = true;
            image_speed = 0;
            image_index = 6;
        }
        
        if (x <= (battle_box.bbox_left - 30))
        {
            hspeed = 0;
            
            if (_attack_caught_player == true)
            {
                if (_anim_ready == true)
                    attack_state += 2;
            }
            else
            {
                attack_state += 1;
            }
        }
        
        break;
    
    case 5:
        if (!instance_exists(obj_attack_ed_grab_hand_hurtbox_return) || obj_attack_ed_grab_hand_hurtbox_return.spawner != id)
        {
            var new_hitbox = instance_create(x, y, obj_attack_ed_grab_hand_hurtbox_return);
            new_hitbox.spawner = id;
        }
        
        if (image_speed == 0)
            image_speed = 0.5;
        
        if (image_index >= (image_number - 1) && sprite_index != spr_attack_ed_hand)
        {
            sprite_index = spr_attack_ed_hand;
            image_speed = 1/3;
        }
        
        if (hspeed < 8)
            hspeed += 2;
        
        if (x >= (battle_box.bbox_right + 60))
        {
            _attack_timer = room_speed * 2;
            _y_sin_current = arcsin((y - ystart) / 90);
            attack_state = 2;
            attack_number += 1;
            hspeed = 0;
        }
        
        break;
    
    case 6:
        if (hspeed < 12)
            hspeed += 3;
        
        var _anim_ready = false;
        
        if (x >= (battle_box.x + 30))
        {
            hspeed = 0;
            attack_state += 1;
        }
        
        break;
    
    case 7:
        if (vspeed > -8)
            vspeed -= 2;
        
        if (y <= (battle_box.y - 20))
            attack_state += 1;
        
        break;
    
    case 8:
        if (vspeed < 24)
            vspeed += 6;
        
        if (y >= (battle_box.bbox_bottom - 20))
        {
            y = battle_box.bbox_bottom - 20;
            attack_state += 1;
            vspeed = 0;
        }
        
        break;
    
    case 9:
        if (image_speed == 0)
        {
            audio_play_sound(snd_rock_break, 1, 0);
            scr_screenshake_battle(15, 3);
            image_speed = 0.75;
            soul.vulnerable = true;
            instance_create(x, y, obj_attack_ed_grab_hand_hurtbox);
        }
        
        soul = obj_heart_battle_fighting_parent;
        
        with (soul)
        {
            image_alpha = 1;
            x = other.x - 15;
            y = other.y + 5;
            
            if (moveable == false)
            {
                moveable = true;
                vulnerable = true;
            }
        }
        
        if (image_index >= (image_number - 1))
        {
            sprite_index = spr_attack_ed_hand;
            image_speed = 1/3;
            attack_state += 1;
        }
        
        break;
    
    case 10:
        if (hspeed < 8)
            hspeed += 2;
        
        if (x >= (battle_box.bbox_right + 30))
        {
            _y_sin_current = arcsin((y - ystart) / 90);
            _attack_timer = room_speed * 2;
            attack_state = 2;
            hspeed = 0;
            attack_number += 1;
        }
        
        break;
}

if (attack_number >= attack_number_max)
{
    with (obj_attack_ed_grab_moray_sword_controller)
        instance_destroy();
}
