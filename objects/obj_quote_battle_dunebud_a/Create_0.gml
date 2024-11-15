execute_normal = false;
execute_random = false;
text_effect = "circle";
text_effect_2 = "circle";
color_count = 0;

if (global.battle_enemy_name == "dunebud duo")
{
    if (global.enemy_dead_2 == true && global.fight_number == 1 && global.battle_menu_number == 1)
    {
        message[0] = "?~";
        message_end = 0;
    }
    else
    {
        execute_normal = true;
    }
}
else
{
    execute_normal = true;
}

if (execute_normal == true)
{
    if (global.enemy_sparing == true && global.enemy_low_hp == false)
    {
        message[0] = "heHe~";
        message_end = 0;
    }
    else if (global.enemy_low_hp == true)
    {
        random_number = irandom_range(0, 1);
        
        if (random_number == 0)
        {
            message[0] = "Bwaa~";
            message_end = 0;
        }
        else if (random_number == 1)
        {
            message[0] = "Grrr~";
            message_end = 0;
        }
    }
    else if (global.last_action_selected == "Action 1 Message 0")
    {
        message[0] = "Oo??";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 2 Message 0")
    {
        message[0] = "Awawa~";
        message_end = 0;
    }
    else if (global.last_action_selected == "Action 3 Message 0" || global.last_action_selected == "Action 3 Message 1")
    {
        message[0] = "Uuuu~";
        message_end = 0;
    }
    else
    {
        execute_random = true;
        
        if (execute_random == true)
        {
            random_number = irandom_range(0, 3);
            
            if (random_number == 0)
            {
                message[0] = "Swip#Swap~";
                message_end = 0;
            }
            else if (random_number == 1)
            {
                message[0] = "Gwob#Gwub~";
                message_end = 0;
            }
            else if (random_number == 2)
            {
                message[0] = "Awoooo~";
                message_end = 0;
            }
            else if (random_number == 3)
            {
                message[0] = "Wiggle#Woggle~";
                message_end = 0;
            }
        }
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
