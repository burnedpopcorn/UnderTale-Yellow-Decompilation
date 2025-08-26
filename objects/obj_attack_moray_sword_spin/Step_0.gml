var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_state)
{
    case 1:
        var x_target = battle_box.x;
        x = lerp(x, x_target, 0.3);
        
        if (abs(x - x_target) <= 1)
        {
            x = x_target;
            attack_state += 1;
        }
        
        break;
    
    case 2:
        if (image_speed == 0)
            image_speed = 0.5;
        
        if (image_index >= (image_number - 1))
        {
            sword_color = choose("blue", "orange");
            attack_state += 1;
            
            if (sword_color == "blue")
            {
                sprite_index = spr_attack_moray_sword_blue_start;
                image_index = 0;
                image_speed = 1/3;
            }
            
            if (sword_color == "orange")
            {
                sprite_index = spr_attack_moray_sword_orange_start;
                image_index = 0;
                image_speed = 1/3;
            }
        }
        
        break;
    
    case 3:
        if (image_index >= (image_number - 1))
        {
            if (sword_color == "blue")
            {
                sprite_index = spr_attack_moray_sword_blue_spin;
                image_index = 0;
                image_speed = 0.25;
            }
            
            if (sword_color == "orange")
            {
                sprite_index = spr_attack_moray_sword_orange_spin;
                image_index = 0;
                image_speed = 0.25;
            }
            
            attack_state += 1;
            no_loop = false;
            exit;
        }
        
        break;
    
    case 4:
        box_dist = abs(y - battle_box.y);
        
        if (y > battle_box.y)
            attack_state += 1;
        else
            attack_state += 2;
        
        break;
    
    case 5:
        if (path_position == 0)
            path_start(fly_path, 25, path_action_stop, true);
        else if (path_position >= 1)
            attack_state = 7;
        
        break;
    
    case 6:
        if (path_position == 1)
            path_start(fly_path, -25, path_action_stop, true);
        else if (path_position <= 0)
            attack_state = 7;
        
        break;
    
    case 7:
        if (image_index >= (image_number - 1))
        {
            if (irandom(pseudo_random_number) == 0)
            {
                attack_state = 4;
                pseudo_random_number = pseudo_random_max;
                exit;
            }
            else
            {
                pseudo_random_number = clamp(pseudo_random_number - 1, 0, pseudo_random_max);
            }
            
            if (sword_color == "blue")
                sword_color = "orange";
            else
                sword_color = "blue";
            
            if (sword_color == "blue")
            {
                sprite_index = spr_attack_moray_sword_blue_start;
                image_index = 0;
                image_speed = 0.75;
            }
            
            if (sword_color == "orange")
            {
                sprite_index = spr_attack_moray_sword_orange_start;
                image_index = 0;
                image_speed = 0.75;
            }
            
            attack_state = 4;
        }
        
        break;
}

if (path_speed >= 0.1 || path_speed <= -0.1)
{
    var remnant = instance_create(x, y, obj_attack_moray_sword_spin_remnant);
    remnant.sprite_index = sprite_index;
    remnant.image_speed = 0;
    remnant.image_index = 0;
}

if ((sprite_index == spr_attack_moray_sword_blue_start || (sprite_index == sprite_index) == 3501) && image_index >= (image_number - 1))
{
    if (sword_color == "blue")
    {
        sprite_index = spr_attack_moray_sword_blue_spin;
        image_index = 0;
        image_speed = 0.25;
    }
    
    if (sword_color == "orange")
    {
        sprite_index = spr_attack_moray_sword_orange_spin;
        image_index = 0;
        image_speed = 0.25;
    }
}

if (sword_color == "blue")
{
    if (instance_exists(obj_attack_moray_sword_spin_orange))
        instance_destroy(obj_attack_moray_sword_spin_orange);
    
    if (!instance_exists(obj_attack_moray_sword_spin_blue))
        instance_create(x, y, obj_attack_moray_sword_spin_blue);
}
else if (sword_color == "orange")
{
    if (instance_exists(obj_attack_moray_sword_spin_blue))
        instance_destroy(obj_attack_moray_sword_spin_blue);
    
    if (!instance_exists(obj_attack_moray_sword_spin_orange))
        instance_create(x, y, obj_attack_moray_sword_spin_orange);
}
