function scr_item_use(argument0, argument1)
{
    var item, i, item_type, heal_value, pp_value, sp_value, rp_value, def_value, atk_value, use_msg, msg_number, n;
    
    item = argument0;
    i = argument1;
    use_msg[0] = "nothing";
    item_type = 1;
    heal_value = 0;
    pp_value = 0;
    sp_value = 0;
    rp_value = 0;
    def_value = 0;
    atk_value = 0;
    
    switch (item)
    {
        case "Lemonade":
            heal_value = 7;
            item_type = 1;
            use_msg[0] = "* (You drink the Lemonade.)";
            use_msg[1] = "* (It's very sour.)";
            break;
        
        case "Candy Corn":
            use_msg[0] = "* (You eat the Candy Corn.)";
            use_msg[1] = "* (You now know why it was#  discarded.)";
            heal_value = 9;
            item_type = 1;
            break;
        
        case "G. Pear":
            pp_value = 2;
            item_type = 1;
            use_msg[0] = "* (You eat the Golden Pear.)";
            use_msg[1] = "* (The immense flavor hugs your#  tastebuds.)";
            use_msg[2] = "* ( Overall... Not bad.)";
            break;
        
        case "Corn Dog":
            heal_value = 12;
            item_type = 1;
            use_msg[0] = "* (You scarf down the Corn Dog.)";
            use_msg[1] = "* (You can't help but feel bad#  for doing it.)";
            break;
        
        case "Patch":
            use_msg[0] = "* (You are unable to sew the#  Patch back on your hat.)";
            item_type = 0;
            break;
        
        case "Feather":
            item_type = 3;
            def_value = 2;
            use_msg[0] = "* (You stick the feather into#  your hat.)";
            use_msg[1] = "* (It gives you a proud feeling.)";
            break;
        
        case "G. Bandana":
            item_type = 3;
            def_value = 12;
            use_msg[0] = "* (With a shimmer, you tie the#  Golden Bandana around your#  neck.)";
            use_msg[1] = "* (You feel like you can take on#  anything now.)";
            break;
        
        case "Pebble Ammo":
            item_type = 2;
            atk_value = 3;
            use_msg[0] = "* (You load the pebbles into your#  gun.)";
            use_msg[1] = "* (It feels a little heavier#  now.)";
            break;
        
        case "Silver Ammo":
            item_type = 2;
            atk_value = 2;
            use_msg[0] = "* (You load the Silver Ammo#  into your gun.)";
            use_msg[1] = "* (The pellets shimmer#  in the light.)";
            break;
        
        case "Rubber Ammo":
            item_type = 2;
            atk_value = 0;
            use_msg[0] = "* (You load the rubber ammo into#  your weapon.)";
            break;
        
        case "Glass Ammo":
            item_type = 2;
            atk_value = 5;
            use_msg[0] = "* (You cautiously load the Glass#  into your gun.)";
            use_msg[1] = "* (Phew! No cuts!)";
            break;
        
        case "Flint":
            item_type = 2;
            atk_value = 9;
            use_msg[0] = "* (You load the Flint#  into your gun.)";
            use_msg[1] = "* (Might start some fire#   with this one!)";
            break;
        
        case "Sponge Cake":
            heal_value = 14;
            item_type = 1;
            use_msg[0] = "* (You lick the frosting off of#  the sponge.)";
            use_msg[1] = "* (Your mouth feels squeaky#  clean!)";
            break;
        
        case "Hndw Coffee":
            heal_value = 14;
            item_type = 1;
            use_msg[0] = "* (You brave the hot Honeydew#  Coffee.)";
            use_msg[1] = "* (You can feel your taste buds#  burning off.)";
            break;
        
        case "Adult Soda":
            heal_value = 18;
            item_type = 1;
            use_msg[0] = "* (You take a sip out of#  the adult soda.)";
            use_msg[1] = "* (...)";
            use_msg[2] = "* (Tastes like water.)";
            break;
        
        case "Hndw Pancake":
            heal_value = 16;
            item_type = 1;
            use_msg[0] = "* (You eat the pancake.)";
            use_msg[1] = "* (The syrup is very sweet!)";
            break;
        
        case "G.B. Bear":
            heal_value = 20;
            item_type = 1;
            use_msg[0] = "* (You eat the cookie.)";
            use_msg[1] = "* (It feels like it is watching#  you eat it.)";
            break;
        
        case "Hot Pop":
            heal_value = 14;
            item_type = 1;
            use_msg[0] = "* (You eat the Hot Chocolate Pop.)";
            use_msg[1] = "* (It has the distinct flavor of#  something that was once hot.)";
            break;
        
        case "Lukewarm Pop":
            heal_value = 8;
            item_type = 1;
            use_msg[0] = "* (You eat the Lukewarm Chocolate#  Pop.)";
            use_msg[1] = "* (It has the distinct flavor of#  something that was once hot#  then left to sit for too long.)";
            use_msg[2] = "* (It isn't great.)";
            break;
        
        case "Cold Pop":
            heal_value = 12;
            item_type = 1;
            use_msg[0] = "* (You eat the Cold Chocolate Pop.)";
            use_msg[1] = "* (It has the distinct flavor only#  possessed by truly cold things.)";
            break;
        
        case "G. Coffee":
            sp_value = 3;
            item_type = 1;
            use_msg[0] = "* (You chug the Half N' Half#  Golden Coffee.)";
            use_msg[1] = "* (It tastes like... regular#  coffee.)";
            break;
        
        case "G. Cactus":
            rp_value = 3;
            item_type = 1;
            use_msg[0] = "* (You take a huge bite out#  of the cactus.)";
            use_msg[1] = "* (...)";
            use_msg[2] = "* (It bites back.)";
            break;
        
        case "Packing Peanuts":
            heal_value = 10;
            item_type = 1;
            use_msg[0] = "* (You eat the Packing Peanuts.)";
            use_msg[1] = "* (Aside from the taste, texture,#  and potential health risk,#  they're not that bad.)";
            break;
        
        case "Trail Mix":
            heal_value = 13;
            item_type = 1;
            use_msg[0] = "* (You down the bag of Trail Mix.)";
            use_msg[1] = "* (All you taste are dried#  grapes.)";
            break;
        
        case "Ice Tea":
            heal_value = 20;
            item_type = 1;
            use_msg[0] = "* (You drink the glass of tea.#  It's very watered down.)";
            break;
        
        case "Green Tea":
            heal_value = 21;
            item_type = 1;
            use_msg[0] = "* (You drink the Green Tea.#  Tastes toxic.)";
            break;
        
        case "Sea Tea":
            sp_value = 1;
            item_type = 1;
            use_msg[0] = "* (You drink the Sea Tea. Your#  SOUL speed increases!)";
            break;
        
        case "Fruitcake":
            heal_value = 25;
            item_type = 1;
            use_msg[0] = "* (You scarf down the Fruitcake.#  The Swealterstones burn your#  throat!)";
            break;
        
        case "Spider Donut":
            heal_value = 12;
            item_type = 1;
            use_msg[0] = "* (Don't worry, spider didn't.)";
            break;
        
        case "Icewater":
            heal_value = 15;
            item_type = 1;
            use_msg[0] = "* (You drink the Icewater.#  Definitely has a taste but you#  can't describe it.)";
            break;
        
        case "Oasis Latte":
            heal_value = 25;
            item_type = 1;
            use_msg[0] = "* * (You drink the Latte...)";
            break;
        
        case "Cnm. Cookie":
            heal_value = 35;
            item_type = 1;
            use_msg[0] = "* (You eat the cookie...)";
            break;
        
        case "Root Beer":
            heal_value = 18;
            item_type = 1;
            use_msg[0] = "* (You down the Root Beer. The#  carbonation tingles!)";
            break;
        
        case "Feisty Slider":
            heal_value = 30;
            item_type = 1;
            use_msg[0] = "* (You eat the Feisty Slider.#  Much like the team, its flavor#  is... ambitious.)";
            break;
        
        case "Gunpowder":
            heal_value = clamp(global.max_hp_self - global.current_hp_self, 0, 999);
            item_type = 1;
            use_msg[0] = "* (You put the gunpowder in your#  mouth and nearly choke to#  death.) ";
            break;
        
        case "Moss Salad":
            use_msg[0] = "* (You brace yourself and eat#  the Moss Salad.)";
            use_msg[1] = "* (The texture can only be#  described as \"insolation#  esque.\")";
            heal_value = 17;
            item_type = 1;
            break;
        
        case "Grassy Fries":
            use_msg[0] = "* (You plug your nose and down#  the Grassy Fries.)";
            use_msg[1] = "* (Is this what life has really#  come to?)";
            heal_value = 14;
            item_type = 1;
            break;
        
        case "Flower Stew":
            use_msg[0] = "* (You make sure Flowey isn't#  watching before trying it.)";
            use_msg[1] = "* (Mmm... chunky...)";
            heal_value = 20;
            item_type = 1;
            break;
        
        case "Gravity Granola":
            use_msg[0] = "* (You snack on the Gravity#  Granola.)";
            use_msg[1] = "* (You can really taste all 9.8#  meters!)";
            heal_value = 30;
            item_type = 1;
            break;
        
        case "Dihydrogen Monoxide":
            use_msg[0] = "* (You drink the H2O. Kinda#  tastes like window cleaner...)";
            heal_value = 20;
            item_type = 1;
            break;
        
        case "Popato Chisps":
            use_msg[0] = "* (You eat the Popato Chisps.#  The crunch is deafening.)";
            heal_value = 13;
            item_type = 1;
            break;
        
        case "Beef Jerky":
            use_msg[0] = "* (You scarf down the Beef#  Jerky.)";
            use_msg[1] = "* (What a classic flavor.)";
            heal_value = 16;
            item_type = 1;
            break;
        
        case "Cake":
            use_msg[0] = "* (You enjoy several slices of#  cake.)";
            use_msg[1] = "* (Delicious!)";
            heal_value = 30;
            item_type = 1;
            break;
        
        case "Floral Cupcake":
            use_msg[0] = "* (You enjoy the Floral#  Cupcake.)";
            use_msg[1] = "* (What a rich flavor!)";
            heal_value = 50;
            item_type = 1;
            break;
        
        case "Monster Candy":
            use_msg[0] = "* (You eat the Monster Candy.)";
            use_msg[1] = "* (The taste is faintly#  familiar...)";
            heal_value = 10;
            item_type = 1;
            break;
        
        case "Monster Candy+":
            use_msg[0] = "* (You pop the Monster Candy+ in#  your mouth.)";
            use_msg[1] = "* (The overwhelming sweetness is#  at war with your taste buds.)";
            heal_value = 15;
            item_type = 1;
            break;
        
        case "C-B Strudel":
            use_msg[0] = "* (You savor the C-B Strudel.)";
            use_msg[1] = "* (The taste is strangely#  familiar...)";
            heal_value = 30;
            item_type = 1;
            break;
        
        case "Hot Dog":
            use_msg[0] = "* (You scarf down the 'dog.)";
            use_msg[1] = "* (Mmm, hits the spot!)";
            heal_value = 20;
            item_type = 1;
            break;
        
        case "Corn Chowder":
            use_msg[0] = "* (You nervously drink the Corn#  Chowder.)";
            use_msg[1] = "* (...Could've been worse.)";
            heal_value = 15;
            item_type = 1;
            break;
        
        case "Wild Revolver":
            item_type = 4;
            use_msg[0] = "* (You equipped the#  " + string(item) + ".)";
            break;
        
        case "Toy Gun":
            item_type = 4;
            use_msg[0] = "* (You equipped the " + string(item) + ".)";
            break;
        
        case "Ice Pellets":
            item_type = 2;
            atk_value = 6;
            use_msg[0] = "* (You load the Ice Pellet Ammo.)";
            use_msg[1] = "* (Your gun is now cold to the#  touch.)";
            break;
        
        case "Cff Bean Ammo":
            item_type = 2;
            atk_value = 4;
            use_msg[0] = "* (You load the Coffee Beans.)";
            use_msg[1] = "* (Your gun now smells delightful.)";
            break;
        
        case "Super Ammo":
            item_type = 2;
            atk_value = 15;
            use_msg[0] = "* (You load the Super Ammo.)";
            use_msg[1] = "* (Your gun now feels lighter#  than your conscience.)";
            break;
        
        case "Nails":
            item_type = 2;
            atk_value = 10;
            use_msg[0] = "* (You load the Nails#  into your gun.)";
            break;
        
        case "Friendliness Pellets":
            item_type = 2;
            atk_value = 11;
            use_msg[0] = "* (You load the Friendliness#  Pellets into your gun.)";
            break;
        
        case "Honeydew Pin":
            item_type = 3;
            def_value = 5;
            use_msg[0] = "* (You pin the Honeydew pin#  to your hat.)";
            break;
        
        case "Band Merch Pin":
            item_type = 3;
            def_value = 5;
            use_msg[0] = "* (You pin the Merch Pin to your#  hat.)";
            break;
        
        case "Steel Buckle":
            item_type = 3;
            def_value = 7;
            use_msg[0] = "* (You attach the Steel Buckle#  to your belt.)";
            use_msg[1] = "* (Your pants feel sturdier than#  ever!)";
            break;
        
        case "Safety Jacket":
            item_type = 3;
            def_value = 6;
            use_msg[0] = "* (You don the stunning#  highlighter yellow jacket.)";
            use_msg[1] = "* (You're all ready to take care#  of business!)";
            break;
        
        case "Fancy Holster":
            item_type = 3;
            def_value = 7;
            use_msg[0] = "* (You proudly equip the Fancy#  Holster.)";
            use_msg[1] = "* (You're ready for anything#  now!)";
            break;
        
        case "Golden Scarf":
            item_type = 3;
            def_value = 25;
            use_msg[0] = "* (You put the Golden Scarf on.#* Your tremendous taste for fashion#  makes monsters go easy on you.)";
            break;
        
        case "Safety Goggles":
            item_type = 3;
            def_value = 8;
            use_msg[0] = "* (You wrap the Safety Goggles#  around your hat.)";
            use_msg[1] = "* (It looks like it has eyes#  now.)";
            break;
        
        case "Delta Rune Patch":
            item_type = 3;
            def_value = 10;
            use_msg[0] = "* (You attach the Patch to your#  vest and begin to feel#  something.)";
            use_msg[1] = "* (The unwavering hopes and#  dreams of Monsterkind.)";
            break;
        
        case "Silver Scarf":
            item_type = 3;
            def_value = 6;
            use_msg[0] = "* (You wrap the Silver Scarf#  around your neck.)";
            use_msg[1] = "* (So cozy!)";
            break;
        
        case "Missing Poster":
        case "Necklace":
            item_type = 0;
            use_msg[0] = "* (You cannot use this item.)";
            break;
        
        case "Lukewarm Coffee":
            item_type = 0;
            use_msg[0] = "* Better not drink it.";
            use_msg[1] = "* (You could get hotter coffee#  elsewhere.)";
            break;
        
        case "Soggy Mitten":
        case "Pickaxe":
            item_type = 0;
            use_msg[0] = "* (You can't think of a possible#  use for it.)";
            break;
        
        case "Matches":
            item_type = 0;
            use_msg[0] = "* (You aren't sure how to safely#  start a fire with these.)";
            use_msg[1] = "* (They'd probably work in an#  emergency.)";
            break;
        
        case "Snowdin Map":
            item_type = 0;
            use_msg[0] = "* (It's accuracy seems#  compromised.)";
            use_msg[1] = "* (You aren't sure how to use#  it.)";
            break;
        
        case "Videotape":
            item_type = 0;
            use_msg[0] = "* (You can't think of a use for#  this.)";
            break;
        
        case "H. Acid":
            item_type = 0;
            instance_create_depth(0, 0, -100, obj_steamworks_05_acid_ending);
            instance_destroy();
            break;
    }
    
    if (item_type == 1)
    {
        global.item_slot[i] = "Nothing";
        
        if (heal_value > 0)
        {
            global.current_hp_self += heal_value;
            global.current_hp_self = clamp(global.current_hp_self, 0, global.max_hp_self);
            audio_play_sound(snd_heal, 1, 0);
        }
        else if (pp_value > 0)
        {
            global.current_pp_self += pp_value;
            global.current_pp_self = clamp(global.current_pp_self, 0, global.max_pp_self);
            audio_play_sound(snd_fanpear, 1, 0);
        }
        else if (sp_value > 0)
        {
            global.current_sp_self += sp_value;
            global.current_sp_self = clamp(global.current_sp_self, 0, global.max_sp_self);
            
            if (argument0 == "Sea Tea")
            {
                global.current_hp_self += 10;
                global.current_hp_self = clamp(global.current_hp_self, 0, global.max_hp_self);
            }
            
            audio_play_sound(snd_fanpear, 1, 0);
        }
        else if (rp_value > 0)
        {
            global.current_rp_self += rp_value;
            instance_create(0, 0, obj_cactus_damager);
            scr_screenshake(12, 6);
        }
        
        if (use_msg[0] != "nothing")
        {
            scr_text();
            
            with (msg)
            {
                msg_number = array_length_1d(use_msg);
                
                if (global.route == 3)
                {
                    msg_number = 0;
                }
                else
                {
                    for (i = 0; i < msg_number; i++)
                        message[i] = use_msg[i];
                }
                
                if (heal_value > 0)
                {
                    message[msg_number] = "* Healed " + string(heal_value) + " HP!";
                    
                    if (global.current_hp_self >= global.max_hp_self)
                        message[msg_number] = "* HP maxed out.";
                }
                else if (pp_value > 0)
                {
                    message[msg_number] = "* You gained " + string(pp_value) + " PP!";
                    
                    if (global.current_pp_self >= global.max_pp_self)
                        message[msg_number] = "* PP maxed out.";
                }
                else if (sp_value > 0)
                {
                    message[msg_number] = "* You gained " + string(sp_value) + " SP!";
                    
                    if (global.current_sp_self >= global.max_sp_self)
                        message[msg_number] = "* SP maxed out.";
                }
                else if (rp_value > 0)
                {
                    message[msg_number] = "* You will heal for " + string(rp_value) + "#  turns!";
                    
                    if (global.current_rp_self >= global.max_rp_self)
                        message[msg_number] = "* RP maxed out.";
                }
            }
        }
    }
    
    if (item_type == 2)
    {
        global.item_slot[i] = global.player_weapon_modifier;
        global.player_weapon_modifier = item;
        audio_play_sound(snd_equip_armor, 1, 0);
        global.player_weapon_modifier_attack = script_execute(scr_determine_weapon_modifier_attack);
    }
    
    if (item_type == 3)
    {
        global.item_slot[i] = global.player_armor_modifier;
        global.player_armor_modifier = item;
        audio_play_sound(snd_equip_armor, 1, 0);
        global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
    }
    
    if (item_type == 4)
    {
        global.item_slot[i] = global.player_weapon;
        global.player_weapon = item;
        global.player_weapon_attack = script_execute(scr_determine_weapon_attack);
        audio_play_sound(snd_equip_armor, 1, 0);
    }
    
    if (item_type != 1)
    {
        if (use_msg[0] != "nothing")
        {
            scr_text();
            
            with (msg)
            {
                msg_number = array_length_1d(use_msg);
                
                for (i = 0; i < msg_number; i++)
                    message[i] = use_msg[i];
            }
        }
    }
    
    if (item_type != 0)
    {
        for (n = 1; n < 8; n++)
        {
            if (global.item_slot[n] == "Nothing" && global.item_slot[n + 1] != "Nothing")
            {
                global.item_slot[n] = global.item_slot[n + 1];
                global.item_slot[n + 1] = "Nothing";
                n = 1;
            }
        }
    }
}
