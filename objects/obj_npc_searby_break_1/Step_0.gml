depth = -999;
interact = 0;

if (keyboard_multicheck_pressed(0) && scr_interact() == true)
    interact = 1;

if (instance_exists(obj_dialogue) && is_talking == true)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        if (sprite_index != spr_npc_searby)
        {
            image_index = 0;
            sprite_index = spr_npc_searby;
        }
    }
    else if (sprite_index != spr_npc_searby_talk)
    {
        image_index = 0;
        sprite_index = spr_npc_searby_talk;
    }
}
else
{
    is_talking = false;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* What an introduction, right?";
                message[1] = "* Hope ya didn't have any stage#  fright!";
                message[2] = "* Stages can be scary! All...#  wooden, occasionally making#  faces at you...";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I'm from out of town like#  yourself.";
                message[1] = "* Got some folks I'm close to#  back west.";
                message[2] = "* I really gotta get 'em over#  here soon! They'd love the#  atmosphere!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
                message[0] = "* Good luck out there, human!";
            
            break;
    }
}
