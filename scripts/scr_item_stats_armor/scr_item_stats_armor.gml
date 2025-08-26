function scr_item_stats_armor(arg0)
{
    switch (arg0)
    {
        case "Worn Hat":
            if (global.option_easymode == true)
                return 3;
            else
                return 0;
        
        case "Nice Hat":
            if (global.option_easymode == true)
                return 5;
            else
                return 0;
        
        default:
            return 0;
    }
}
