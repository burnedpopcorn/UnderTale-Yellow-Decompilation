function scr_item_stats_heal(argument0)
{
    switch (argument0)
    {
        case "Lemonade":
            return 7;
        
        case "Candy Corn":
            return 9;
        
        case "Corn Dog":
            return 12;
        
        case "Sponge Cake":
            return 14;
        
        case "Homemade Cookie":
            return 20;
        
        case "Hot Pop":
            return 14;
        
        case "Lukewarm Pop":
            return 8;
        
        case "Cold Pop":
            return 12;
        
        case "Hndw Coffee":
            return 14;
        
        case "Hndw Pancake":
            return 16;
        
        case "G.B. Bear":
            return 20;
        
        case "Packing Peanuts":
            return 10;
        
        case "Trail Mix":
            return 13;
        
        case "Ice Tea":
            return 20;
        
        case "Green Tea":
            return 21;
        
        case "Sea Tea":
            return 10;
        
        case "Fruitcake":
            return 25;
        
        case "Spider Donut":
            return 12;
        
        case "Icewater":
            return 15;
        
        case "Root Beer":
            return 18;
        
        case "Feisty Slider":
            return 30;
        
        case "Gunpowder":
            return global.max_hp_self - global.current_hp_self;
        
        case "Adult Soda":
            return 20;
        
        case "Moss Salad":
            return 17;
        
        case "Grassy Fries":
            return 14;
        
        case "Flower Stew":
            return 20;
        
        case "Gravity Granola":
            return 30;
        
        case "Dihydrogen Monoxide":
            return 20;
        
        case "Popato Chisps":
            return 13;
        
        case "Beef Jerky":
            return 16;
        
        case "Cake":
            return 30;
        
        case "Monster Candy":
            return 10;
        
        case "Monster Candy+":
            return 15;
        
        case "Corn Chowder":
            return 15;
        
        case "Hot Dog":
            return 20;
        
        case "C-B Strudel":
            return 30;
        
        case "Floral Cupcake":
            return 50;
        
        case "Cnm. Cookie":
            return 35;
        
        case "Oasis Latte":
            return 25;
        
        default:
            return 0;
    }
}
