function scr_item_stats_weapon(argument0)
{
    switch (argument0)
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
