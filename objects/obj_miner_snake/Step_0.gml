if (sprite_index == spr_miner_snake_eat)
{
    image_speed = 0.3;
    
    if (on_animation_end())
    {
        sprite_index = spr_miner_snake;
        image_speed = 0;
        
        if (!alarm[0])
            alarm[0] = 30;
    }
    
    exit;
}

event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    waiter = 1;
}

if (waiter == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            scr_cutscene_start();
            
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Hello, visitor.";
                message[1] = "* Did you venture through the#  whole mine?";
                message[2] = "* What a journey.";
                message[3] = "* For your troubles, I'll let you#  in on a little secret.";
                message[4] = "* You see, we aren't mining for#  gemstones at all.";
                message[5] = "* Those things are everywhere;#  practically worthless.";
                message[6] = "* We're actually mining for#  minerals like this one in front#  of me.";
                message[7] = "* They're used for building#  materials around the#  Underground, you see.";
                message[8] = "* They're also... very...";
            }
            
            if (!global.dialogue_open)
            {
                sprite_index = spr_miner_snake_eat;
                image_speed = 0.5;
                image_index = 0;
                npc_flag = 1;
                waiter = 0;
                exit;
            }
            
            break;
        
        case 1:
            with (msg)
                message[0] = "* I'm famished.";
            
            waiter = 0;
            break;
    }
}

if (is_talking == 1)
    sprite_index = spr_miner_snake_talk;
else
    sprite_index = spr_miner_snake;
