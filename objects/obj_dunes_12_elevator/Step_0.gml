if (global.dunes_flag[4] < 2)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        if (global.dunes_flag[4] == 0)
        {
            scr_text();
            
            with (msg)
            {
                message[0] = "* (A piece of wood is lodged#  in-between the elevator doors.)";
                message[1] = "* (What could fix this poor#  elevator?)";
            }
            
            elevator_menu_open = true;
            global.dunes_flag[4] += 1;
        }
        else if (global.dunes_flag[4] == 1)
        {
            elevator_menu_open = true;
        }
    }
    
    if (!global.dialogue_open && elevator_menu_open == true)
    {
        instance_create(x, y, obj_item_use_menu);
        scr_cutscene_start();
        elevator_menu_open = false;
    }
    
    if (global.item_used_overworld != undefined)
    {
        scr_text();
        
        with (msg)
        {
            switch (global.item_used_overworld)
            {
                default:
                    message[0] = "* (You can't think of a way to#  make this work.)";
                    global.cutscene = false;
                    break;
                
                case "Pickaxe":
                    message[0] = "* (You use the pickaxe to hack#  away at the wood.)";
                    other.elevator_solution = "Pickaxe";
                    break;
                
                case "Steel Buckle":
                case "Flint":
                    if (scr_item_exists_check("Flint") && scr_item_exists_check("Steel Buckle"))
                    {
                        message[0] = "* (You start rubbing the steel#  buckle against the flint.)";
                        other.elevator_solution = "Flint & Steel";
                    }
                    else
                    {
                        message[0] = "* (You can't think of a way to#  make this work.)";
                        global.cutscene = false;
                    }
                    
                    break;
                
                case "Matches":
                    message[0] = "* (You strike a match on the#  piece of wood.)";
                    other.elevator_solution = "Matches";
                    break;
            }
        }
        
        if (!global.dialogue_open)
            global.item_used_overworld = undefined;
    }
    
    if (!global.dialogue_open && elevator_solution != "none")
    {
        var newsprite, newsound, newmessage;
        
        switch (elevator_solution)
        {
            case "Pickaxe":
                newsprite = 1014;
                newmessage = "* (The pickaxe broke.)";
                newsound = 251;
                break;
            
            case "Flint & Steel":
                newsprite = 1013;
                newmessage = "* (The flint crumbled away and#  the buckle melted.)";
                newsound = 249;
                scr_item_remove("Flint");
                scr_item_remove("Steel Buckle");
                break;
            
            case "Matches":
                newsprite = 1013;
                newmessage = "* (The whole box of matches#  caught fire and burnt up.)";
                newsound = 249;
                break;
        }
        
        if (sprite_index == spr_dunes_13_elevator)
        {
            scr_item_remove(elevator_solution);
            sprite_index = newsprite;
            audio_play_sound(newsound, 1, 0);
            image_speed = 0.3;
            timer = 30;
        }
        else if (image_index >= (image_number - 1))
        {
            if (!scr_timer())
            {
                image_speed = 0;
                exit;
            }
            else if (sprite_index == newsprite)
            {
                audio_play_sound(snd_elevator_open, 1, 0);
                sprite_index = spr_dunes_13_elevator_fixed;
                image_speed = 0.3;
                image_index = 0;
                exit;
            }
            
            image_speed = 0;
            instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_dunes_12);
            global.dunes_flag[4] = 2;
            scr_text();
            
            with (msg)
                message[0] = newmessage;
        }
    }
}
else
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() && image_speed == 0)
    {
        if (image_speed == 0)
        {
            scr_cutscene_start();
            image_speed = 0.3;
            audio_play_sound(snd_elevator_open, 1, 0);
            exit;
        }
    }
    
    if (floor(image_index) <= 0 && image_speed < 0)
    {
        image_speed = 0;
        image_index = 0;
    }
    
    if (image_index >= (image_number - 1) && image_speed > 0)
    {
        image_speed = 0;
        instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_dunes_12);
    }
}
