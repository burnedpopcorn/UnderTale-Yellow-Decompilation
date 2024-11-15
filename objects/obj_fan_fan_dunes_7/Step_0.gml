if (global.dunes_flag[2] == 0)
{
    if (obj_sandstorm_controller.storm_active == true)
    {
        if (sprite_index != spr_fan_fan_windy)
        {
            sprite_index = spr_fan_fan_windy;
            image_speed = 0.4;
            image_index = 0;
        }
        else if (image_index > 8)
        {
            image_index = 5;
        }
    }
    else if (sprite_index == spr_fan_fan_windy && on_animation_end())
    {
        sprite_index = spr_fan_fan;
        image_index = 0;
        image_speed = 0;
    }
}
else if (sprite_index == spr_fan_fan_windy)
{
    sprite_index = spr_fan_fan;
    image_index = 0;
    image_speed = 0;
}

if (sprite_index != spr_fan_fan)
    exit;

event_inherited();

if (interact)
{
    scr_text();
    is_talking = true;
    
    if (global.dunes_flag[2] == 0)
    {
        if (obj_sandstorm_controller.storm_active == true)
            msg.message[0] = "* Aa-aa-aa-hh-hh-hh!";
        else
            msg.message[0] = "* So... hot...";
    }
    else
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Bro, what's your damage?";
                    message[1] = "* Can't a monster cool off every#  now and then?";
                    message[2] = "* You're such a killjoy, bro.";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Sorry, I guess.";
                    message[1] = "* I get cranky when I don't get#  my fan time.";
                    message[2] = "* I like, found it here so I#  decided to put it to use.";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* I should move to Waterfall,#  bro.";
                    message[1] = "* Much cooler.";
                }
                
                break;
        }
    }
}
