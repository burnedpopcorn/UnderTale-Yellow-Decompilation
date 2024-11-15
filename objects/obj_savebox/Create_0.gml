var current_world_value;

xs = 1;
ys = 1;
sizex = 1;
sizey = 1;
enlarge = 0;
color = c_white;
image_index = 0;
image_speed = 0;
itemBox = false;
statBox = false;
p1 = true;
p2 = false;
roomname = "Dark Ruins - Hallway";
color2 = c_white;
done = false;
ready = false;
scr_determine_save_area();
current_world_value = scr_determine_world_value_yellow();

switch (current_world_value)
{
    case 1:
        global.menu_sprite = spr_savescreen_ruins;
        break;
    
    case 2:
        global.menu_sprite = spr_savescreen_snowdin;
        break;
    
    case 3:
        global.menu_sprite = spr_savescreen_dunes;
        break;
    
    case 4:
        global.menu_sprite = spr_savescreen_steamworks;
        break;
    
    case 5:
        global.menu_sprite = spr_savescreen_hotland;
        break;
}

if (room == rm_newhome_03)
    global.menu_sprite = spr_savescreen_newhome;
