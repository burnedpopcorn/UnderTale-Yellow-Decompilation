var xx, yy, bbox_yscale, bbox_yoffset, bbox_yscale_multiplier, i, level_up_treshhold, drawn_ammo, n, mail_name;

if (live_call())
    return global.live_result;

xx = 52;
yy = 52;
draw_sprite_ext(spr_dialoguebox, 1, xx, yy, 1.1, 0.85, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy, 1, 0.75, image_angle, image_blend, image_alpha);
bbox_yscale = 1.25;
bbox_yoffset = 70;
bbox_yscale_multiplier = selection_max - 3;
bbox_yscale += (0.3 * bbox_yscale_multiplier);
bbox_yoffset += (9.6 * bbox_yscale_multiplier);
draw_sprite_ext(spr_dialoguebox, 1, xx, yy + bbox_yoffset, 1.1, bbox_yscale, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy + bbox_yoffset, 1, bbox_yscale - 0.1, image_angle, image_blend, image_alpha);
draw_set_colour(c_white);
draw_set_font(fnt_stats);
draw_text(xx - 28, yy - 2.5, string_hash_to_newline("LV " + string(global.player_level)));
draw_text(xx - 28, yy + 5, string_hash_to_newline("HP " + string(global.current_hp_self) + "/" + string(global.max_hp_self)));
draw_text(xx - 28, yy + 12.5, string_hash_to_newline("G   " + string(global.player_gold)));
draw_set_font(fnt_battle);
draw_text(xx - 28, yy - 22, string_hash_to_newline(string(global.player_name)));

if (!inventory_open && !stats_open && !mail_open)
{
    switch (selection)
    {
        case 1:
            draw_sprite(encounter_heart, 0, xx - 20, yy + 48);
            break;
        
        case 2:
            draw_sprite(encounter_heart, 0, xx - 20, yy + 68);
            break;
        
        case 3:
            draw_sprite(encounter_heart, 0, xx - 20, yy + 88);
            break;
        
        case 4:
            draw_sprite(encounter_heart, 0, xx - 20, yy + 108);
            break;
        
        case 5:
            draw_sprite(encounter_heart, 0, xx - 20, yy + 128);
            break;
    }
}

for (i = 1; i <= selection_max; i++)
{
    draw_set_color(c_white);
    
    if ((choice[i] == "ITEM" && global.item_slot[1] == "Nothing") || (choice[i] == "MAIL" && ds_list_empty(global.mail_list)))
        draw_set_color(c_gray);
    
    draw_text(xx - 10, yy + 20 + (20 * i), string_hash_to_newline(choice[i]));
}

if (stats_open == true)
{
    draw_sprite_ext(spr_dialoguebox, 1, xx + 125, yy + 72, 2.6, 3.1, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_dialoguebox, 0, xx + 125, yy + 72, 2.5, 3, image_angle, c_white, image_alpha);
    draw_set_colour(c_white);
    draw_set_font(fnt_battle);
    draw_text(xx + 57.2, yy - 10, string_hash_to_newline("\"Clover\""));
    draw_text(xx + 150, yy - 10, string_hash_to_newline("LV " + string(global.player_level)));
    draw_text(xx + 57.2, yy + 10, string_hash_to_newline("HP " + string(global.current_hp_self) + " / " + string(global.max_hp_self)));
    draw_text(xx + 57.2, yy + 35, string_hash_to_newline("AT " + string(global.player_attack) + "(" + string(global.player_weapon_modifier_attack) + ")"));
    draw_text(xx + 57.2, yy + 50, string_hash_to_newline("DF " + string(global.player_defense) + "(" + string(global.player_armor_modifier_defense + global.player_armor_defense) + ")"));
    draw_text(xx + 130, yy + 35, string_hash_to_newline("EXP " + string(global.player_exp)));
    level_up_treshhold = global.player_exp_next[global.player_level] - global.player_exp;
    draw_text(xx + 130, yy + 50, string_hash_to_newline("NEXT " + string(level_up_treshhold)));
    draw_text(xx + 57.2, yy + 70, string_hash_to_newline("WEAPON: " + global.player_weapon));
    draw_text(xx + 57.2, yy + 85, string_hash_to_newline("ARMOR: " + global.player_armor));
    drawn_ammo = global.player_weapon_modifier;
    
    if (drawn_ammo == "Friendliness Pellets")
        drawn_ammo = "F. Pellets";
    
    draw_text(xx + 57.2, yy + 105, string_hash_to_newline("AMMO: " + drawn_ammo));
    draw_text(xx + 57.2, yy + 120, string_hash_to_newline("ACCE: " + global.player_armor_modifier));
    draw_text(xx + 57.2, yy + 140, string_hash_to_newline("GOLD: " + string(global.player_gold)));
}

