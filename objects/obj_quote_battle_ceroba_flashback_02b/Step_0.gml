script_execute(scr_controls_text);

if (key_revert_pressed)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
}

if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase);
        script_execute(scr_talking_ceroba);
    }
    else
    {
        can_talk = false;
    }
}
else
{
    can_talk = false;
}

script_execute(scr_text_counter);
