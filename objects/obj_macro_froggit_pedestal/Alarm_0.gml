switch (global.sworks_flag[pedestal_flag])
{
    case 0:
        break;
    
    case 1:
        pedestal_item = "pear";
        break;
    
    case 2:
        pedestal_item = "coffee";
        break;
    
    case 3:
        pedestal_item = "cactus";
        break;
}

if (global.sworks_flag[pedestal_flag] != 0 || pedestal_is_active)
{
    instance_create_depth(x, y, 500, obj_macro_froggit_light);
    sprite_index = spr_macro_froggit_pedestal_activated;
    layer_set_visible(string(pedestal_placement) + "_" + string(pedestal_item), true);
    layer_set_visible("floorlights_" + string(pedestal_placement), true);
}
