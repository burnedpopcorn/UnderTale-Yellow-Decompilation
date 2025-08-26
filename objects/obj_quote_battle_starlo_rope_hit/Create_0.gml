text_effect = "twitchy";
attack = false;
var turns_passed = global.turns_passed;

switch (turns_passed)
{
    case 9:
        message[0] = "Look what you made#me do!";
        message[1] = "That lasso is made#from premium#materials!";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        message_end = 1;
        break;
    
    case 10:
        message[0] = "No... no way!";
        message[1] = "Outsmarted by a#deputy?? Tsk.";
        message[2] = "At least it's a#fair showdown now.";
        message[3] = "Time for a real#dual!";
        portrait_head[0] = 2124;
        portrait_head[1] = 2124;
        portrait_head[2] = 2124;
        portrait_head[3] = 2124;
        message_end = 3;
        break;
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
