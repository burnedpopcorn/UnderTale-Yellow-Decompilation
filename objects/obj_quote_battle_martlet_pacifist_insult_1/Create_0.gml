text_effect = "twitchy";
attack = false;

if ((global.last_action_selected == "Action 3 Phase 2" && global.action_3_selected_count >= 2) || (global.last_action_selected != "Action 3 Phase 2" && global.last_action_selected != "Action 3 Phase 1" && global.action_3_selected_count >= 1))
{
    if (global.action_3_selected_count >= 2)
    {
        attack = true;
        message[0] = "That's more like it!";
        message[1] = "What kind of Royal#Guard wears rags like#these, right?";
        message[2] = "It's not like I stayed#up all night#sewing them or#anything, haha...";
        message[3] = "Oh, right, it's my#turn.";
        portrait_head[0] = 2087;
        portrait_hand[0] = 2058;
        portrait_head[1] = 2087;
        portrait_hand[1] = 2058;
        portrait_head[2] = 2116;
        portrait_hand[2] = 2058;
        portrait_head[3] = 29;
        portrait_hand[3] = 2058;
        message_end = 3;
    }
    else
    {
        message[0] = "Give it another try!";
        message[1] = "I believe in you!";
        portrait_head[0] = 126;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3235;
        portrait_hand[1] = 2058;
        message_end = 1;
    }
}
else if (global.action_3_selected_count >= 1)
{
    attack = true;
    message[0] = "Aww! That was#adorable! ";
    message[1] = "I don't even feel#insulted!";
    message[2] = "I feel like I've been#honored! You put so#much work into that!";
    message[3] = "You aren't making#this easy here!";
    message[4] = "Here I go... protocol#and all that... for#the Royal Guard!";
    portrait_head[0] = 3235;
    portrait_hand[0] = 2058;
    portrait_head[1] = 3673;
    portrait_hand[1] = 2058;
    portrait_head[2] = 3235;
    portrait_hand[2] = 2058;
    portrait_head[3] = 2116;
    portrait_hand[3] = 2058;
    portrait_head[4] = 2116;
    portrait_hand[4] = 2058;
    message_end = 4;
}
else
{
    message[0] = "Come on! Get#aggressive!";
    message[1] = "I can take it, I#swear!";
    message[2] = "Sticks and stones may#break my bones, but#words can only make#me sad!";
    portrait_head[0] = 2087;
    portrait_hand[0] = 2058;
    portrait_head[1] = 2087;
    portrait_hand[1] = 2058;
    portrait_head[2] = 3235;
    portrait_hand[2] = 2058;
    message_end = 2;
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
