function scr_item_info(arg0)
{
    var item = arg0;
    var info;
    info[0] = "* Info message";
    
    switch (item)
    {
        case "Lemonade":
            info[0] = "* \"Lemonade\" - Heals 7 HP#* (Doesn't smell too appetizing.)";
            break;
        
        case "Pebble Ammo":
            info[0] = "* \"Pebbles\" - Weapon AT 3#* (Like rocks, but smaller.#* Good makeshift ammo.)";
            break;
        
        case "Silver Ammo":
            info[0] = "* \"Silver Ammo\" - Weapon AT 3#* (A pack of reflective pellets.)";
            info[1] = "* (They'd fit nicely in#  a six-shooter.)";
            info[2] = "* (A perfect shot deals#  extra damage.)";
            break;
        
        case "Glass Ammo":
            info[0] = "* \"Glass Ammo\" - Weapon AT 5#* (Literal shards of glass.#  Yep.)";
            info[1] = "* (Restores 2 HP after every#  attack.)";
            break;
        
        case "Candy Corn":
            info[0] = "* \"Candy Corn\" - Restores 9 HP#* (Your teeth hurt just looking#  at it.)";
            break;
        
        case "Corn Dog":
            info[0] = "* \"Corn Dog\" - Restores 12 HP#* (A genuine Corn Dog with#  soft, fluffy ears.)";
            break;
        
        case "Patch":
            info[0] = "* \"Patch\" Armor DF 0#* (It's not strong but it's#trustworthy.)";
            break;
        
        case "Feather":
            info[0] = "* \"Feather\" - Armor DF 2#* (An old, forgotten feather.#* It needs a good preening.)";
            break;
        
        case "G. Bandana":
            info[0] = "* \"G. Bandana\" - Armor DF 12#* (The most stunning piece of#  fabric you've ever seen.)";
            break;
        
        case "Missing Poster":
            info[0] = "* (The grim reminder of#  your mission. Justice#  is needed.)";
            break;
        
        case "G. Pear":
            info[0] = "* (Makes you invulnerable#  for a pear of hits.)";
            break;
        
        case "Rubber Ammo":
            info[0] = "* \"Rubber Ammo\" - Weapon AT 0#* (Small, safe, non-toxic#  rubber pellets.)";
            break;
        
        case "Sponge Cake":
            info[0] = "* \"Sponge Cake\" - Heals 14 HP";
            info[1] = "* (A delicious sponge that doesn't#  scratch AND has 2x the#  absorption!)";
            break;
        
        case "Hndw Coffee":
            info[0] = "*\"Hndw Coffee\" - Heals 14 HP#* (It would take true bravery to#  drink something this hot!)";
            break;
        
        case "Hndw Pancake":
            info[0] = "* \"Hndw Pancake\" - Heals 16 HP #* (An off-the-griddle pancake with#  honey-syrup.)";
            break;
        
        case "G.B. Bear":
            info[0] = "* \"G.B. Bear\" - Heals 20 HP#* (A cookie made to look like#  someone's face.)";
            info[1] = "* (What a creative and original#  idea!)";
            break;
        
        case "Hot Pop":
            info[0] = "* \"Hot Pop\" - Heals 14 HP#* (Piping hot chocolate, frozen,#  then reheated.)";
            break;
        
        case "Lukewarm Pop":
            info[0] = "* \"Lukewarm Pop\" - Heals 8 HP#* (Piping hot chocolate cooled to#  lukewarm status.)";
            break;
        
        case "Cold Pop":
            info[0] = "* \"Cold Pop\" - Heals 12 HP#* (Piping hot chocolate, cooled#  cold.)";
            break;
        
        case "G. Coffee":
            info[0] = "* \"G. Coffee\" - (Halves the#  weight of your soul, giving you#  a speed boost for three turns.)";
            info[1] = "* (Half delicious beverage, half#  transition metal.)";
            info[2] = "* (Just smells like#  coffee, though.)";
            break;
        
        case "G. Cactus":
            info[0] = "* \"G. Cactus\" - (Heals 15 HP#  for 3 turns. The first#  bite hurts for 5 HP.)";
            info[1] = "* (The forbidden snack.)";
            break;
        
        case "Adult Soda":
            info[0] = "* \"Adult Soda\" - Heals ??? HP#* (A transparent liquid#  with no smell.)";
            break;
        
        case "Packing Peanuts":
            info[0] = "* \"Packing Peanuts\" - Heals 10 HP";
            info[1] = "* (Ideal for preventing damage or#  destruction of fragile stomach#  contents.)";
            break;
        
        case "Trail Mix":
            info[0] = "* \"Trail Mix\" - Heals 13 HP\"";
            info[1] = "* (Everything but the raisins#  has been picked out.)";
            break;
        
        case "Ice Tea":
            info[0] = "* \"Ice Tea\" - Heals 20 HP\"#* (A glass of warm sweet tea.)";
            info[1] = "* (A label with a sketch of Mo#  grinning is glued to the side.)";
            break;
        
        case "Green Tea":
            info[0] = " \"Green Tea\" - Heals 21 HP\"#* (Ice tea but dyed green. +1 HP#  for style.)";
            break;
        
        case "Sea Tea":
            info[0] = " \"Sea Tea\" - Heals 10 HP\"#* (Glowing tea that'll jolt#  your system.)";
            info[1] = "* (A label reading \"The real#  deal!\" is stuck on the glass.)";
            break;
        
        case "Fruitcake":
            info[0] = " \"Fruitcake\" - Heals 25 HP\"#* (Somewhat dried fruitcake with#  a few gemstones inside.)";
            break;
        
        case "Spider Donut":
            info[0] = " \"Spider Donut\" - Heals 12 HP\"#* (A donut made with Spider#  Cider in the batter.)";
            break;
        
        case "Icewater":
            info[0] = " \"Icewater\" - Heals 15 HP#* (The prequel to ice tea.)";
            break;
        
        case "Oasis Latte":
            info[0] = " \"Oasis Latte\" - Heals 25 HP#* (Coffee but fancier.)";
            break;
        
        case "Cnm. Cookie":
            info[0] = " \"Cnm. Cookie\" - Heals 35 HP#* (One of the baked good#  greats..)";
            break;
        
        case "Root Beer":
            info[0] = " \"Root Beer\" - Heals 18 HP\"#* (It's family friendly!)";
            break;
        
        case "Gunpowder":
            info[0] = " \"Gunpowder\" - Heals ??? HP\"#* (The forbidden spice.)";
            break;
        
        case "Moss Salad":
            info[0] = " \"Moss Salad\" - Heals 17 HP\"#* (Looks like it could be from#  another world...) ";
            break;
        
        case "Grassy Fries":
            info[0] = " \"Grassy Fries\" - Heals 14 HP\"#* (A pile of thin strings with a#  layer of fuzz overtop.)";
            break;
        
        case "Flower Stew":
            info[0] = " \"Flower Stew\" - Heals 20 HP\"#* (A cup of aromatic broth with#  a floral garnish.)";
            break;
        
        case "Gravity Granola":
            info[0] = " \"Gravity Granola\" - Heals 30 HP\"#* (\"The taste is out of this#  world!\" ...Uh huh.) ";
            break;
        
        case "Dihydrogen Monoxide":
            info[0] = " \"H2O\" - Heals 20 HP\"#* (Chemically inclined liquid.)";
            break;
        
        case "Popato Chisps":
            info[0] = " \"Popato Chisps\" - Heals 13HP\"#* (Regular old popato chisps.)";
            break;
        
        case "Beef Jerky":
            info[0] = " \"Beef Jerky\" - Heals 16 HP\"#* (A convenience store#  delicacy.)";
            break;
        
        case "Cake":
            info[0] = " \"Cake\" - Heals 30 HP\"#* (A lemon cake with cherries on#  top.)";
            break;
        
        case "Floral Cupcake":
            info[0] = " \"Floral Cupcake\" - Heals 50 HP\"";
            info[1] = "* (A beautiful pastry, crowned#  with a golden flower made of#  icing.)";
            break;
        
        case "Hot Dog":
            info[0] = " \"Hot Dog\" - Heals 20 HP\"#* (A food representative of your#  go-to insult.)";
            break;
        
        case "Monster Candy":
            info[0] = " \"Monster Candy\" - Heals 10 HP\"";
            info[1] = "* (The sweet smell of#  butterscotch wafts from the#  wrapper.)";
            break;
        
        case "Monster Candy+":
            info[0] = " \"Monster Candy+\" - Heals 15 HP\"#* (A tasty treat with#  twice-enriched Sugar Flavor.)";
            break;
        
        case "C-B Strudel":
            info[0] = " \"C-B Strudel\" - Heals 30 HP\"#* (Made from fresh cinnamon and#  butterscotch.)";
            break;
        
        case "Corn Chowder":
            info[0] = " \"Corn Chowder\" - Heals 15 HP\"#* (Weeks-old leftovers from#  Ceroba's fridge.)";
            break;
        
        case "Feisty Slider":
            info[0] = " \"Feisty Slider\" - Heals 30 HP\"";
            info[1] = "* (A small burger with big#  flavor! Just 30G at the#  Saloon!)";
            info[2] = "* (...Says an ad printed on its#  wrapper.)";
            break;
        
        case "Honeydew Pin":
            info[0] = "* \"Honeydew Pin\" - Armor DF 4#* (A pin advertising the Honeydew#  Resort in Snowdin.)";
            break;
        
        case "Band Merch Pin":
            info[0] = "* \"Band Merch Pin\" - Armor DF 5#* (A pin commemorating a concert#  you didn't go to..)";
            break;
        
        case "Steel Buckle":
            info[0] = "* \"Steel Buckle\" - Armor DF 7#* (A shiny belt buckle made of#  fine materials.)";
            break;
        
        case "Safety Jacket":
            info[0] = "* \"Safety Jacket\" - Armor DF 6";
            info[1] = "* (A small jacket that protects#  its wearer from the world's#  dangers.)";
            break;
        
        case "Safety Goggles":
            info[0] = "* \"Safety Goggles\" - Armor DF 9#* (Paramount to all Steamworks#  employees.)";
            break;
        
        case "Delta Rune Patch":
            info[0] = "* \"Delta Rune Patch\" - Armor DF 10#* (The Kingdom of Monsters'#  official insignia.)";
            break;
        
        case "Silver Scarf":
            info[0] = "* \"Silver Scarf\" - Armor DF 6#* (A glistening scarf, woven#  with love and care.)";
            info[1] = "* (Restores 2 HP after every#  turn.)";
            break;
        
        case "Lukewarm Coffee":
            info[0] = "* (A once sizzling Honeydew#  Coffee.)";
            info[1] = "* (It's cooled down a lot.)";
            info[2] = "* (It was probably left sitting#  in the snow a while.)";
            break;
        
        case "Soggy Mitten":
            info[0] = "* (An old, soggy mitten. It's too#  wet to keep anything warm.)";
            break;
        
        case "Matches":
            info[0] = "* (A bundle of damp matches.)";
            info[1] = "* (Looks like there are just#  enough dry ones to start a nice#  fire.)";
            break;
        
        case "Snowdin Map":
            info[0] = "* (It's a hand-drawn map.)";
            info[1] = "* (It seems more colorful than the#  real Snowdin.)";
            break;
        
        case "Pickaxe":
            info[0] = "* (A sturdy pickaxe.)";
            break;
        
        case "Ice Pellets":
            info[0] = "* \"Ice Ammo\" - Weapon AT 6#* (Very conveniently shaped ice#  cubes.)";
            info[1] = "* (They don't seem to be melting#  either.)";
            info[2] = "* (How thoughtful of them!)";
            break;
        
        case "Cff Bean Ammo":
            info[0] = "* \"Coffee Ammo\" - Weapon AT 4";
            info[1] = "* (There's no way you could eat#  them, but they might still be#  of use.)";
            break;
        
        case "Super Ammo":
            info[0] = "* \"Super Ammo\" - Weapon AT 15#* (Regular toy gun ammo sold#  at your favorite convenience store.)";
            info[1] = "* (Boasts a \"Premium\" sticker on#  the top of the packaging.)";
            break;
        
        case "Flint":
            info[0] = "* \"Flint Ammo\" - Weapon AT 9#* (A dusty, black rock.#  Might be useful for combat.)";
            break;
        
        case "Nails":
            info[0] = "* \"Nails\" - Weapon AT 10#* (Small, pointed pieces of#  steel.)";
            info[1] = "* (Could be quite effective if#  fired at a high velocity.)";
            break;
        
        case "Friendliness Pellets":
            info[0] = "* \"F. Pellets\" - Weapon AT 11#* (A token of the bond between#  you and Your Best Friend.)";
            break;
        
        case "Golden Scarf":
            info[0] = "* \"Golden Scarf\" - Armor DF 25#* (It's emitting a violently#  golden shine.)";
            break;
        
        case "Fancy Holster":
            info[0] = "* \"Fancy Holster\" - Armor DF 8#* (A leather weapon-holder,#  perfect for duels at noon.)";
            break;
        
        case "Videotape":
            info[0] = "* (...)";
            break;
        
        case "H. Acid":
            info[0] = "* (An extremely dangerous#  compound. Handle with caution.)";
            break;
        
        case "Necklace":
            info[0] = "* (A broken but dazzling#  necklace.)";
            info[1] = "* (Can't be worn but could be#  worth something.)";
            break;
    }
    
    scr_text();
    
    with (msg)
    {
        var msg_number = array_length_1d(info);
        
        for (var i = 0; i < msg_number; i++)
            message[i] = info[i];
    }
}
