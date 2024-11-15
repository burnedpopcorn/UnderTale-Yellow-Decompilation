if (global.battle_enemy_name == "jandroid")
{
    instance_create_depth(402, 68, depth + 1, obj_quote_bubble_battle_yellow_2);
}
else if (global.battle_enemy_name == "jandroid goosic duo")
{
    instance_create_depth(242, 60, depth + 1, obj_quote_bubble_battle_yellow_2);
}
else if (global.battle_enemy_name == "jandroid duo")
{
    if (global.act_number == 2)
        instance_create_depth(242, 60, depth + 1, obj_quote_bubble_battle_yellow_2_reverse);
    else
        instance_create_depth(220, 60, depth + 1, obj_quote_bubble_battle_yellow_2);
}

execute_random = true;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
random_message = 0;

if (execute_random == true)
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "EW!!! Soap???? ";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "No!!#You diSGuST ME!#Get away!!";
        message_end = 0;
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
