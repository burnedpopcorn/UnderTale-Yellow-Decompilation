var buy_shop_screen_number = global.buy_shop_screen_number;

if (buy_shop_screen_number < 5)
    shop_item = global.shop_item[buy_shop_screen_number];

draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (buy_shop_screen_number < 5)
{
    var game_mode = global.game_mode;
    
    if (game_mode == "yellow")
    {
        if (shop_item == "Hndw Coffee")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 14HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 14HP#It'll warm you#right up!"));
        }
        else if (shop_item == "Hndw Pancake")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 16HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 16HP#Comes with#honey-syrup!"));
        }
        else if (shop_item == "G.B. Bear")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 20HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 20HP#It's shaped#like my face!"));
        }
        else if (shop_item == "Honeydew Pin")
        {
            var item_value = 6;
            var equip_value = script_execute(scr_determine_armor_modifier_defense);
            var draw_value = item_value - equip_value;
            
            if (draw_value >= 0)
                var draw_string = "+" + string(draw_value);
            else
                var draw_string = string(draw_value);
            
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 4DF"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 4DF#That would go#g-great on#your hat!"));
        }
        else if (shop_item == "Icewater")
        {
            draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 15HP"));
        }
        else if (shop_item == "Oasis Latte")
        {
            draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 25HP"));
        }
        else if (shop_item == "Cnm. Cookie")
        {
            draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 35HP"));
        }
        else if (shop_item == "Gunpowder")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals ???"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals ???#It may be#edible."));
        }
        else if (shop_item == "Silver Ammo")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Ammo: 3AT"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Ammo: 3AT#Finely#crafted!"));
        }
        else if (shop_item == "Fancy Holster")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 8DF"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 8DF#Made from#leather!"));
        }
        else if (shop_item == "Wild Revolver")
        {
            draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("You're too#young."));
        }
        else if (shop_item == "Icewater")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 15HP#"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 15HP#Straight from#the tap!"));
        }
        else if (shop_item == "Adult Soda")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals ???#"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals ???#No way."));
        }
        else if (shop_item == "Root Beer")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 18HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 18HP#It's family#friendly!"));
        }
        else if (shop_item == "Feisty Slider")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP#A lil'#baby burger!"));
        }
        else if (shop_item == "Gravity Granola")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP#_"));
            else if (global.sworks_flag[26] < 2)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP#This will#kill you."));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP#Crunchy#sustenance!"));
        }
        else if (shop_item == "Dihydrogen Monoxide")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 20HP#_"));
            else if (global.sworks_flag[26] < 2)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 20HP#Unfiltered.#Dirt. Bad."));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 20HP#Also called#\"water.\""));
        }
        else if (shop_item == "Popato Chisps")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 13HP#_"));
            else if (global.sworks_flag[26] < 2)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 13HP#Tastes like#plastic."));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 13HP#Perfectly#salted!"));
        }
        else if (shop_item == "Safety Goggles")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 9DF#Stop..."));
            else if (global.sworks_flag[26] < 2)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 9DF#Will blind#you."));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 9DF#Important!!!"));
        }
        else if (shop_item == "Monster Candy+")
        {
            if (global.route == 3)
            {
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 15HP"));
            }
            else
            {
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 15HP"));
                draw_set_color(c_fuchsia);
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("          #< Highly#addictive! >"));
                draw_set_color(c_white);
            }
        }
        else if (shop_item == "C-B Strudel")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 30HP#A taste fit#for a king!"));
        }
        else if (shop_item == "Floral Cupcake")
        {
            draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Heals 50HP"));
            
            if (global.route != 3)
            {
                draw_set_color(c_fuchsia);
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("          #< Made with#extra flour ;) >"));
                draw_set_color(c_white);
            }
        }
        else if (shop_item == "Delta Rune Patch")
        {
            if (global.route == 3)
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 10DF"));
            else
                draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline("Acce: 10DF#Represent the#Underground!"));
        }
    }
}
else
{
    draw_text(obj_item_description_screen_shop.x + item_draw_disjoint_x, obj_item_description_screen_shop.y + item_draw_disjoint_y, string_hash_to_newline(""));
}
