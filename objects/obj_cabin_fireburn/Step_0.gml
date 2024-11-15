event_inherited();

if (global.geno_complete[2])
    exit;

image_speed = 0.2;

if (interact)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Hey, have you seen those#  loiterers outside?";
                message[1] = "* They keep telling me they're a#  well-renowned gang.";
                message[2] = "* But I've never heard of them#  before.";
                message[3] = "* Maybe I really am getting to be#  out of the loop.";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* Maybe I'll check out the band#  inside.";
                message[1] = "* I hear they're pretty kickin'.";
                message[2] = "* I hope I'm hip enough to#  appreciate them at least.";
                break;
        }
    }
}
