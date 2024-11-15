event_inherited();

if (interact)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag == 0)
        {
            message[0] = "* (You search the nightstand...)";
            message[1] = "* (You find a folded-up PSA#  which you stash in your mail#  bag.)";
            
            if (message_current == 1)
            {
                audio_play_sound(snd_success, 1, 0);
                scr_mail_add("PSA");
                other.npc_flag = 1;
                other.waiter = 0;
            }
        }
        else
        {
            message[0] = "* (Nothing but an empty eyeglass#  case sits in the drawer.)";
            other.waiter = 0;
        }
    }
}
