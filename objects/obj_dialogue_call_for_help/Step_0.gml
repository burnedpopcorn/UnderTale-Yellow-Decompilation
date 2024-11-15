var MSG_ADVANCE, message_length;

if (live_call())
    return global.live_result;

if (global.dialogue_open == false)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.03;
    else
        instance_destroy();
    
    exit;
}

MSG_ADVANCE = false;
message_length = string_length(message[message_current]);

if (message_reset == true)
{
    message_reset = false;
    message = 0;
    event_perform(ev_create, 0);
    exit;
}

if (keyboard_multicheck_pressed(1) && skippable == true)
    cutoff = message_length;

if (cutoff < message_length)
{
    if (counter == 0)
    {
        cutoff += 0.5;
        script_execute(scr_text_talk);
    }
}
else if (keyboard_multicheck_pressed(0) && skippable == true)
{
    if (choice == false)
        MSG_ADVANCE = true;
}

if (message_timer > -1 && cutoff == message_length)
{
    if (mT == -1)
        mT = message_timer;
    
    if (mT > 0)
    {
        mT -= 1;
    }
    else if (mT == 0)
    {
        mT = -1;
        fade_out = true;
    }
}

script_execute(scr_text_counter_overworld);
script_execute(scr_text_choices);

if (fade_out == true)
{
    if (draw_alpha > 0)
    {
        draw_alpha -= 0.03;
    }
    else
    {
        fade_out = false;
        MSG_ADVANCE = true;
    }
}

if (MSG_ADVANCE || force_skip)
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1;
        cutoff = 0;
        draw_alpha = 1;
    }
    else
    {
        global.dialogue_open = false;
    }
    
    force_skip = false;
}
