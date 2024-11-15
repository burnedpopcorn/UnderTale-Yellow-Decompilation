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
                message[0] = "* North Star is the coolest!";
                message[1] = "* One time, a construction team#  was demolishing a building in#  New Home.";
                message[2] = "* But uh oh! An infant was in#  the way of the building as it#  came CRASHING down!";
                message[3] = "* Suddenly, North Star appeared#  and wound his lasso up!";
                message[4] = "* He wrangled that skyscraper#  without breaking a sweat! Yee#  haw! Yee haw!";
                message[5] = "* For saving its life, the#  building gave North Star ONE#  MILLION G!";
                message[6] = "* True story! True story!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Me and North Star are a lot#  alike, don'tcha think?";
                message[1] = "* The golden complexions, the#  hats, the owning of two legs.";
                message[2] = "* I would roleplay as his son if#  only he'd let me!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* North Star's four friends are#  OKAY but who cares about#  sidekicks?";
                message[1] = "* I mean, unless I was his#  sidekick. I would care about#  that A LOT!";
            }
            
            break;
    }
}
