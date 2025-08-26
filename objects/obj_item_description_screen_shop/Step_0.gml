var buy_shop_screen_number = global.buy_shop_screen_number;

if (instance_exists(obj_text_item_buy_shop))
{
    if (buy_shop_screen_number < 5 && y > y_finish)
    {
        if (y > (y_finish + (sprite_width / 3)))
            y -= 12;
        else if (y > (y_finish + (sprite_width / 6)))
            y -= 7;
        else
            y -= 5;
        
        if (y < y_finish)
            y = y_finish;
    }
    else if (buy_shop_screen_number == 5 && y < y_start)
    {
        y += 20;
        
        if (y > y_start)
            y = y_start;
    }
}
else
{
    y = y_start;
}
