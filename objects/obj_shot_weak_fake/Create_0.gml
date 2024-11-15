var player_weapon, player_weapon_modifier, shoot_sound;

player_weapon = global.player_weapon;
player_weapon_modifier = global.player_weapon_modifier;

switch (player_weapon)
{
    case "Toy Gun":
    case "Wild Revolver":
        switch (player_weapon_modifier)
        {
            case "Pebble Ammo":
                shoot_sound = audio_play_sound(snd_shotweak_pebbles, 20, false);
                sprite_index = spr_shot_weak_pebbles;
                image_speed = 0.48333333333333334;
                break;
            
            case "Cff Bean Ammo":
                shoot_sound = audio_play_sound(snd_shotweak_coffee, 20, false);
                sprite_index = spr_shot_weak_coffee;
                image_speed = 1/3;
                break;
            
            case "Glass Ammo":
                shoot_sound = audio_play_sound(snd_shotweak_glass, 20, false);
                sprite_index = spr_shot_weak_glass;
                image_xscale = 2;
                image_yscale = 2;
                image_speed = 1/3;
                break;
            
            case "Silver Ammo":
                shoot_sound = audio_play_sound(snd_shotweak_silver, 20, false);
                sprite_index = spr_shot_weak_silver;
                image_speed = 0.48333333333333334;
                break;
            
            case "Nails":
                shoot_sound = audio_play_sound(snd_shotweak_nails, 20, false);
                sprite_index = spr_shot_weak_nails;
                image_speed = 1;
                break;
            
            case "Friendliness Pellets":
                shoot_sound = audio_play_sound(snd_shotweak_pellets, 20, false);
                sprite_index = spr_shot_weak_pellets;
                image_speed = 1;
                break;
            
            case "Ice Pellets":
                shoot_sound = audio_play_sound(snd_shotweak_ice, 20, false);
                sprite_index = spr_shot_weak_ice;
                image_speed = 0.48333333333333334;
                break;
            
            case "Flint":
                shoot_sound = audio_play_sound(snd_shotweak_flint, 20, false);
                sprite_index = spr_shot_weak_flint;
                image_speed = 0.48333333333333334;
                break;
            
            default:
                shoot_sound = audio_play_sound(snd_shotweak, 20, false);
                image_speed = 0.26666666666666666;
        }
        
        break;
}

image_index = 0;
audio_sound_gain(shoot_sound, 1.5, 0);