if (inventory_open)
{
    draw_sprite_ext(spr_dialoguebox, 1, xx + 125, yy + 56, 2.6, 2.6, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_dialoguebox, 0, xx + 125, yy + 56, 2.5, 2.5, image_angle, c_white, image_alpha);
    draw_set_colour(c_white);
    draw_set_font(fnt_battle);
    
    for (n = 1; n <= 8; n++)
    {
        if (global.item_slot[n] != "Nothing")
        {
            if (global.item_slot[n] == "Dihydrogen Monoxide")
                draw_text(xx + 65, (yy - 30) + (n * 15), string_hash_to_newline("H2O"));
            else if (global.item_slot[n] == "Friendliness Pellets")
                draw_text(xx + 65, (yy - 30) + (n * 15), string_hash_to_newline("F. Pellets"));
            else
                draw_text(xx + 65, (yy - 30) + (n * 15), string_hash_to_newline(global.item_slot[n]));
        }
    }
    
    draw_text(xx + 65, yy + 115, string_hash_to_newline("USE"));
    draw_text(xx + 110, yy + 115, string_hash_to_newline("INFO"));
    draw_text(xx + 160, yy + 115, string_hash_to_newline("DROP"));
    
    if (item_inspect == false)
        draw_sprite(encounter_heart, 0, xx + 55, (yy - 22) + (15 * item_selected));
}

if (item_inspect)
{
    switch (selection)
    {
        case 1:
            draw_sprite(encounter_heart, 0, xx + 55, yy + 123);
            break;
        
        case 2:
            draw_sprite(encounter_heart, 0, xx + 100, yy + 123);
            break;
        
        case 3:
            draw_sprite(encounter_heart, 0, xx + 150, yy + 123);
            break;
    }
}

if (mail_open)
{
    draw_sprite_ext(spr_dialoguebox, 1, xx + 125, yy + 56, 2.6, 2.6, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_dialoguebox, 0, xx + 125, yy + 56, 2.5, 2.5, image_angle, c_white, image_alpha);
    draw_set_font(fnt_battle);
    
    for (n = 0; n < mail_display_count; n++)
    {
        draw_set_color(c_white);
        mail_name = ds_list_find_value(global.mail_list, n + mail_offset);
        
        if (ds_list_find_index(global.mail_list_read, mail_name) != -1)
            draw_set_color(c_gray);
        
        if (n == 0 && mail_offset == 0 && global.mail_pinned)
            draw_set_color(c_yellow);
        
        if (mail_name != undefined)
            draw_text(xx + 65, (yy - 15) + (n * 15), string_hash_to_newline(mail_name));
    }
    
    draw_set_color(c_white);
    draw_text(xx + 65, yy + 115, string_hash_to_newline("READ"));
    draw_text(xx + 110, yy + 115, string_hash_to_newline("PIN"));
    draw_text(xx + 160, yy + 115, string_hash_to_newline("DROP"));
    
    if (mail_inspect == false)
        draw_sprite(encounter_heart, 0, xx + 55, (yy - 22) + (15 * (mail_selected + 1)));
    
    if (mail_offset > 0)
        draw_sprite_ext(spr_dimensional_box_scroll_arrow, 0, 240, 50, 1, 1, 180, c_white, 1);
    
    if ((mail_offset + 8) <= (ds_list_size(global.mail_list) - 1))
        draw_sprite(spr_dimensional_box_scroll_arrow, 0, 240, 147);
}

if (mail_inspect)
{
    switch (selection)
    {
        case 1:
            draw_sprite(encounter_heart, 0, xx + 55, yy + 123);
            break;
        
        case 2:
            draw_sprite(encounter_heart, 0, xx + 100, yy + 123);
            break;
        
        case 3:
            draw_sprite(encounter_heart, 0, xx + 150, yy + 123);
            break;
    }
}
