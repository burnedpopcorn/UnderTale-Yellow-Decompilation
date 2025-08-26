if (global.draw_scanlines == true)
    instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_scanlines);

global.main_shop_screen_number = 1;
global.buy_shop_screen_number = 1;
global.sell_shop_screen_number = 1;
global.player_response = 0;
global.able_to_buy = 0;
global.sell_count = 0;
global.text_linebreak_limit_shop = 999;
global.text_separation_shop = 18;
var shop_name = global.shop_name;
var shop_geno = false;

if (shop_name == "Honeydew Resort Normal")
{
    global.shop_item[1] = "Hndw Coffee";
    global.shop_item[2] = "Hndw Pancake";
    global.shop_item[3] = "G.B. Bear";
    global.shop_item[4] = "Honeydew Pin";
    global.shop_stock[1] = 0;
    global.shop_stock[2] = 1;
    global.shop_stock[3] = 2;
    global.shop_stock[4] = 3;
    global.shop_gold_requirement[1] = 16;
    global.shop_gold_requirement[2] = 18;
    global.shop_gold_requirement[3] = 22;
    global.shop_gold_requirement[4] = 30;
    
    if (global.snowdin_flag[13] == 0)
    {
        global.shop_talk[1] = "This resort";
        global.shop_talk[2] = "How's business?";
        global.shop_talk[3] = "The band";
        global.shop_talk[4] = "Dalv";
    }
    else
    {
        global.shop_talk[1] = "Royal Guard";
        global.shop_talk[2] = "Mo";
        global.shop_talk[3] = "Weather";
        global.shop_talk[4] = "Joke";
    }
    
    bg_index = 1;
    instance_create(160, 119, obj_honeydew_bear_shop);
    shop_audio = 126;
}

if (shop_name == "Cafe Dune Geno")
{
    global.shop_item[1] = "Icewater";
    global.shop_item[2] = "Oasis Latte";
    global.shop_item[3] = "Cnm. Cookie";
    global.shop_item[4] = "Floral Cupcake";
    global.shop_stock[1] = 20;
    global.shop_stock[2] = 21;
    global.shop_stock[3] = 22;
    global.shop_stock[4] = 23;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 6;
    shop_audio = 126;
    shop_geno = true;
}

if (shop_name == "Honeydew Resort Geno")
{
    global.shop_item[1] = "Hndw Coffee";
    global.shop_item[2] = "Hndw Pancake";
    global.shop_item[3] = "G.B. Bear";
    global.shop_item[4] = "Honeydew Pin";
    global.shop_stock[1] = 0;
    global.shop_stock[2] = 1;
    global.shop_stock[3] = 2;
    global.shop_stock[4] = 3;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 1;
    shop_audio = 126;
    shop_geno = true;
}

if (shop_name == "Wild East Gunshop")
{
    global.shop_item[1] = "Gunpowder";
    global.shop_item[2] = "Silver Ammo";
    global.shop_item[3] = "Fancy Holster";
    global.shop_item[4] = "Wild Revolver";
    global.shop_stock[1] = 4;
    global.shop_stock[2] = 5;
    global.shop_stock[3] = 6;
    global.shop_stock[4] = 7;
    global.shop_gold_requirement[1] = 40;
    global.shop_gold_requirement[2] = 80;
    global.shop_gold_requirement[3] = 50;
    global.shop_gold_requirement[4] = 200;
    global.shop_talk[1] = "The Feisty Five";
    global.shop_talk[2] = "Your Wares";
    global.shop_talk[3] = "Visitors";
    global.shop_talk[4] = "History";
    
    if (global.dunes_flag[24] != 0)
    {
        global.shop_talk[1] = "Your Age";
        global.shop_talk[2] = "The Four";
        global.shop_talk[3] = "Humans";
        global.shop_talk[4] = "Smithing";
    }
    
    bg_index = 2;
    instance_create(0, 0, obj_wild_east_blackjack_shop);
    shop_audio = 187;
}

if (shop_name == "Wild East Gunshop Geno")
{
    global.shop_item[1] = "Gunpowder";
    global.shop_item[2] = "Silver Ammo";
    global.shop_item[3] = "Fancy Holster";
    global.shop_item[4] = "Wild Revolver";
    global.shop_stock[1] = 4;
    global.shop_stock[2] = 5;
    global.shop_stock[3] = 6;
    global.shop_stock[4] = 7;
    global.item_stock[7] = 0;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 2;
    shop_audio = 187;
    shop_geno = true;
}

if (shop_name == "Wild East Saloon")
{
    global.shop_item[1] = "Icewater";
    global.shop_item[2] = "Adult Soda";
    global.shop_item[3] = "Root Beer";
    global.shop_item[4] = "Feisty Slider";
    global.shop_stock[1] = 8;
    global.shop_stock[2] = 9;
    global.shop_stock[3] = 10;
    global.shop_stock[4] = 11;
    global.shop_gold_requirement[1] = 18;
    global.shop_gold_requirement[2] = 20;
    global.shop_gold_requirement[3] = 22;
    global.shop_gold_requirement[4] = 30;
    global.shop_talk[1] = "This Town";
    global.shop_talk[2] = "Your snakes";
    global.shop_talk[3] = "Can I leave?";
    global.shop_talk[4] = "North Star";
    
    if (global.dunes_flag[24] != 0)
    {
        global.shop_talk[1] = "Feisty Five";
        global.shop_talk[2] = "Kanako";
        global.shop_talk[3] = "Government";
        global.shop_talk[4] = "Chujin";
    }
    
    bg_index = 3;
    instance_create(156, 120, obj_wild_east_dina_body_shop);
    instance_create(128, 35, obj_wild_east_dina_shop);
    shop_audio = 187;
}

