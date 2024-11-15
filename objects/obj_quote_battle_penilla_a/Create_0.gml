execute_normal = false;
execute_random = false;

if (global.last_action_selected == "Action 1 Low HP")
{
    message[0] = "You got some#nerve.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 1 Message 0")
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "You're just#saying that#because you feel#obligated.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "I don't really#think it's ready#for people yet.";
        message_end = 0;
    }
}
else if (global.last_action_selected == "Action 2 Low HP")
{
    message[0] = "Maybe art isn't#the right path#for me.";
    message_end = 0;
}
else if (global.last_action_selected == "Action 2 Message 0")
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "I suppose I#could use a#break.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "I have been at#this for a#while...";
        message_end = 0;
    }
}
else if (global.enemy_low_hp == true)
{
    random_number = irandom_range(0, 1);
    
    if (random_number == 0)
    {
        message[0] = "I'll just...#tape it back#together.";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "A sharpener#would come in#handy right#about now...";
        message_end = 0;
    }
}
else
{
    random_number = irandom_range(0, 3);
    
    if (random_number == 0)
    {
        message[0] = "Gotta keep my#skills sharp!";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "The artist's#life is one of#solitude.";
        message_end = 0;
    }
    else if (random_number == 2)
    {
        message[0] = "So all my hand#work leads to#this?";
        message_end = 0;
    }
    else if (random_number == 3)
    {
        message[0] = "2B or not 2B?";
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
