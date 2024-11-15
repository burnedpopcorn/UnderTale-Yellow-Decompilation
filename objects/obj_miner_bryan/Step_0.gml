if (global.dunes_flag[7] == 1)
{
    if (image_index >= (image_number - 1))
    {
        global.dunes_flag[7] = 2;
        alarm[0] = 35;
        image_speed = 0;
        sprite_index = spr_miner_bryan_alt;
    }
    
    exit;
}

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
                sndfnt = 99;
                message[0] = "* I lost all of my TNT...";
                message[1] = "* I have to tell the Foreman.";
                message[2] = "* He'll fire me, I'm sure, but#  it's my fault.";
                message[3] = "* I would go tell him right now,#  but I lost my hard hat as well.";
                message[4] = "* I can't protect my dome from#  the hazardous rocks outside.";
                message[5] = "* Today isn't my day...";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I have a brother, you see.";
                message[1] = "* I work at the Mines to provide#  for us.";
                message[2] = "* He doesn't have a job. Mostly#  just gets into mischief.";
                message[3] = "* But... he's happy, so I'm happy.";
                message[4] = "* How will I be able to look him#  in the face after I get fired?";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Today isn't my day...";
            }
            
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* I know I said I would go tell#  the Foreman but...";
                message[1] = "* I'm pretty scared.";
                message[2] = "* A few more minutes in my#  uniform won't hurt.";
            }
    }
}

if (hat_text == true && !global.dialogue_open)
{
    instance_destroy(obj_dialogue);
    global.cutscene = false;
    scr_text();
    is_talking = false;
    
    with (msg)
        message[0] = "* (You got eternal gratitude!)";
    
    audio_play_sound(snd_success, 1, 0);
    hat_text = false;
}
