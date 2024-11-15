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
                message[0] = "* . .";
                message[1] = "* I ain't gonna make you a drink#  if that's what you want.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I know what you did...";
                message[1] = "* Naive fool... I tried to warn#  him.";
                message[2] = "* And Ceroba... She lost to you?#  You must be feelin' real lucky.";
                message[3] = "* . .";
                message[4] = "* I have nothin' but hatred#  runnin' through me, but I know#  I wouldn't stand a chance.";
                message[5] = "* So here I am, cooped up while#  everyone else...";
                message[6] = "* . .";
                message[7] = "* If you aren't going to kill#  me, let me mourn my family in#  peace.";
                message[8] = "* Star might've only been a#  target to you but...";
                message[9] = "* He was more of a hero than#  you'll ever be.";
                message[10] = "* Now...";
                message[11] = "* Get out of my saloon.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
                message[0] = "* . .";
            
            break;
    }
}
