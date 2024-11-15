function scr_item_info_text_yellow()
{
    var item_info_hold, item_slot, item_value;
    
    item_info_hold = global.item_info_hold;
    item_slot = item_info_hold.item_slot;
    
    if (item_slot == "Missing Poster")
    {
        item_info_message[0] = "* (The grim reminder of your#  mission. Justice is needed.)";
        story_item = true;
    }
    else if (item_slot == "Snowdin Map")
    {
        item_info_message[0] = "* (It's a hand-drawn map.)";
        item_info_message[1] = "* (It seems more colorful than the#  real Snowdin.)";
        story_item = true;
    }
    else if (item_slot == "Matches")
    {
        item_info_message[0] = "* (Some of them are wet.)";
        item_info_message[1] = "* (Looks like there are just#  enough dry ones to start a nice#  fire.)";
        story_item = true;
    }
    else if (item_slot == "Lukewarm Coffee")
    {
        item_info_message[0] = "* (A once sizzling Honeydew#  Coffee.)";
        item_info_message[1] = "* (It's cooled down a lot.)";
        item_info_message[2] = "* (It was probably left sitting in#  the snow a while.)";
        story_item = true;
    }
    else if (item_slot == "Soggy Mitten")
    {
        item_info_message[0] = "* (An old, soggy mitten. It's too#  wet to keep anything warm.)";
        story_item = true;
    }
    else if (item_slot == "Pickaxe")
    {
        item_info_message[0] = "* (A sturdy pickaxe.)";
        story_item = true;
    }
    else if (item_slot == "Steel Buckle")
    {
        item_info_message[0] = "* (A belt buckle made of steel.)";
        story_item = true;
    }
    else if (item_slot == "Lemonade")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (Doesn't smell too appetizing.)";
    }
    else if (item_slot == "Candy Corn")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (Your teeth hurt just looking#  at it.)";
    }
    else if (item_slot == "Corn Dog")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* * (A genuine Corn Dog with#  soft, fluffy ears.)";
    }
    else if (item_slot == "Sponge Cake")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (A delicious sponge that doesn't#  scratch.)";
        item_info_message[1] = "* (Has 2x the absorption!)";
    }
    else if (item_slot == "Homemade Cookie")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (A little burnt on one side, but#  looks yummy anyway.)";
    }
    else if (item_slot == "Hot Pop")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (Piping hot chocolate, frozen,#  then reheated.)";
    }
    else if (item_slot == "Lukewarm Pop")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (Piping hot chocolate cooled to#  lukewarm status.)";
    }
    else if (item_slot == "Cold Pop")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (Piping hot chocolate, cooled#  cold.)";
    }
    else if (item_slot == "Hndw Coffee")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (It would take true bravery to#  drink something this hot!)";
    }
    else if (item_slot == "Hndw Pancake")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (An off-the-griddle pancake with#  honey-syrup.)";
    }
    else if (item_slot == "G.B. Bear")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP#* (A cookie made to look like#  someone's face.)";
        item_info_message[1] = "* (What a creative and original#  idea!)";
    }
    else if (item_slot == "Packing Peanuts")
    {
        item_value = scr_item_stats_heal(item_slot);
        item_info_message[0] = "Heals " + string(item_value) + " HP";
        item_info_message[1] = "* (Ideal for preventing damage or#  destruction of fragile stomach#  contents.)";
    }
    else if (item_slot == "Trail Mix")
    {
        item_info_message[0] = "* \"Trail Mix\" - Heals 13 HP\"";
        item_info_message[1] = "* (Everything but the raisins#  has been picked out. Heals 13#  HP.)";
    }
    else if (item_slot == "Ice Tea")
    {
        item_info_message[0] = "* \"Ice Tea\" - Heals 20 HP\"#* (A glass of warm sweet tea.)";
        item_info_message[1] = "* (A label with a sketch of Mo#  grinning is glued to the side.)";
    }
    else if (item_slot == "Green Tea")
    {
        item_info_message[0] = " \"Green Tea\" - Heals 21 HP\"#* (Ice tea but dyed green. +1 HP#  for style.)";
    }
    else if (item_slot == "Sea Tea")
    {
        item_info_message[0] = " \"Sea Tea\" - Heals 10 HP\"#* (Glowing tea that'll jolt your system.)";
        item_info_message[1] = "* (A label reading \"The real#  deal!\" is stuck on the glass.)";
    }
    else if (item_slot == "Fruitcake")
    {
        item_info_message[0] = " \"Fruitcake\" - Heals 25 HP\"#* (Somewhat dried fruitcake with#  a few gemstones inside.)";
    }
    else if (item_slot == "Spider Donut")
    {
        item_info_message[0] = " \"Spider Donut\" - Heals 12 HP\"#* (A donut made with Spider#  Cider in the batter.)";
    }
    else if (item_slot == "Icewater")
    {
        item_info_message[0] = " \"Icewater\" - Heals 15 HP#* (The prequel to ice tea.)";
    }
    else if (item_slot == "Floral Cupcake")
    {
        item_info_message[0] = " \"Floral Cupcake\" - Heals ?? HP";
    }
    else if (item_slot == "Oasis Latte")
    {
        item_info_message[0] = " \"Oasis Latte\" - Heals 25 HP#* (Coffee but fancier.)";
    }
    else if (item_slot == "Cnm. Cookie")
    {
        item_info_message[0] = " \"Cnm. Cookie\" - Heals 35 HP#* (One of the baked good#  greats..)";
    }
    else if (item_slot == "Root Beer")
    {
        item_info_message[0] = " \"Root Beer\" - Heals 25 HP\"#* (It's family friendly!)";
    }
    else if (item_slot == "Gunpowder")
    {
        item_info_message[0] = " \"Gunpowder\" - Heals ??? HP\"#* (The forbidden spice.)";
    }
    else if (item_slot == "G. Pear")
    {
        item_value = scr_item_stats_protection(item_slot);
        item_info_message[0] = "Grants " + string(item_value) + " PP#* (Makes you invulnerable#  for a pear of hits.)";
    }
    else if (item_slot == "G. Coffee")
    {
        item_value = scr_item_stats_speed(item_slot);
        item_info_message[0] = "Grants " + string(item_value) + " SP";
        item_info_message[1] = "* (Halves the weight of your soul, giving you a speed boost for three enemy attacks.)";
        item_info_message[2] = "* (Half delicious beverage, half#  transition metal.)";
        item_info_message[3] = "* (Just smells like#  coffee, though.)";
    }
    else if (item_slot == "G. Cactus")
    {
        item_value = scr_item_stats_speed(item_slot);
        item_info_message[0] = "Heals 15 HP for 3 turns";
        item_info_message[1] = "The first bite hurts for 5 HP.";
        item_info_message[2] = "* (The forbidden snack.)";
    }
    else if (item_slot == "Toy Gun")
    {
        item_value = scr_item_stats_weapon(item_slot);
        item_info_message[0] = "Weapon AT " + string(item_value) + "#* (No description.)";
    }
    else if (item_slot == "Wild Revolver")
    {
        item_value = scr_item_stats_weapon(item_slot);
        item_info_message[0] = "Weapon AT " + string(item_value) + "#* (No description.)";
    }
    else if (item_slot == "Worn Hat")
    {
        item_value = scr_item_stats_armor(item_slot);
        item_info_message[0] = "Armor DF " + string(item_value) + "#* (No description.)";
    }
    else if (item_slot == "Rubber Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (Small, safe, non-toxic#  rubber pellets.)";
    }
    else if (item_slot == "Pebble Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (Like rocks, but smaller.#* Good makeshift ammo.)";
    }
    else if (item_slot == "Ice Pellets")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (Very conveniently shaped ice#  cubes.)";
        item_info_message[1] = "* (They don't seem to be melting#  either.)";
        item_info_message[2] = "* (How thoughtful of them!)";
    }
    else if (item_slot == "Cff Bean Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value);
        item_info_message[1] = "* (There's no way you could eat#  them, but they might still be#  of use.)";
    }
    else if (item_slot == "Glass Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (Literal shards of glass.#  Yep.)";
    }
    else if (item_slot == "Flint")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (A dusty, black rock.#  Might be useful for combat.)";
    }
    else if (item_slot == "Silver Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "Ammo AT " + string(item_value) + "#* (A pack of reflective pellets.)";
        item_info_message[1] = "* (They'd fit nicely in#  a six-shooter.)";
        item_info_message[2] = "* (A perfect shot deals#  triple the damage.)";
    }
    else if (item_slot == "Super Ammo")
    {
        item_value = scr_item_stats_weapon_mod(item_slot);
        item_info_message[0] = "* \"Super Ammo\" - Weapon AT 15#* (Regular toy gun ammo sold#  at your favorite convenience store.)";
        item_info_message[1] = "* (Boasts a \"Premium\" sticker on#  the top of the packaging.)";
    }
    else if (item_slot == "Patch")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "Accessory DF " + string(item_value) + "#* (A loosely sewn on patch.)";
        item_info_message[1] = "* (It's not strong but it's trustworthy.)";
    }
    else if (item_slot == "Feather")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "Accessory DF " + string(item_value) + "#* (An old, forgotten feather.)";
        item_info_message[1] = "* (It needs a good preening.)";
    }
    else if (item_slot == "Honeydew Pin")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "Accessory DF " + string(item_value) + "#* (A pin advertising the Honeydew#  Resort in Snowdin.)";
    }
    else if (item_slot == "Band Merch Pin")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "Accessory DF " + string(item_value) + "#* (A pin commemorating a concert#  you didn't go to.)";
    }
    else if (item_slot == "Golden Scarf")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "* \"Golden Scarf\" - Armor DF 25#* (It's emitting a violently#  golden shine.)";
    }
    else if (item_slot == "Fancy Holster")
    {
        item_value = scr_item_stats_armor_mod(item_slot);
        item_info_message[0] = "Accessory DF " + string(item_value) + "#* (A leather weapon-holder,#  perfect for duels at noon.)";
    }
    else if (item_slot == "H. Acid")
    {
        item_info_message[0] = "* (An extremely dangerous#  compound. Handle with caution.)";
    }
}
