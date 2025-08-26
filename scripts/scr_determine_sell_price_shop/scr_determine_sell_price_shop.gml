function scr_determine_sell_price_shop(arg0)
{
    switch (arg0)
    {
        case "Lemonade":
        case "Candy Corn":
        case "Corn Dog":
        case "Sponge Cake":
        case "Hndw Coffee":
        case "Hndw Pancake":
        case "G.B. Bear":
        case "Hot Pop":
        case "Lukewarm Pop":
        case "Cold Pop":
        case "Packing Peanuts":
        case "Moss Salad":
        case "Grassy Fries":
        case "Flower Stew":
        case "Gravity Granola":
        case "Dihydrogen Monoxide":
        case "Popato Chisps":
        case "Beef Jerky":
        case "Cake":
        case "Monster Candy":
        case "Monster Candy+":
        case "C-B Strudel":
        case "Floral Cupcake":
        case "Hot Dog":
        case "Corn Chowder":
            return 15;
            break;
        
        case "G. Coffee":
        case "G. Pear":
        case "G. Cactus":
            return 50;
            break;
        
        case "Adult Soda":
            return 25;
            break;
        
        case "Patch":
        case "Feather":
        case "Pebble Ammo":
        case "Silver Ammo":
        case "Rubber Ammo":
        case "Cff Bean Ammo":
        case "Honeydew Pin":
        case "Band Merch Pin":
        case "Safety Goggles":
        case "Nails":
        case "Friendliness Pellets":
            return 15;
            break;
        
        case "Golden Scarf":
        case "Super Ammo":
        case "Delta Rune Patch":
            return 100;
            break;
        
        case "Necklace":
            return 100;
            break;
        
        case "Icewater":
        case "Feisty Slider":
            return 15;
            break;
        
        case "Root Beer":
            return 25;
            break;
        
        case "H. Acid":
            return 0;
            break;
        
        default:
            return 15;
            break;
    }
}
