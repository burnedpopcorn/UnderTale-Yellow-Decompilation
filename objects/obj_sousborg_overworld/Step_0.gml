event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Ah, bonjour! Mon apprenti!";
                message[1] = "* Welcome back to ze kitchen!";
                message[2] = "* Thanks to your infinite#  wisdom, I have kept myself#  busy!";
                message[3] = "* Oui! Nossing but frying eggs#  for ze past ‘our!";
                message[4] = "* I am gifting free samples so#  have a taste if you like!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Have you seen ze flora#  everywhere?";
                message[1] = "* Ces plantes blanches...";
                message[2] = "* Well! Zeir taste iz just#  lovely!";
                message[3] = "* I ground some up into a new#  spice to use on zi eggs!";
                message[4] = "* But, for some reason, zi eggs#  did not like it.";
                message[5] = "* Zey melted in my pan when the#  spice touched zem!";
                message[6] = "* Quelle tragédie! Amour#  interdit!";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* You are ze first monstre I#  have spoken to in a while!";
                message[1] = "* I do miss conversing with#  ozers, espessially my creator!";
                message[2] = "* We have a lot in common. Our#  physique, voice, culinary#  skills - zey all match!";
                message[3] = "* I was confused why we were zi#  only ones in ze Steamworks like#  zis...";
                message[4] = "* He said zat many monstres come#  from ze outside world. Ze#  Surface!";
                message[5] = "* And on ze Surface are many#  different types of beings from#  different places!";
                message[6] = "* When all monstres migrated to#  zis mountain, some of zem#  hailed from zose places!";
                message[7] = "* And so, zeir wonderful#  traditions and cultures have#  spread around down here!";
                message[8] = "* What a beautiful sing!";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* I asked my creator where his#  family was from.";
                message[1] = "* He told me about a land far#  away with millions like me!";
                message[2] = "* But I simply cannot believe#  such a sing!";
                message[3] = "* Millions of culinary bots#  living togezer?";
                message[4] = "* Impossible!";
                message[5] = "* Zere would not be enough#  frying pans to go around!";
            }
            
            npc_flag += 1;
            break;
        
        case 4:
            with (msg)
            {
                message[0] = "* I better get back to ze stove!";
                message[1] = "* Until we cook again! ";
                message[2] = "* Au revoir!";
            }
            
            break;
    }
}
