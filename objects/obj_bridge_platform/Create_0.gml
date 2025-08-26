if (global.snowdin_flag[11] == 1)
{
    image_speed = 0;
    sprite_index = spr_bridge_platform_stand;
    depth = -y;
    chain = instance_create(x, y, obj_bridge_chain);
    
    with (chain)
    {
        image_index = 0;
        image_speed = 0;
    }
    
    exit;
}

image_speed = 0.5;
depth = -y;
var chain = instance_create(x, y, obj_bridge_chain);
chain.image_speed = image_speed;
fall = false;
