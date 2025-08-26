if (live_call())
    return global.live_result;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

var xx = obj_heart_battle_fighting_parent.x;
var yy = obj_heart_battle_fighting_parent.y - 20;

switch (image_angle)
{
    case 0:
        xx = obj_heart_battle_fighting_parent.x + 20;
        yy = obj_heart_battle_fighting_parent.y;
        break;
    
    case 90:
        xx = obj_heart_battle_fighting_parent.x;
        yy = obj_heart_battle_fighting_parent.y - 20;
        break;
    
    case 180:
        xx = obj_heart_battle_fighting_parent.x - 20;
        yy = obj_heart_battle_fighting_parent.y;
        break;
    
    case 270:
        xx = obj_heart_battle_fighting_parent.x;
        yy = obj_heart_battle_fighting_parent.y + 20;
        break;
}

x = xx;
y = yy;

if (laser_active == true)
{
    laser_x1 = x;
    laser_x2 = x + lengthdir_x(laser_length, direction);
    laser_y1 = y;
    laser_y2 = y + lengthdir_y(laser_length, direction);
}
