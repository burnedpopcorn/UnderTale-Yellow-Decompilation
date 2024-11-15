var random_number;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
random_number = irandom_range(0, 13);

switch (random_number)
{
    case 0:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_globe;
        break;
    
    case 1:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_shoe;
        break;
    
    case 2:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_mug;
        break;
    
    case 3:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_can;
        break;
    
    case 4:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_thingy;
        break;
    
    case 5:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_ball;
        break;
    
    case 6:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_glass;
        break;
    
    case 7:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_saw;
        break;
    
    case 8:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_idk;
        break;
    
    case 9:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_nail;
        break;
    
    case 10:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_screw;
        break;
    
    case 11:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_plank;
        break;
    
    case 12:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_radio;
        break;
    
    case 13:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_screwdriver;
        break;
    
    default:
        sprite_index = spr_battle_enemy_attack_martlet_wing_gust_junk_globe;
}

image_speed = 0;
image_index = 0;
image_alpha = 1;
image_angle = 0;
image_xscale = 1;
image_yscale = 1;
junk_vsp = irandom_range(-9, -11);
junk_hsp = irandom_range(3, 4);
junk_grav = 0.4;
junk_direction = 0;
battle_box_bottom = obj_dialogue_box_battle_transformation_any.bbox_bottom;
fade_out = false;
