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
                message[0] = "* Ah, it is you!";
                message[1] = "* Welcome to my club!";
                message[2] = "* I am glad I remembered to put#  you on the guest list!";
                message[3] = "* Now, join us in a dance, will#  you?";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* Oh right, I forgot you are not#  big on dancing.";
                message[1] = "* More of a Sentinel of Silence,#  right?";
                message[2] = "* Funny history I have with those#  folk.";
                message[3] = "* We all used to live on the top#  floor of UG Apartments north of#  here.";
                message[4] = "* Our side of the hall wanted to#  be bold! High energy!";
                message[5] = "* While the other preferred the#  deafening sound of silence.";
                message[6] = "* We feuded over the SVL for#  weeks! The Standard Volume#  Level, that is.";
                message[7] = "* Long story short, we all were#  kicked out, haha!";
                message[8] = "* Gone our separate ways now,#  free to chase any comfort we#  choose.";
                message[9] = "* I sometimes wonder what that#  bat got up to? Probably lives#  in some Snowdin cave.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* If I were you, I would let#  loose and dance with us!";
                message[1] = "* One never knows when they dance#  their last!";
                break;
        }
    }
}
