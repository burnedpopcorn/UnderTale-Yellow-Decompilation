event_inherited();

if (interact && sprite_index == spr_cafe_npc_gamer)
{
    if (obj_pl.x < x)
    {
        image_xscale = -1;
        x = xstart + 1;
    }
    else
    {
        image_xscale = 1;
        x = xstart;
    }
    
    waiter = 1;
    scr_cutscene_start();
}

if (waiter == 0)
{
    if (sprite_index == spr_cafe_npc_gamer_talk)
    {
        sprite_index = spr_cafe_npc_gamer;
        image_index = image_number - 4;
    }
    else if (image_index <= 0)
    {
        image_speed = 0;
        sprite_index = spr_cafe_npc_gamer;
    }
    else if (image_speed == 0)
    {
        image_speed = -0.25;
    }
}

if (waiter > 0)
{
    if (waiter == 1)
    {
        if (sprite_index == spr_cafe_npc_gamer)
        {
            if (image_speed == 0)
                image_speed = 0.25;
            
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                sprite_index = spr_cafe_npc_gamer_talk;
                waiter = 2;
            }
        }
        
        exit;
    }
    
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Yo, what do ya want? I'm in#  the middle of a gaming sesh.";
                message[1] = "* Oh, you're a kid like me! I#  bet you're good at these#  machines.";
                message[2] = "* Have you tried out Mew Mew#  Love Blaster? It's addicting!";
                message[3] = "* I suck at it though.";
                message[4] = "* I hear there's a final boss#  but I've never seen anyone#  reach it.";
                message[5] = "* Bet you could totally kick its#  butt!";
            }
            
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* If you're around the area and#  need monsters to hang with,";
                message[1] = "* My friend group are the#  coolest kids around.";
                message[2] = "* The head count has been down#  lately... but it's still a fun#  time!";
            }
            
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Yo, sorry if I'm hogging this#  game.";
                message[1] = "* I'm determined to unlock a#  secret character I saw on#  Undernet.";
                message[2] = "* So far I haven't had any luck,#  but it's gotta be real! I saw#  the screenshot!";
            }
            
            break;
        
        case 3:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Can't talk. Gaming.";
            }
            
            break;
    }
    
    if (!global.dialogue_open)
    {
        if (npc_flag < 3)
            npc_flag += 1;
        
        waiter = 0;
        scr_cutscene_end();
    }
}
