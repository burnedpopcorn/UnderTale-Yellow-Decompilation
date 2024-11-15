if (global.last_action_selected == "Action 1 Message 0")
{
    message[0] = "Happy#croak.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 2 Message 0")
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "Growl.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "Cower,#cower.";
        message_end = 0;
    }
}
else
{
    random_number = irandom_range(0, 2);
    
    if (random_number == 0)
    {
        message[0] = "Ribbit,#ribbit.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "Croak,#croak.";
        message_end = 0;
    }
    else if (random_number == 2)
    {
        message[0] = "Micro#ribbit.";
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
