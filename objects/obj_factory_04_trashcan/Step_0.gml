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
            message[0] = "* (A sheet of neatly typed#  bullet points lies crumpled in#  the trash.)";
            message[1] = "* (You stash it in your mail#  bag.)";
            
            if (message_current == 1)
            {
                audio_play_sound(snd_success, 1, 0);
                scr_mail_add("Bullet Points");
                other.npc_flag = 1;
                other.waiter = 0;
            }
        }
        else
        {
            message[0] = "* (Nothing useful here.)";
            other.waiter = 0;
        }
    }
}
