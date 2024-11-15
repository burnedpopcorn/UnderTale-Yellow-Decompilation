var last_action_selected, action_1_selected_count;

text_effect = "twitchy";
last_action_selected = global.last_action_selected;

if (last_action_selected == "Action 1 Message 0" || last_action_selected == "Action 1 Message 1")
{
    action_1_selected_count = global.action_1_selected_count;
    
    if (action_1_selected_count == 0)
    {
        message[0] = "Wha-what are you#saying?";
        message[1] = "This isn't your fault.#It-it can't be.";
        message[2] = "There's no way you...";
        message[3] = "You're just a child.";
        portrait_head[0] = 2685;
        portrait_hand[0] = 2058;
        portrait_head[1] = 2685;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        portrait_head[3] = 3475;
        portrait_hand[3] = 2058;
        message_end = 3;
    }
    else if (action_1_selected_count == 1)
    {
        message[0] = "So...";
        message[1] = "You're just#apologizing?";
        message[2] = "Is it that simple?";
        message[3] = "You destroyed lives!";
        message[4] = "The monsters of#Snowdin are terrified!";
        message[5] = "And you're just...#apologizing?";
        message[6] = "Is, well, what else#can you do, I suppose?";
        message[7] = "I mean, everyone is#allowed to make#mistakes but...";
        message[8] = "This is a little more#than a mistake.";
        portrait_head[0] = 3259;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3526;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3526;
        portrait_hand[2] = 2058;
        portrait_head[3] = 3526;
        portrait_hand[3] = 2058;
        portrait_head[4] = 3526;
        portrait_hand[4] = 2058;
        portrait_head[5] = 3259;
        portrait_hand[5] = 2058;
        portrait_head[6] = 1673;
        portrait_hand[6] = 2058;
        portrait_head[7] = 1673;
        portrait_hand[7] = 2058;
        portrait_head[8] = 3526;
        portrait_hand[8] = 2058;
        message_end = 8;
        global.action_1_important = true;
        global.action_1_color = 65535;
    }
    else if (action_1_selected_count == 2)
    {
        message[0] = "You're really sorry,#aren't you?";
        message[1] = "You're scared...";
        message[2] = "This was probably self#defense.";
        portrait_head[0] = 3475;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3475;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        message_end = 2;
    }
    else if (action_1_selected_count == 3)
    {
        message[0] = "I understand. No need#to keep apologizing.";
        portrait_head[0] = 2116;
        portrait_hand[0] = 2058;
        message_end = 0;
    }
}
else
{
    message[0] = "...";
    portrait_head[0] = 3475;
    portrait_hand[0] = 2058;
    message_end = 0;
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
