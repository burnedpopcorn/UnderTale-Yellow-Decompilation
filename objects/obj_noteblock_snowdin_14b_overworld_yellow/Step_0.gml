event_inherited();
animate = obj_rodney_snowdin_14b_overworld_yellow.animate;

if (animate == 0)
{
    image_speed = 0;
    image_index = 0;
}
else
{
    image_speed = 0.2;
}

if (interact)
{
    scr_text();
    is_talking = true;
    
    with (msg)
    {
        portrait = false;
        
        if (global.route != 3)
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* Confession time:";
                    message[1] = "* I claim to be a musician,";
                    message[2] = "* but I know nothing about#  reading sheet music, scales,#  intervals, or any of that.";
                    message[3] = "* That's why I just hit things#  with sticks rhythmically for a#  living.";
                    other.npc_flag++;
                    break;
                
                case 1:
                    message[0] = "* Just goes to show, you don't#  need smarts to be a Cool Dude";
                    other.npc_flag++;
                    break;
                
                case 2:
                    message[0] = "* Drums give me a rhythmic#  purpose in life.";
                    break;
            }
        }
        
        if (global.route == 3)
        {
            message[0] = "* Confession time:";
            message[1] = "* I claim to be a musician,";
            message[2] = "* but I know nothing about#  reading sheet music, scales,#  intervals, or any of that.";
            message[3] = "* That's why I just hit things#  with sticks rhythmically for a#  living.";
        }
    }
}
