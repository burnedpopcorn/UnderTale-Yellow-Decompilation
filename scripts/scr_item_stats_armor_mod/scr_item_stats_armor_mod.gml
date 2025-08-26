function scr_item_stats_armor_mod(arg0)
{
    switch (arg0)
    {
        case "Patch":
            return 0;
        
        case "Feather":
            return 2;
        
        case "Honeydew Pin":
            return 4;
        
        case "Band Merch Pin":
            return 5;
        
        case "Safety Jacket":
            return 6;
        
        case "Steel Buckle":
            return 7;
        
        case "Fancy Holster":
            return 8;
        
        case "Safety Goggles":
            return 9;
        
        case "Silver Scarf":
            return 6;
        
        case "G. Bandana":
            return 12;
        
        case "Delta Rune Patch":
            return 10;
        
        case "Golden Scarf":
            return 25;
        
        default:
            return 0;
    }
}
