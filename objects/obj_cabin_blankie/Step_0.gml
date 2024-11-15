event_inherited();

if (interact)
{
    scr_text();
    
    if (global.geno_complete[2])
    {
        with (msg)
        {
            switch (other.npc_flag)
            {
                case 2:
                case 3:
                case 4:
                case 6:
                    message[0] = "* (You stare at the log.)";
                    message[1] = "* (Nothing happens.)";
                    
                    if (other.npc_flag != 6)
                        other.npc_flag += 1;
                    
                    break;
                
                case 5:
                    message[0] = "* (You stare at the log.)";
                    message[1] = "* ...";
                    message[2] = "* I saw everything.";
                    other.npc_flag++;
                    break;
            }
        }
    }
    
    is_talking = true;
    
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Nothing like avoiding life's#  responsibilities by lounging#  all day.";
                message[1] = "* Been here for two weeks, hit#  this same spot everyday.";
                message[2] = "* It's so easy to lose yourself#  out here.";
                message[3] = "* I don't even know if I have a#  job to go back to.";
                message[4] = "* It's pretty great.";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* Maybe it would be nice if I was#  fired.";
                message[1] = "* I'll just go live in the wild#  and find my own food.";
                message[2] = "* That should be everyone's goal#  in life.";
                other.npc_flag += 1;
                break;
            
            case 2:
                message[0] = "* I'm gonna be here a while.";
                message[1] = "* Know any good campfire songs?";
                break;
        }
    }
}
