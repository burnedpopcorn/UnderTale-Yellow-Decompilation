var current_world_value = script_execute(scr_determine_world_value_yellow);

if (current_world_value == 1)
{
    message[0] = "Well... That was#something.";
    message[1] = "You're a lot stronger#than I gave you#credit for!";
    message[2] = "Those monsters never#stood a chance#against your skill.";
    message[3] = "...";
    message[4] = "What's with that#face?";
    message[5] = "Don't even think#about killing me too.";
    message[6] = "Remember, I'm the#one keeping you#alive.";
    message[7] = "Your life is in my#hands.";
    message[8] = "Don't worry, I won't#judge you for your#actions.";
    message[9] = "Friends don't judge#each other, right?";
    message[10] = "I have your back and#you've got mine.";
    message[11] = "So let's get out of#here, okay pal?";
    portrait[0] = 1936;
    portrait[1] = 1934;
    portrait[2] = 1934;
    portrait[3] = 1938;
    portrait[4] = 1938;
    portrait[5] = 1943;
    portrait[6] = 1934;
    portrait[7] = 1934;
    portrait[8] = 1934;
    portrait[9] = 1936;
    portrait[10] = 1934;
    portrait[11] = 1934;
}

message_end = 11;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
