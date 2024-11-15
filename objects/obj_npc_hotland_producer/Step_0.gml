event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Hey!";
                message[1] = "* You caught me chillin' by my#  brand new house.";
                message[2] = "* That's right! Just bought this#  sucker!";
                message[3] = "* I've been down in the dumps#  lately so I thought it was time#  to move on.";
                message[4] = "* Do something nice for myself,#  ya know?";
                message[5] = "* I highly recommend doing#  something nice for yourself#  every now and then.";
                message[6] = "* It's therapeutic!";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* Can't let anyone inside yet,#  got a crew doing renovations.";
                message[1] = "* They're installing the latest#  music production equipment.#  Fancy stuff.";
                message[2] = "* Let's just say you're gonna#  start hearing my hot beats#  everywhere!";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* Whatever your struggle, just#  hold tight. Life gets better!";
                break;
        }
    }
}
