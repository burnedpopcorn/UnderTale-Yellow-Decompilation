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
                message[0] = "* Bro, I came to the club to let#  loose and boogie, not wait in#  line!";
                message[1] = "* \"It's crab hour!\" is what they#  keep telling me. \"It's crab#  hour!\"";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* Who says I'm NOT a crab? Like,#  they sure are putting me in a#  crabby mood!";
                message[1] = "* That, and I haven't trimmed my#  fingernails in months.";
                message[2] = "* I could pinch someone so hard#  with these puppies.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* The moment crab hour ends is#  the moment I seize the floor and#  get DOWN.";
                message[1] = "* You can quote me on that, bro.";
                break;
        }
    }
}
