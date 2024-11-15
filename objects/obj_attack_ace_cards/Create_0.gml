switch (irandom_range(1, 4))
{
    case 1:
        idle_sprite = spr_attack_ace_card_1;
        flip_sprite = spr_attack_ace_flip_card_1;
        shape_sprite = spr_attack_ace_shape_1;
        break;
    
    case 2:
        idle_sprite = spr_attack_ace_card_2;
        flip_sprite = spr_attack_ace_flip_card_2;
        shape_sprite = spr_attack_ace_shape_2;
        break;
    
    case 3:
        idle_sprite = spr_attack_ace_card_3;
        flip_sprite = spr_attack_ace_flip_card_3;
        shape_sprite = spr_attack_ace_shape_3;
        break;
    
    case 4:
        idle_sprite = spr_attack_ace_card_4;
        flip_sprite = spr_attack_ace_flip_card_4;
        shape_sprite = spr_attack_ace_shape_4;
        break;
}

sprite_index = flip_sprite;
image_speed = 0;
card_original_x = xstart;
card_original_y = ystart;
card_target_x = 0;
card_target_y = 0;
card_active = true;
attack_stage = 0;
audio_play_sound(snd_card_game_deal, 1, 0);
depth = -999999;
