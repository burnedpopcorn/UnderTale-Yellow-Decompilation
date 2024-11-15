var player_weapon, player_weapon_modifier;

player_weapon = global.player_weapon;
player_weapon_modifier = global.player_weapon_modifier;

switch (player_weapon)
{
    case "Toy Gun":
        switch (player_weapon_modifier)
        {
            case "Pebble Ammo":
                sprite_index = spr_toy_gun_battle_circle_pebbles;
                break;
            
            case "Cff Bean Ammo":
                sprite_index = spr_toy_gun_battle_circle_coffee;
                break;
            
            case "Glass Ammo":
                sprite_index = spr_toy_gun_battle_circle_glass;
                break;
            
            case "Silver Ammo":
                sprite_index = spr_toy_gun_battle_circle_silver;
                break;
            
            case "Nails":
                sprite_index = spr_toy_gun_battle_circle_nails;
                break;
            
            case "Friendliness Pellets":
                sprite_index = spr_toy_gun_battle_circle_pellets;
                break;
            
            case "Ice Pellets":
                sprite_index = spr_toy_gun_battle_circle_ice;
                break;
            
            case "Flint":
                sprite_index = spr_toy_gun_battle_circle_flint;
                break;
        }
        
        break;
}

image_speed = 0;
image_index = 0;
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
instance_create(319, 320, obj_dialogue_box_battle_transformation_attack);

with (obj_dialogue_box_battle_transformation_attack)
{
    sprite_width_destination = sprite_height;
    sprite_height_destination = sprite_height;
    max_frames_default = 10;
    transform_type = "in";
}
