if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase_auto);
        script_execute(scr_talking_text);
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
