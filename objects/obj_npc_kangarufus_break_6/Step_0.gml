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
                message[0] = "* I was locked up for usin' my#  cell phone in the saloon.\t";
                message[1] = "* Dina said it was against Wild#  East policy.\t";
                message[2] = "* Fair enough, but North Star#  has a freakin' TV in his#  house!!!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Oh, the gun? They let me keep#  it.\t";
                message[1] = "* It's only a model after all...#  mmhmm...";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* How often do you think they#  clean these cells?\t";
                message[1] = "* This one has a few too many#  feathers lyin' around for my#  likin'.\t";
                message[2] = "* And the wall... There's a#  patch of moss with a bite out#  of it.\t";
                message[3] = "* Weird...";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* Don't worry about me.\t";
                message[1] = "* I'm gonna sell my bank account#  for bail.\t";
                message[2] = "* Wish me luck!";
            }
            
            break;
    }
}
