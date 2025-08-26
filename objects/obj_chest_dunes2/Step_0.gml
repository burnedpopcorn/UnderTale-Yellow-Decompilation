if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.route != 3)
    {
        with (msg)
        {
            message[0] = "* (The waterlogged remains of an#  old chest.)";
            message[1] = "* (You spy a small, dry, paper#  bag cradled in the interior of#  the lid.";
            message[2] = "* (Will you take it?)";
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Trail Mix"))
                {
                    message[3] = "* (You got some trail#  mix!)";
                    global.dunes_flag[14] = 1;
                    instance_destroy(other);
                }
                else
                {
                    audio_play_sound(snd_fail, 1, 0);
                    message[3] = "* (Not enough space.)";
                }
                
                other.waiter = 0;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.waiter = 0;
            }
        }
    }
    else
    {
        with (msg)
            message[0] = "* (An old chest.)";
        
        waiter = 0;
    }
}
