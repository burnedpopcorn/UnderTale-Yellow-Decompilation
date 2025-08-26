function scr_item_stats_weapon(arg0)
{
    switch (arg0)
    {
        case "Toy Knife":
            return 3;
        
        case "Toy Gun":
        case "Wild Revolver":
            return 0;
        
        default:
            return 0;
    }
}
