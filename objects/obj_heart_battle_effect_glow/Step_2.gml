if (!instance_exists(obj_heart_battle_fighting_parent) || global.current_pp_self <= 0)
{
    instance_destroy();
    exit;
}

if (obj_heart_battle_fighting_parent.vulnerable == true)
{
    image_alpha += image_alpha_increase;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        image_alpha_increase = -image_alpha_increase;
    }
    
    if (image_alpha <= 0)
    {
        image_alpha = 0;
        image_alpha_increase = -image_alpha_increase;
    }
}
else
{
    image_alpha = 0;
    image_alpha_increase = abs(image_alpha_increase);
}

x = obj_heart_battle_fighting_parent.x;
y = obj_heart_battle_fighting_parent.y;
image_angle = obj_heart_battle_fighting_parent.image_angle;

switch (obj_heart_battle_fighting_parent.sprite_index)
{
    case spr_heart_yellow_left:
        if (instance_exists(obj_heart_battle_fighting_axis))
            image_angle = -90 + obj_heart_battle_fighting_axis.image_angle;
        else
            image_angle += 90;
        
        break;
    
    case spr_heart_yellow_right:
        image_angle -= 90;
        break;
    
    case spr_heart_yellow_up:
    case spr_heart_yellow_charge:
    case spr_heart_yellow_ready:
    case spr_heart_yellow_hold:
    case spr_heart_yellow_shoot:
        image_angle -= 180;
        break;
}
