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
                message[0] = "* (Slurp slurrrrp)";
                message[1] = "* Ahhhh!";
                message[2] = "* Nothing like Steamworks#  Boba-Soup (TM) to fuel the#  engine!";
                message[3] = "* What? Don't act like you've#  never heard of it.";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* Did you know that humans also#  run on a liquid? It's called#  \"blood.\"";
                message[1] = "* Apparently it doesn't taste#  any good, which is like, a#  total shame.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* I'd let you try this stuff but#  it's total poison to#  non-robots.";
                message[1] = "* How do I know that? I don't.";
                message[2] = "* I just wanna deter you from#  draining my sweet sweet lake.";
                other.npc_flag++;
                break;
            
            case 3:
                message[0] = "* (Slurp slurrrp)";
                break;
        }
    }
}
