var bubble_type, bubble_x, bubble_y;

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
    bubble_type = 2147;
    bubble_x = 402;
    bubble_y = 68;
    
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
    case 10:
        script_execute(scr_cutscene_battle_guardener_2);
        break;
}

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
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
                    script_execute(scr_talking_guardener);
                    break;
                
                case 1:
                case 2:
                    script_execute(scr_talking_enemy);
                    break;
            }
        }
        else
        {
            script_execute(scr_talking_guardener);
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
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
            
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
