var world_value;

world_value = 0;
route = 2;

if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    global.current_room_overworld = ini_read_string("Save1", "room", "rm_ruins00");
    global.menu_sprite = asset_get_index(ini_read_string("Save1", "Menu", "bg_ruins02"));
    route = ini_read_real("Route", "00", 2);
    world_value = scr_determine_world_value_yellow();
    ini_close();
}

mus = 129;

switch (world_value)
{
    case 0:
    case 5:
        mus = 129;
        break;
    
    case 1:
        mus = 130;
        break;
    
    case 2:
        mus = 131;
        break;
    
    case 3:
        mus = 17;
        break;
    
    case 4:
        mus = 45;
        break;
}

if (route != 3)
    audio_play_sound(mus, 20, 1);

p[3] = false;
p[2] = false;
p[1] = true;
sh = 0.5;
waiter = 0;
