switch (scene)
{
    case 1:
        if (obj_steamworks_17_manta_gate_button.image_speed == 0)
        {
            audio_play_sound(snd_manta_gate_open, 1, 0);
            obj_steamworks_17_manta_gate_button.image_speed = 1/3;
        }
        
        if (obj_steamworks_17_manta_gate_button.image_index >= (obj_steamworks_17_manta_gate_button.image_number - 1))
        {
            obj_steamworks_17_manta_gate_button.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        cutscene_change_room(165, 690, 280, 0.1);
        break;
    
    case 4:
        obj_pl.image_alpha = 0;
        
        if (global.party_member != -4)
            global.party_member.image_alpha = 0;
        
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        with (obj_steamworks_17_bars)
        {
            sprite_index = spr_steamworks_17_bars;
            image_speed = 1/3;
        }
        
        cutscene_advance();
        break;
    
    case 7:
        if (obj_steamworks_17_bars.image_index >= (obj_steamworks_17_bars.image_number - 1))
        {
            obj_steamworks_17_bars.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        cutscene_change_room(279, 180, 140, 0.1);
        break;
    
    case 10:
        obj_steamworks_17_manta_gate_button.image_index = obj_steamworks_17_manta_gate_button.image_number - 1;
        obj_pl.image_alpha = 1;
        
        if (global.party_member != -4)
        {
            global.party_member.image_alpha = 1;
            global.party_member.y = obj_pl.y + 20;
        }
        
        cutscene_advance();
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        scr_cutscene_end();
        global.sworks_flag[9] = 1;
        instance_destroy();
        break;
}
