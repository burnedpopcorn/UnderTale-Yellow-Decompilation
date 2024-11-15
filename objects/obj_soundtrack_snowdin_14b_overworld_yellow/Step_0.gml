var snow_geno, animate;

event_inherited();
snow_geno = false;

if (global.kill_number[2] <= 0)
    snow_geno = true;

if (!instance_exists(obj_dialogue))
{
    waiter = 0;
    talk = 0;
}

if (interact)
{
    scr_text();
    waiter = 1;
    talk = 1;
}

if (waiter == 1)
{
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                ch_msg = 3;
                ch[1] = "Major";
                ch[2] = "Minor";
                message[0] = "* What's up?";
                message[1] = "* Glad you could stop by for a#  listen.";
                message[2] = "* Mind if I ask you a question?";
                message[3] = "* Which are better, minor scales#  or major scales?";
                
                switch (outcome)
                {
                    case 1:
                        message[4] = "* Sad.";
                        message[5] = "* I thought I might find another#  minor scale fan.";
                        message[6] = "* Everyone I've talked to likes#  major scales.";
                        message[7] = "* Can't be happy all the time,#  sometimes you need to switch it#  up.";
                        
                        if (global.route == 3)
                            message[7] = "* It just doesn't seem to fit the#  mood anymore.";
                        
                        other.npc_flag = 1;
                        break;
                    
                    case 2:
                        if (global.route == 3)
                        {
                            message[4] = "* Yeah, I agree.";
                            message[5] = "* There's something about the#  bittersweet tune that feels#  especially relevant right now.";
                        }
                        else
                        {
                            message[4] = "* Whoa, hey, really?";
                            message[5] = "* You appreciate the bittersweet#  sound of a minor scale?";
                            message[6] = "* I never thought I'd find#  another fan!";
                            message[7] = "* No one around here appreciates#  them like I do.";
                            message[8] = "* Not even my bandmates.";
                            message[9] = "* You need both to coexist, but#  minor just flows better, you#  know?";
                        }
                        
                        other.npc_flag = 2;
                        break;
                }
                
                break;
            
            case 1:
                message[0] = "* Even though I'm alone in this#  debate, I can tell you have#  good taste in music.";
                message[1] = "* Maybe one day you'll grow to#  love minor scales like me.";
                break;
            
            case 2:
                message[0] = "* You're pretty cool.";
                message[1] = "* We should jam sometime.";
                break;
        }
    }
}

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
