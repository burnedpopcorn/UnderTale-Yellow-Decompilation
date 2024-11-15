execute_normal = false;
execute_random = false;

if (global.last_action_selected == "Action 1 Low HP")
{
    message[0] = "Everything seems#wrong.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 1 Message 0")
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "Lookin' good.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "Not bad, not bad.";
        message_end = 0;
    }
}
else if (global.last_action_selected == "Action 2 Low HP")
{
    message[0] = "You look#horrible.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 2 Message 0")
{
    message[0] = "It's missing#something.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 2 Message 1")
{
    message[0] = "You look perfect.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 3 Low HP")
{
    message[0] = "You can't phase#me.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 3 Message 0" || global.last_action_selected == "Action 3 Message 1")
{
    message[0] = "Smiles are never#out of style.";
    message_end = 0;
}
else if (global.enemy_low_hp == true)
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "Not scared of#bad luck?";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "This isn't#good...";
        message_end = 0;
    }
}
else
{
    random_number = irandom_range(0, 3);
    
    if (random_number == 0)
    {
        message[0] = "Better check for#food in your#teeth.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "Yellow is the#new black.";
        message_end = 0;
    }
    else if (random_number == 2)
    {
        message[0] = "Who's the#fairest of them#all?";
        message_end = 0;
    }
    else if (random_number == 3)
    {
        message[0] = "Like what you#see?";
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
