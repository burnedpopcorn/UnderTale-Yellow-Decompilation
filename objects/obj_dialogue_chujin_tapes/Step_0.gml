if (global.dialogue_open == false)
{
    if (instance_exists(obj_pl))
        obj_pl.alarm[0] = 1;
    
    instance_destroy();
}

var MSG_ADVANCE = false;
var message_length = string_length(message[message_current]);

if (message_reset == true)
{
    message_reset = false;
    message = 0;
    event_perform(ev_create, 0);
    exit;
}

if (chujin_tapes_effects)
{
    if (irandom(80) == 1)
    {
        shaky_text = true;
        obj_mansion_chujin_tapes.static_flicker = true;
        obj_mansion_chujin_tapes.overlay_alpha += 0.2;
        alarm[0] = irandom_range(15, 45);
    }
}

if (keyboard_multicheck_pressed(vk_anykey) && skippable == true)
    cutoff = message_length;

if (cutoff < message_length)
{
    if (counter == 0)
    {
        cutoff += 1;
        message_length = string_length(message[message_current]);
        
        if (cutoff < message_length && (cutoff % 1) == 0)
        {
            switch (string_char_at(message[message_current], cutoff))
            {
                case " ":
                case ".":
                    break;
                
                default:
                    audio_stop_sound(sndfnt);
                    audio_play_sound(sndfnt, 1, false);
                    break;
            }
        }
    }
}
else if (keyboard_multicheck_pressed(vk_nokey) && skippable == true)
{
    if (choice == false)
        MSG_ADVANCE = true;
}

if (cutoff > message_length)
    cutoff = message_length;

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
        MSG_ADVANCE = true;
    }
}

script_execute(scr_text_counter_overworld);
script_execute(scr_text_choices);

if (MSG_ADVANCE)
{
    if ((message_current + 1) < array_length_1d(message))
    {
        message_current += 1;
        cutoff = 0;
    }
    else
    {
        global.dialogue_open = false;
    }
}

if (instance_exists(obj_mansion_chujin_tapes))
{
    if ((array_length(prt) - 1) >= message_current)
    {
        if (prt[message_current] != spr_collisionbox && !obj_mansion_chujin_tapes.scene_change)
            obj_mansion_chujin_tapes.sprite_index = prt[message_current];
    }
}
