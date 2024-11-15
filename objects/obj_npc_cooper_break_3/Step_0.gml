event_inherited();

if (is_talking == 1 && image_speed > 0)
{
    if (sprite_index != spr_npc_cooper_talk)
        sprite_index = spr_npc_cooper_talk;
}
else
{
    sprite_index = spr_npc_cooper_idle;
}

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* I love this place!";
                message[1] = "* It has a great sense of#  community, there's not much#  like it anywhere else!";
                message[2] = "* There's a new friend to make#  every time I go outside!";
                message[3] = "* Never too many friends for ol'#  Cooper!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I tried hanging around the#  Mines, but that place confuses#  me.";
                message[1] = "* Everywhere I step there's#  another puzzle blocking my way!";
                message[2] = "* I don't get it, what's the#  point?";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* There aren't many turtle#  monsters like me around here.";
                message[1] = "* There's this one in Snowdin,#  but he's way too popular to#  ever talk to me...";
                message[2] = "* Maybe someday we can be#  friends!";
            }
            
            break;
    }
}
