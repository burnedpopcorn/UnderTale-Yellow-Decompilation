script_execute(scr_controls_text);

if (instance_exists(obj_quote_bubble_battle))
{
    if (draw_enabled == false)
        obj_quote_bubble_battle.visible = 0;
    else
        obj_quote_bubble_battle.visible = 1;
}

if (is_array(enemy_talker))
{
    var bubble_type = 2147;
    var bubble_x = 402;
    var bubble_y = 68;
    
    switch (enemy_talker[message_current])
    {
        case 0:
            bubble_type = 2147;
            bubble_x = 402;
            bubble_y = 68;
            break;
        
        case 1:
            bubble_type = 96;
            bubble_x = obj_guardener_guy_a.x - (sprite_get_width(spr_quote_bubble_battle_yellow_above) * 0.5) - 8;
            bubble_y = obj_guardener_guy_a.bbox_top - sprite_get_height(spr_quote_bubble_battle_yellow_above);
            break;
        
        case 2:
            bubble_type = 96;
            bubble_x = obj_guardener_guy_b.x - (sprite_get_width(spr_quote_bubble_battle_yellow_above) * 0.5) - 8;
            bubble_y = obj_guardener_guy_b.bbox_top - sprite_get_height(spr_quote_bubble_battle_yellow_above);
            break;
    }
    
    if (!instance_exists(bubble_type) || bubble_type.x != bubble_x)
    {
        with (obj_quote_bubble_battle)
            instance_destroy();
        
        instance_create(bubble_x, bubble_y, bubble_type);
    }
}

switch (global.turns_passed)
{
    case 7:
        script_execute(scr_cutscene_battle_guardener_1);
        event_user(0);
        break;
    
    case 11:
        script_execute(scr_cutscene_battle_guardener_2);
        break;
    
    case 12:
        script_execute(scr_cutscene_battle_guardener_3);
        break;
    
    case 13:
        obj_guardener_guy_a.sprite_index = spr_guardener_guy_a;
        obj_guardener_guy_a.active = true;
        obj_guardener_guy_b.active = true;
        break;
}

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
}

if (global.enemy_sparing && message_current >= 2)
{
    if (message_current == 2)
    {
        obj_guardener_body.guardener_stop_animating = true;
        obj_guardener_meter.curr_fill = 0;
    }
    
    voice_pitch = 0.5;
}

if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase);
        
        if (enemy_talker != 0)
        {
            switch (enemy_talker[message_current])
            {
                case 0:
                    script_execute(scr_talking_guardener, voice_pitch);
                    break;
                
                case 1:
                case 2:
                    script_execute(scr_talking_enemy);
                    break;
            }
        }
        else
        {
            script_execute(scr_talking_guardener, voice_pitch);
        }
    }
    else
    {
        can_talk = false;
    }
}
else
{
    can_talk = false;
    
    if (key_select_pressed && skippable == true)
    {
        if (message_current < message_end)
        {
            message_adv = true;
        }
        else
        {
            if (global.turns_passed == 10 && !instance_exists(obj_guardener_meter))
            {
                global.action_2_selected_count = 0;
                instance_create_depth(-100, 197, 0, obj_guardener_meter);
            }
            
            if (global.route == 2 && global.turns_passed == 7)
            {
                instance_create_depth(0, 0, -100, obj_steamworks_29_in_battle_cutscene_2);
            }
            else if (global.route == 2 && global.enemy_sparing)
            {
                instance_create_depth(0, 0, -100, obj_steamworks_29_in_battle_cutscene_4);
            }
            else
            {
                with (obj_heart_battle_fighting_parent)
                    moveable = true;
            }
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy();
        }
    }
}

if (message_adv == true)
{
    message_current += 1;
    message_length = string_length(message[message_current]);
    characters = 0;
    message_draw = "";
    draw_enabled = true;
    message_adv = false;
}

script_execute(scr_text_counter);