if (shop_name == "Wild East Saloon Geno")
{
    global.shop_item[1] = "Icewater";
    global.shop_item[2] = "Adult Soda";
    global.shop_item[3] = "Root Beer";
    global.shop_item[4] = "Feisty Slider";
    global.shop_stock[1] = 8;
    global.shop_stock[2] = 9;
    global.shop_stock[3] = 10;
    global.shop_stock[4] = 11;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 3;
    shop_audio = 187;
    shop_geno = true;
}

if (shop_name == "Steamworks Vendy")
{
    global.shop_item[1] = "Gravity Granola";
    global.shop_item[2] = "Dihydrogen Monoxide";
    global.shop_item[3] = "Popato Chisps";
    global.shop_item[4] = "Safety Goggles";
    global.shop_stock[1] = 12;
    global.shop_stock[2] = 13;
    global.shop_stock[3] = 14;
    global.shop_stock[4] = 15;
    global.shop_gold_requirement[1] = 36;
    global.shop_gold_requirement[2] = 32;
    global.shop_gold_requirement[3] = 24;
    global.shop_gold_requirement[4] = 70;
    
    if (global.sworks_flag[26] < 2)
    {
        global.shop_talk[1] = "Your attitude";
        global.shop_talk[2] = "The Steamworks";
        global.shop_talk[3] = "Axis";
        global.shop_talk[4] = "Snacks";
    }
    else
    {
        global.shop_talk[1] = "Creator";
        global.shop_talk[2] = "The Steamworks";
        global.shop_talk[3] = "Axis";
        global.shop_talk[4] = "Snacks";
    }
    
    bg_index = 4;
    instance_create(92, 13, obj_steamworks_vendy_body_shop);
    instance_create(92, 13, obj_steamworks_vendy_shop);
    shop_audio = 187;
}

if (shop_name == "Steamworks Vendy Geno")
{
    global.shop_item[1] = "Gravity Granola";
    global.shop_item[2] = "Dihydrogen Monoxide";
    global.shop_item[3] = "Popato Chisps";
    global.shop_item[4] = "Safety Goggles";
    global.shop_stock[1] = 12;
    global.shop_stock[2] = 13;
    global.shop_stock[3] = 14;
    global.shop_stock[4] = 15;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 4;
    instance_create(92, 13, obj_steamworks_vendy_body_shop);
    instance_create(92, 13, obj_steamworks_vendy_shop);
    shop_audio = 187;
    shop_geno = true;
}

if (shop_name == "Hotel Shop")
{
    global.shop_item[1] = "Monster Candy+";
    global.shop_item[2] = "C-B Strudel";
    global.shop_item[3] = "Floral Cupcake";
    global.shop_item[4] = "Delta Rune Patch";
    global.shop_stock[1] = 16;
    global.shop_stock[2] = 17;
    global.shop_stock[3] = 18;
    global.shop_stock[4] = 19;
    global.shop_gold_requirement[1] = 26;
    global.shop_gold_requirement[2] = 34;
    global.shop_gold_requirement[3] = 50;
    global.shop_gold_requirement[4] = 100;
    global.shop_talk[1] = "Asgore";
    global.shop_talk[2] = "Hotland";
    global.shop_talk[3] = "The Sock";
    global.shop_talk[4] = "Toriel?";
    
    if (global.hotland_flag[4] == 1)
        global.shop_talk[2] = "Hotland (NEW)";
    
    if (global.hotland_flag[5] == 1)
        global.shop_talk[4] = "Toriel? (NEW)";
    
    bg_index = 5;
    instance_create(0, 0, obj_hotel_shop_body);
    instance_create(0, 0, obj_hotel_shop_puppet);
    instance_create(0, 0, obj_hotel_shop_head);
    instance_create(0, 0, obj_hotel_shop_props);
    shop_audio = 187;
}

if (shop_name == "Hotel Shop Geno")
{
    global.shop_item[1] = "Monster Candy+";
    global.shop_item[2] = "C-B Strudel";
    global.shop_item[3] = "Floral Cupcake";
    global.shop_item[4] = "Delta Rune Patch";
    global.shop_stock[1] = 16;
    global.shop_stock[2] = 17;
    global.shop_stock[3] = 18;
    global.shop_stock[4] = 19;
    global.shop_gold_requirement[1] = 0;
    global.shop_gold_requirement[2] = 0;
    global.shop_gold_requirement[3] = 0;
    global.shop_gold_requirement[4] = 0;
    bg_index = 7;
    shop_audio = 187;
    shop_geno = true;
}

if (global.sound_carry_overworld == false)
{
    scr_audio_stop_sound(0);
    audio_sound_gain(shop_audio, 1, 0);
    audio_play_sound(shop_audio, 20, true);
}

instance_create(0, 0, obj_shop_fade_in_screen);

if (shop_name == "Steamworks Vendy" || shop_name == "Steamworks Vendy Geno")
{
    if (global.sworks_flag[16] == 0)
    {
        instance_create(0, 0, obj_dialogue_intro_shop);
        instance_create(0, 120, obj_talk_screen_shop);
        exit;
    }
}

instance_create(0, 120, obj_main_screen_shop);
instance_create(obj_main_screen_shop.x + 210, obj_main_screen_shop.y, obj_item_description_screen_shop);

if (shop_geno == false)
{
    instance_create(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, obj_text_main_screen_shop);
    instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop);
    instance_create(obj_main_screen_shop.x + 20, obj_main_screen_shop.y + 10, obj_dialogue_main_screen_shop);
}
else
{
    instance_create(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, obj_text_main_screen_shop_geno);
    instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop_geno);
    instance_create(obj_main_screen_shop.x + 20, obj_main_screen_shop.y + 10, obj_dialogue_main_screen_shop_geno);
}
