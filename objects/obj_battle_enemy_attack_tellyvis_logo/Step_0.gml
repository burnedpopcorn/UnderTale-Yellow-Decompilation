if (image_alpha < 1)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            
            if (!alarm[0] && move == false)
                alarm[0] = 15;
        }
    }
}

var readjust = false;
var box = obj_dialogue_box_battle_transformation_any;

if (bbox_left <= (box.bbox_left + 4))
{
    if (direction < 180 && direction > 0)
        direction -= 90;
    else
        direction += 90;
    
    readjust = true;
}

if (bbox_right >= (box.bbox_right - 4))
{
    if (direction < 180 && direction > 0)
        direction += 90;
    else
        direction -= 90;
    
    readjust = true;
}

if (bbox_top <= (box.bbox_top + 4))
{
    if (direction < 90)
        direction -= 90;
    else
        direction += 90;
    
    readjust = true;
}

if (bbox_bottom >= (box.bbox_bottom - 4))
{
    if (direction > 270)
        direction += 90;
    else
        direction -= 90;
    
    readjust = true;
}

if (readjust == true)
{
    x += lengthdir_x(1, direction);
    y += lengthdir_y(1, direction);
    
    switch (attack_color)
    {
        case "white":
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_white);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_blue);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_orange);
            
            if (!instance_exists(obj_battle_enemy_attack_tellyvis_logo_white))
                instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth, obj_battle_enemy_attack_tellyvis_logo_white);
            
            image_blend = c_white;
            attack_color = "blue";
            break;
        
        case "blue":
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_white);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_blue);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_orange);
            
            if (!instance_exists(obj_battle_enemy_attack_tellyvis_logo_blue))
                instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth, obj_battle_enemy_attack_tellyvis_logo_blue);
            
            image_blend = make_color_rgb(0, 162, 232);
            attack_color = "orange";
            break;
        
        case "orange":
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_white);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_blue);
            instance_destroy(obj_battle_enemy_attack_tellyvis_logo_orange);
            
            if (!instance_exists(obj_battle_enemy_attack_tellyvis_logo_orange))
                instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth, obj_battle_enemy_attack_tellyvis_logo_orange);
            
            image_blend = c_orange;
            attack_color = "white";
            break;
    }
}
