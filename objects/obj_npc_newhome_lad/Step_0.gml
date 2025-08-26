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
                message[0] = "* Can't a guy catch a break?";
                message[1] = "* They put me in doc review all#  afternoon! ";
                message[2] = "* I can barely move my fingers,#  let alone lather them in your#  weird soap!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* What's up with that anyway?#  What's wrong with soap from the#  store?";
                message[1] = "* I can't even pronounce half#  the ingredients on that bottle#  by the sink!";
                message[2] = "* \"Eu... Eu-ca...\" ";
                message[3] = "* Nope I can't do it, I just#  can't.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Are we even at the right#  station?";
                message[1] = "* Darn it all, I think we took#  the wrong elevator!";
                message[2] = "* See what happens when I'm#  stressed?";
                message[3] = "* I knew we should've moved to#  Hotland! Should've trusted my#  gut!";
                message[4] = "* This wouldn't have happened#  with their respectable elevator#  system!";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Yeah yeah, I know there's a#  map over there!";
                message[1] = "* But I'm too angry to improve#  our situation!";
            }
    }
}
