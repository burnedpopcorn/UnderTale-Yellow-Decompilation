function scr_battle_draw_item_names()
{
    var item_object_hold = global.item_object_hold;
    var draw_x_disjoint = item_object_hold.draw_x_disjoint;
    var draw_y_disjoint = item_object_hold.draw_y_disjoint;
    var item_slot = item_object_hold.item_slot;
    
    if (global.game_mode == "customs")
    {
        if (item_slot == "Hot Dog...?")
            battle_menu_option_string = "* Hot Dog";
    }
    else if (global.game_mode == "yellow")
    {
        if (item_slot == "Missing Poster")
            battle_menu_option_string = "* Poster";
        else if (item_slot == "Snowdin Map")
            battle_menu_option_string = "* Snowdin Map";
        else if (item_slot == "Matches")
            battle_menu_option_string = "* Matches";
        else if (item_slot == "Lukewarm Coffee")
            battle_menu_option_string = "* Lukewarm Cff";
        else if (item_slot == "Soggy Mitten")
            battle_menu_option_string = "* Soggy Mitten";
        else if (item_slot == "Lemonade")
            battle_menu_option_string = "* Lemonade";
        else if (item_slot == "Candy Corn")
            battle_menu_option_string = "* Candy Corn";
        else if (item_slot == "Corn Dog")
            battle_menu_option_string = "* Corn Dog";
        else if (item_slot == "Sponge Cake")
            battle_menu_option_string = "* Sponge Cake";
        else if (item_slot == "Homemade Cookie")
            battle_menu_option_string = "* Cookie";
        else if (item_slot == "Hot Pop")
            battle_menu_option_string = "* Hot Pop";
        else if (item_slot == "Lukewarm Pop")
            battle_menu_option_string = "* Lukewarm Pop";
        else if (item_slot == "Cold Pop")
            battle_menu_option_string = "* Cold Pop";
        else if (item_slot == "Coffee")
            battle_menu_option_string = "* Coffee";
        else if (item_slot == "Pancake")
            battle_menu_option_string = "* Pancake";
        else if (item_slot == "G.B. Bear")
            battle_menu_option_string = "* G.B. Bear";
        else if (item_slot == "Packing Peanuts")
            battle_menu_option_string = "* Peanuts";
        else if (item_slot == "Moss Salad")
            battle_menu_option_string = "* Moss Salad";
        else if (item_slot == "Dihydrogen Monoxide")
            battle_menu_option_string = "* H2O";
        else if (item_slot == "Gravity Granola")
            battle_menu_option_string = "* G Granola";
        else if (item_slot == "Floral Cupcake")
            battle_menu_option_string = "* Fl Cupcake";
        else if (item_slot == "Popato Chisps")
            battle_menu_option_string = "* Chisps";
        else if (item_slot == "Monster Candy")
            battle_menu_option_string = "* MnstrCndy";
        else if (item_slot == "Monster Candy+")
            battle_menu_option_string = "* MnstrCndy+";
        else if (item_slot == "Feisty Slider")
            battle_menu_option_string = "* F Slider";
        else if (item_slot == "G. Pear")
            battle_menu_option_string = "* Pear";
        else if (item_slot == "G. Coffee")
            battle_menu_option_string = "* G. Coffee";
        else if (item_slot == "Toy Gun")
            battle_menu_option_string = "* Toy Gun";
        else if (item_slot == "Wild Revolver")
            battle_menu_option_string = "* W. Revolver";
        else if (item_slot == "Worn Hat")
            battle_menu_option_string = "* Worn Hat";
        else if (item_slot == "Rubber Ammo")
            battle_menu_option_string = "* Rubber";
        else if (item_slot == "Pebble Ammo")
            battle_menu_option_string = "* Pebbles";
        else if (item_slot == "Ice Pellets")
            battle_menu_option_string = "* Ice Ammo";
        else if (item_slot == "Cff Bean Ammo")
            battle_menu_option_string = "* Coffee Ammo";
        else if (item_slot == "Glass Ammo")
            battle_menu_option_string = "* Glass Ammo";
        else if (item_slot == "Flint")
            battle_menu_option_string = "* Flint Ammo";
        else if (item_slot == "Silver Ammo")
            battle_menu_option_string = "* Silver Ammo";
        else if (item_slot == "Super Ammo")
            battle_menu_option_string = "* Super Ammo";
        else if (item_slot == "Friendliness Pellets")
            battle_menu_option_string = "* F Pellets";
        else if (item_slot == "Patch")
            battle_menu_option_string = "* Patch";
        else if (item_slot == "Feather")
            battle_menu_option_string = "* Feather";
        else if (item_slot == "Honeydew Pin")
            battle_menu_option_string = "* Honeydew Pin";
        else if (item_slot == "Band Merch Pin")
            battle_menu_option_string = "* Band Pin";
        else if (item_slot == "Fancy Holster")
            battle_menu_option_string = "* F Holster";
        else if (item_slot == "Safety Goggles")
            battle_menu_option_string = "* Goggles";
        else if (item_slot == "Delta Rune Patch")
            battle_menu_option_string = "* DR Patch";
        else if (item_slot == "Golden Scarf")
            battle_menu_option_string = "* G Scarf";
        else
            battle_menu_option_string = "* " + item_slot;
    }
    
    battle_menu_option_x = obj_dialogue_box_battle.x + draw_x_disjoint;
    battle_menu_option_y = obj_dialogue_box_battle.y + draw_y_disjoint;
    script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
}
