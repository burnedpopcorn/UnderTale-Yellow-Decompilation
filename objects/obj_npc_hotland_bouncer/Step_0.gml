event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.dunes_flag[26] < 3)
    {
        with (msg)
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* Oi, if ya want in the club,#  you're gonna 'avta wait in line!";
                    message[1] = "* That is, unless you're on the#  VIP guest list. ";
                    message[2] = "* I doubt it but it wouldn't 'urt#  to check.";
                    message[3] = "* ...";
                    message[4] = "* Wouldja look at that! I got a#  lad 'ere that looks just like#  you!";
                    message[5] = "* Go on, then!";
                    other.npc_flag++;
                    break;
                
                case 1:
                    message[0] = "* Got a lotta impatient monsters#  who show up 'ere.";
                    message[1] = "* Surely by now they would know#  not to come durin' crab hour!";
                    other.npc_flag++;
                    break;
                
                case 2:
                    message[0] = "* The crabs are Mr. Bailador's#  understudies.";
                    message[1] = "* \"The Sentinels of Sound\" 'e#  calls 'em.";
                    message[2] = "* Not sure where he rounded the#  fellas up but the guy gets#  around.";
                    message[3] = "* I try not to dabble in their#  business, I'm just 'ere for the#  paycheck.";
                    other.npc_flag++;
                    break;
                
                case 3:
                    message[0] = "* You 'ave fun in there!";
                    break;
            }
        }
    }
    else
    {
        with (msg)
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* Oi, club's closed.";
                    message[1] = "* Mr. Bailador isn't answering#  'is phone.";
                    message[2] = "* Sure 'e's always travlin' but#  it ain't like him to miss crab#  hour.";
                    message[3] = "* Ah well, the understudies just#  left to go searchin' for 'im.";
                    message[4] = "* Wild night this is...";
                    other.npc_flag++;
                    break;
                
                case 1:
                    message[0] = "* Didja not 'ear me the first#  time?";
                    message[1] = "* Ain't no dancin' happenin'#  tonight.";
                    message[2] = "* Do it somewhere else if ya#  must.";
                    other.npc_flag++;
                    break;
                
                case 2:
                    message[0] = "* 'Ope I'm still gettin' paid#  for this...";
                    break;
            }
        }
    }
}
