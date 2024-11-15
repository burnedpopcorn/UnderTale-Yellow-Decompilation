var compound_id, i, status_1, status_2;

if (live_call())
    return global.live_result;

switch (screen_state)
{
    case 0:
        with (obj_compound_parent)
        {
            if (robot_item_is_carried == true)
            {
                if (point_distance(x, y, other.x + 55, other.y + 64) < 30)
                {
                    if (other.item_throw_noloop == false || keyboard_multicheck_pressed(1))
                    {
                        scr_cutscene_start();
                        robot_item_x_target = 165;
                        robot_item_y_target = 132;
                        other.screen_state += 1;
                        other.compound_active = id;
                        other.item_throw_noloop = true;
                    }
                }
                else
                {
                    other.item_throw_noloop = false;
                }
            }
        }
        
        if (keyboard_multicheck_pressed(0) && scr_interact() && screen_interact_noloop == false)
        {
            screen_counter = 0;
            screen_message = "...\nWaiting for correct\ncompounds to complete\nmixture . .";
            
            if (global.route == 3)
                screen_message = "ERROR: Power low";
            
            screen_interact_noloop = true;
        }
        
        break;
    
    case 1:
        with (compound_active)
        {
            if (robot_item_is_jumping == false)
            {
                robot_item_is_jumping = true;
                audio_play_sound(snd_playerjump, 1, 0);
            }
            
            other.screen_state += 1;
        }
        
        break;
    
    case 2:
        with (compound_active)
        {
            if (robot_item_is_jumping)
                exit;
            
            if (image_alpha >= 0)
            {
                image_alpha -= 0.05;
            }
            else
            {
                other.screen_counter = 0;
                other.screen_message = "Reading. .";
                other.screen_state += 1;
            }
        }
        
        break;
    
    case 3:
        if (!alarm[1])
            alarm[1] = room_speed * 1;
        
        break;
    
    case 4:
        screen_counter = 0;
        screen_message = compound_active.compound_id;
        screen_state += 1;
        break;
    
    case 5:
        if (!alarm[1])
            alarm[1] = room_speed * 1;
        
        break;
    
    case 6:
        screen_message += "\nVerdict: ";
        screen_state += 1;
        break;
    
    case 7:
        if (!alarm[1])
            alarm[1] = room_speed * 0.5;
        
        break;
    
    case 8:
        if (compound_active.compound_id == "Chlorine [Cl]" || compound_active.compound_id == "Hydrogen [H]")
        {
            compound_count += 1;
            compound_destroy = true;
            
            if (global.route == 3)
                screen_message += "Acception Message";
            else
                screen_message += "Accepted.";
        }
        else
        {
            if (global.route == 3)
                screen_message += "Rejection Message";
            else
                screen_message += "Declined.";
            
            compound_destroy = true;
            
            with (compound_active)
            {
            }
        }
        
        screen_state += 1;
        break;
    
    case 9:
        if (!alarm[1])
            alarm[1] = room_speed * 1;
        
        break;
    
    case 10:
        if (global.route != 3)
        {
            scr_text();
            compound_id = compound_active;
            
            with (msg)
            {
                for (i = 0; i < array_length(compound_id.message); i++)
                {
                    col_modif[0] = 65280;
                    message[i] = compound_id.message[i];
                    message_col[i][0] = message[i];
                    color = true;
                }
            }
        }
        
        if (!global.dialogue_open)
            screen_state += 1;
        
        break;
    
    case 11:
        if (compound_destroy == true)
            instance_destroy(compound_active);
        
        if (compound_count == 0)
        {
            screen_counter = 0;
            screen_message = "...\nWaiting for correct\ncompounds to complete\nmixture . .";
            
            if (global.route == 3)
                screen_message = "ERROR: Power low";
            
            screen_interact_noloop = true;
        }
        else
        {
            screen_counter = 0;
            status_1 = "MISSING";
            status_2 = "MISSING";
            
            if (compound_count > 0)
                status_1 = "PRESENT";
            
            if (compound_count > 1)
                status_2 = "PRESENT";
            
            screen_message = "Status:\nCompound 1: " + status_1 + "\nCompound 2: " + status_2;
            screen_interact_noloop = true;
        }
        
        if (compound_count > 1)
        {
            screen_message = ". .Booting process.";
            
            if (global.route == 3)
                screen_message = ". .";
            
            screen_state += 1;
        }
        else
        {
            screen_state = 0;
            scr_cutscene_end();
        }
        
        break;
    
    case 12:
        if (!alarm[1])
            alarm[1] = room_speed * 2;
        
        break;
    
    case 13:
        if (global.route == 3)
            screen_message += "\nITEMs ready\nApproach terminal";
        else
            screen_message += "\nBoot complete.\nMixing initialized.";
        
        screen_state += 1;
    
    case 14:
        if (!alarm[1])
            alarm[1] = room_speed * 1.5;
        
        break;
    
    case 15:
        instance_create_depth(0, 0, -room_height, obj_chem_05_maze_puzzle);
        screen_state += 1;
        break;
    
    case 16:
        if (!instance_exists(obj_chem_05_maze_puzzle))
            screen_state += 1;
        
        break;
    
    case 17:
        screen_counter = 0;
        screen_message = "Mixing process\ncomplete. Enjoy your\ndeadly acid :)";
        
        if (global.route == 3)
            screen_message = "Your ITEM is ready";
        
        screen_interact_noloop = true;
        screen_state += 1;
        break;
    
    case 18:
        if (!alarm[1])
            alarm[1] = room_speed * 1.5;
        
        break;
    
    case 19:
        audio_play_sound(snd_success, 1, 0);
        instance_create(264, 158, obj_steamworks_05_acid);
        scr_cutscene_end();
        global.sworks_flag[25] = 2;
        screen_state += 1;
        break;
}

if (screen_counter < string_length(screen_message))
{
    if (keyboard_multicheck_pressed(1) && screen_state > 0)
        screen_counter = string_length(screen_message);
    
    screen_counter += 1;
    
    if (screen_counter == floor(screen_counter))
        audio_play_sound(snd_talk_default, 1, 0);
    
    screen_cursor = "_";
    alarm[0] = room_speed;
}

screen_message_current = string_copy(screen_message, 0, screen_counter);
