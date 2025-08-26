event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Whoa!!";
                message[1] = "* Finally! Another monster!!";
                message[2] = "* Are you lost as well?";
                message[3] = "* Seems to be happening more and#  more.";
                message[4] = "* Jane is the name!";
                message[5] = "* I'm on a case, you see.";
                message[6] = "* A few days ago, a resident went#  missing in these woods.";
                message[7] = "* Not the first time either.";
                message[8] = "* Throughout history, a few#  strange stories have popped up.";
                message[9] = "* Doors appearing out of#  nowhere...";
                message[10] = "* Impossible geography...";
                message[11] = "* Monsters straying from a set#  path and losing their sense of#  direction...";
                message[12] = "* Wild stuff.";
                message[13] = "* I'm the type that needs hard#  evidence to believe something.";
                message[14] = "* But that doesn't mean it didn't#  pique my curiosity.";
                message[15] = "* So when I heard about this#  missing monster, I had to#  investigate!";
                message[16] = "* Wasn't a few minutes before my#  compass stopped working and...";
                message[17] = "* Well... I became a believer,#  heh!";
                message[18] = "* What to do, what to do...";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* There's gotta be something or#  someone behind all this, no?";
                message[1] = "* Even though monsterkind has#  lived in the Underground for#  decades,";
                message[2] = "* There's still so much mystery#  to it all.";
                message[3] = "* Hmm...";
                message[4] = "* I know what you're thinking,#  and it was my first hypothesis#  as well.";
                message[5] = "* It's just magic, right?";
                message[6] = "* The Underground is full of the#  stuff!";
                message[7] = "* Well, obviously it's gotta be.";
                message[8] = "* But I don't know...";
                message[9] = "* Some of these sightings seem#  intentional.";
                message[10] = "* I have got to solve this as#  soon as I'm out of these woods.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Don't worry about sticking#  around if you got places#  to be - I'll be fine!";
                message[1] = "* Still have plenty of snacks in#  my bag.";
                message[2] = "* When it's time to go, I'll just#  start walking in one direction.";
                message[3] = "* Should make my way out, easy#  peasy!";
                message[4] = "* Really wanna find who I'm#  looking for first, though.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Sorry, I'm mulling over the#  case.";
                message[1] = "* Deep in thought.";
                message[2] = "* Yep.";
                message[3] = "* Not losing it.";
                message[4] = "* Not yet.";
            }
    }
}
