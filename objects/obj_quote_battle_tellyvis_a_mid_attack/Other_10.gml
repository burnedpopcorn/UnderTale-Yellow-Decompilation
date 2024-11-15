instance_create(402, 68, obj_quote_bubble_battle_yellow_2);

if (message_number == 0)
{
    message[0] = "Seen it!";
    message_end = 0;
}
else if (message_number == 1)
{
    message[0] = "I hate#reruns!";
    message_end = 0;
}
else if (message_number == 2)
{
    message[0] = "They'll reboot#anything#nowadays!";
    message_end = 0;
}
else if (message_number == 3)
{
    message[0] = "Gimme something#new!";
    message_end = 0;
}
else
{
    message_number = 0;
    event_user(0);
    exit;
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
