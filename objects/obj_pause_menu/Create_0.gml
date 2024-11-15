var i;

xs = 1;
ys = 1;
sizex = 1;
sizey = 1;
enlarge = 0;
image_index = 0;
image_speed = 0;
selection = 1;
stats_open = false;
choice[1] = "ITEM";
choice[2] = "STATS";
choice[3] = "MAIL";
choice[4] = "NOTHING";
choice[5] = "NOTHING";
item_selected = 1;
item_inspect = false;
inventory_open = false;
item_drop = false;
mail_selected = 0;
mail_inspect = false;
mail_check = false;
mail_open = false;
mail_offset = 0;
mail_display_count = 8;
audio_play_sound(snd_mainmenu_select, 1, 0);
selection_max = 3;

if (global.player_has_satchel == true)
{
    for (i = 1; i <= 5; i++)
    {
        if (choice[i] == "NOTHING")
        {
            choice[i] = "BAG";
            break;
        }
    }
    
    selection_max += 1;
}

if (global.party_member != -4)
{
    for (i = 1; i <= 5; i++)
    {
        if (choice[i] == "NOTHING")
        {
            choice[i] = "TALK";
            break;
        }
    }
    
    selection_max += 1;
}
