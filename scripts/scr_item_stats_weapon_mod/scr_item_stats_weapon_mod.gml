function scr_item_stats_weapon_mod(arg0)
{
    switch (arg0)
    {
        case "Rubber Ammo":
            return 0;
        
        case "Pebble Ammo":
            return 3;
        
        case "Ice Pellets":
            return 6;
        
        case "Cff Bean Ammo":
            return 4;
        
        case "Glass Ammo":
            return 5;
        
        case "Flint":
            return 9;
        
        case "Silver Ammo":
            return 3;
        
        case "Nails":
            return 10;
        
        case "Friendliness Pellets":
            return 11;
        
        default:
            return 0;
    }
}
