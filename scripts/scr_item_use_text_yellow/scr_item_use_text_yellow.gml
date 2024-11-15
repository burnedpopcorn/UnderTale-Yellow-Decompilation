function scr_item_use_text_yellow()
{
    var item_use_hold, item_slot, current_hp_self, max_hp_self, current_pp_self, max_pp_self, current_sp_self, max_sp_self, current_rp_self, max_rp_self, execute_hp, execute_pp, execute_sp, execute_rp, cmsgn;
    
    if (live_call())
        return global.live_result;
    
    item_use_hold = global.item_use_hold;
    item_slot = item_use_hold.item_slot;
    current_hp_self = global.current_hp_self;
    max_hp_self = global.max_hp_self;
    current_pp_self = global.current_pp_self;
    max_pp_self = global.max_pp_self;
    current_sp_self = global.current_sp_self;
    max_sp_self = global.max_sp_self;
    current_rp_self = global.current_rp_self;
    max_rp_self = global.max_rp_self;
    execute_hp = false;
    execute_pp = false;
    execute_sp = false;
    execute_rp = false;
    
    if (item_slot == "Missing Poster" || item_slot == "Necklace")
    {
        message[0] = "* (You cannot use this item.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Snowdin Map")
    {
        message[0] = "* (Its accuracy seems#  compromised.)";
        message[1] = "* (You aren't sure how to use#  it.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Matches")
    {
        message[0] = "* (You aren't sure how to start a#  fire with these safely.)";
        message[1] = "* (They'd probably work in an#  emergency.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Lukewarm Coffee")
    {
        message[0] = "* (Better not drink it.)";
        message[1] = "* (You could get hotter coffee#  elsewhere.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Soggy Mitten" || item_slot == "Pickaxe")
    {
        message[0] = "* (You can't think of a possible#  use for it.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Videotape")
    {
        message[0] = "* (You can't think of a use for#  this.)";
    }
    else if (item_slot == "Lemonade")
    {
        message[0] = "* (You drink the " + string(item_slot) + ".)";
        message[1] = "* (It's very sour.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Candy Corn")
    {
        message[0] = "* (You eat the " + string(item_slot) + ".)";
        message[1] = "* (You now know why it was#  discarded.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Corn Dog")
    {
        message[0] = "* (You scarf down the " + string(item_slot) + ".)";
        message[1] = "* (You can't help but feel bad#  for doing it.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Sponge Cake")
    {
        message[0] = "* (You lick the frosting off of#  the sponge.)";
        message[1] = "* (Your mouth feels squeaky#  clean!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Homemade Cookie")
    {
        message[0] = "* (You scarf down the " + string(item_slot) + ".)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Hot Pop")
    {
        message[0] = "* (You eat the Hot Chocolate Pop.)";
        message[1] = "* (It has the distinct flavor of#  something that was once hot.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Lukewarm Pop")
    {
        message[0] = "* (You eat the Lukewarm Chocolate#  Pop.)";
        message[1] = "* (It has the distinct flavor of#  something that was once hot#  then left to sit for too long.)";
        message[2] = "* (It isn't great.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 3;
        execute_hp = true;
    }
    else if (item_slot == "Cold Pop")
    {
        message[0] = "* (You eat the Cold Chocolate Pop.)";
        message[1] = "* (It has the distinct flavor only#  possessed by truly cold things.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Hndw Coffee")
    {
        message[0] = "* (You brave the hot Honeydew#  Coffee.)";
        message[1] = "* (You can feel your taste buds#  burning off.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Adult Soda")
    {
        message[0] = "* (You take a sip out of#  the adult soda.)";
        message[1] = "* (...)";
        message[2] = "* (Tastes like water.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 3;
        execute_hp = true;
    }
    else if (item_slot == "Hndw Pancake")
    {
        message[0] = "* (You eat the pancake.)";
        message[1] = "* (The syrup is very sweet!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "G.B. Bear")
    {
        message[0] = "* (You eat the cookie.)";
        message[1] = "* (It feels like it is watching#  you eat it.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Packing Peanuts")
    {
        message[0] = "* (You eat the Packing Peanuts.)";
        message[1] = "* (Aside from the taste, texture,#  and potential health risk,#  they're not that bad.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Trail Mix")
    {
        message[0] = "* (You down the bag of Trail Mix.)";
        message[1] = "* (All you taste are dried#  grapes.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Ice Tea")
    {
        message[0] = "* (You drink the glass of tea.#  It's very watered down.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Green Tea")
    {
        message[0] = "* (You drink the Green Tea.#  Tastes toxic.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Sea Tea")
    {
        message[0] = "* (You drink the Sea Tea. Your#  SOUL speed increases!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
        global.current_sp_self += 1;
    }
    else if (item_slot == "Fruitcake")
    {
        message[0] = "* (You scarf down the Fruitcake.#  The Swealterstones burn your#  throat!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Spider Donut")
    {
        message[0] = "* (Don't worry, spider didn't.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Icewater")
    {
        message[0] = "* (You drink the Icewater.#  Definitely has a taste but you#  can't describe it.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Oasis Latte")
    {
        message[0] = "* (You drink the Latte...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Cnm. Cookie")
    {
        message[0] = "* (You eat the cookie...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Root Beer")
    {
        message[0] = "* (You down the Root Beer. The#  carbonation tingles!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Feisty Slider")
    {
        message[0] = "* (You eat the Feisty Slider.#  Much like the team, its flavor#  is... ambitious.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Gunpowder")
    {
        message[0] = "* (You put the gunpowder in your#  mouth and nearly choke to#  death.) ";
        message[1] = "* (...HP fully restored.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "G. Pear")
    {
        message[0] = "* (You eat the Golden Pear.)";
        message[1] = "* (The immense flavor hugs your#  tastebuds.)";
        message[2] = "* (Overall... Not bad.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "protection";
        item_use_hold.item_number = scr_item_stats_protection(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 3;
        execute_pp = true;
    }
    else if (item_slot == "G. Coffee")
    {
        message[0] = "* (You chug the Half N' Half#  Golden Coffee.)";
        message[1] = "* (It tastes like... regular#  coffee.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "speed";
        item_use_hold.item_number = scr_item_stats_speed(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_sp = true;
    }
    else if (item_slot == "G. Cactus")
    {
        message[0] = "* (You take a huge bite out#  of the cactus.)";
        message[1] = "* (...)";
        message[2] = "* (It bites back.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "restore";
        item_use_hold.item_number = scr_item_stats_restore(item_slot);
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 3;
        execute_rp = true;
    }
    else if (item_slot == "Moss Salad")
    {
        message[0] = "* (You brace yourself and eat#  the Moss Salad.)";
        message[1] = "* (The texture can only be#  described as \"insolation#  esque.\")";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Grassy Fries")
    {
        message[0] = "* (You plug your nose and down#  the Grassy Fries.)";
        message[1] = "* (Is this what life has really#  come to?)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Flower Stew")
    {
        message[0] = "* (You make sure Flowey isn't#  watching before trying it.)";
        message[1] = "* (Mmm... chunky...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Gravity Granola")
    {
        message[0] = "* (You snack on the Gravity#  Granola.)";
        message[1] = "* (You can really taste all 9.8#  meters!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Dihydrogen Monoxide")
    {
        message[0] = "* (You drink the H2O. Kinda#  tastes like window cleaner...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Popato Chisps")
    {
        message[0] = "* (You eat the Popato Chisps.#  The crunch is deafening.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = false;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Beef Jerky")
    {
        message[0] = "* (You scarf down the Beef#  Jerky.)";
        message[1] = "* (What a classic flavor.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Cake")
    {
        message[0] = "* (You enjoy several slices of#  cake.)";
        message[1] = "* (Delicious!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Floral Cupcake")
    {
        message[0] = "* (You enjoy the Floral#  Cupcake.)";
        message[1] = "* (What a rich flavor!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Monster Candy")
    {
        message[0] = "* (You eat the Monster Candy.)";
        message[1] = "* (The taste is faintly#  familiar...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Monster Candy+")
    {
        message[0] = "* (You pop the Monster Candy+ in#  your mouth.)";
        message[1] = "* (The overwhelming sweetness is#  at war with your taste buds.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "C-B Strudel")
    {
        message[0] = "* (You savor the C-B Strudel.)";
        message[1] = "* (The taste is strangely#  familiar...)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Hot Dog")
    {
        message[0] = "* (You scarf down the 'dog.)#  (Mmm, hits the spot!)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 1;
        execute_hp = true;
    }
    else if (item_slot == "Corn Chowder")
    {
        message[0] = "* (You nervously drink the Corn#  Chowder.)";
        message[1] = "* (...Could've been worse.)";
        item_use_hold.item_category = "consumable";
        item_use_hold.item_type = "healing";
        item_use_hold.item_sound = snd_battle_item_eat;
        item_use_hold.item_number = scr_item_stats_heal(item_slot);
        item_use_hold.con_keep_previous = true;
        item_use_hold.con_message_number = 2;
        execute_hp = true;
    }
    else if (item_slot == "Toy Gun")
    {
        message[0] = "* (You equipped the " + string(item_slot) + ".)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "weapon";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Wild Revolver")
    {
        message[0] = "* (You equipped the " + string(item_slot) + ".)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "weapon";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Worn Hat")
    {
        message[0] = "* (You equipped the " + string(item_slot) + ".)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "armor";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Rubber Ammo")
    {
        message[0] = "* (You load the rubber ammo into#  your weapon.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Pebble Ammo")
    {
        message[0] = "* (You load the pebbles into your#  gun.)";
        message[1] = "* (It feels a little heavier#  now.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Silver Ammo")
    {
        message[0] = "* (You load the Silver Ammo#  into your gun.)";
        message[1] = "* (The pellets shimmer#  in the light.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Ice Pellets")
    {
        message[0] = "* (You load the Ice Pellet Ammo.)";
        message[1] = "* (Your gun is now cold to the#  touch.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Cff Bean Ammo")
    {
        message[0] = "* (You load the Coffee Beans.)";
        message[1] = "* (Your gun now smells#  delightful.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Glass Ammo")
    {
        message[0] = "* (You cautiously load the Glass#  into your gun.)";
        message[1] = "* (Phew! No cuts!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Flint")
    {
        message[0] = "* (You load the Flint#  into your gun.)";
        message[1] = "* (Might start some fire#   with this one!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Nails")
    {
        message[0] = "* (You load the Nails#  into your gun.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Friendliness Pellets")
    {
        message[0] = "* (You load the Friendliness#  Pellets into your gun.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Super Ammo")
    {
        message[0] = "* (You load the Super Ammo.)";
        message[1] = "* (Your gun now feels lighter#  than your conscience.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "ammo";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Patch")
    {
        message[0] = "* (You are unable to sew the#  Patch back on your hat.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
    }
    else if (item_slot == "Feather")
    {
        message[0] = "* (You stick the " + string(item_slot) + " into#  your hat.)";
        message[1] = "* (It gives you a proud feeling.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "G. Bandana")
    {
        message[0] = "* (With a shimmer, you tie the#  Golden Bandana around your#  neck.)";
        message[1] = "* (You feel like you can take on#  anything now.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Honeydew Pin")
    {
        message[0] = "* (You pin the " + string(item_slot) + "#  to your hat.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Band Merch Pin")
    {
        message[0] = "* (You pin the Merch Pin to your#  hat.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Fancy Holster")
    {
        message[0] = "* (You proudly equip the Fancy#  Holster.)";
        message[1] = "* (You're ready for anything#  now!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Steel Buckle")
    {
        message[0] = "* (You attach the Steel Buckle#  to your belt.)";
        message[1] = "* (Your pants feel sturdier than#  ever!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Safety Jacket")
    {
        message[0] = "* (You don the stunning#  highlighter yellow jacket.)";
        message[1] = "* (You're all ready to take care#  of business!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Golden Scarf")
    {
        message[0] = "* (You put the Golden Scarf on.#* Your tremendous taste for fashion#  makes monsters go easy on you.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Safety Goggles")
    {
        message[0] = "* (You wrap the Safety Goggles#  around your hat.)";
        message[1] = "* (It looks like it has eyes#  now.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Delta Rune Patch")
    {
        message[0] = "* (You attach the Patch to your#  vest and begin to feel#  something.)";
        message[1] = "* (The unwavering hopes and#  dreams of Monsterkind.)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "Silver Scarf")
    {
        message[0] = "* (You wrap the Silver Scarf#  around your neck.)";
        message[1] = "* (So cozy!)";
        item_use_hold.item_category = "equip";
        item_use_hold.item_type = "accessory";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    else if (item_slot == "H. Acid")
    {
        audio_stop_all();
        global.sworks_flag[45] = 1;
        global.heart_battle_fighting_x = 320;
        global.heart_battle_fighting_y = 240;
        room_goto(rm_death_screen);
        message[0] = "* (You cannot use this item.)";
        item_use_hold.item_category = "nonconsumable";
        item_use_hold.item_type = "story";
        item_use_hold.item_sound = snd_battle_item_equip;
    }
    
    if (global.route == 3)
    {
        message = 0;
        message[0] = "";
        
        if (item_type == "accessory" || item_type == "ammo")
            message[0] = "You equip the " + item_slot + ".";
        
        item_use_hold.con_message_number = 1;
    }
    
    if (item_use_hold.con_keep_previous == true && global.route != 3)
        message_add = "##";
    else
        message_add = "";
    
    if (execute_hp == true)
    {
        cmsgn = item_use_hold.con_message_number;
        
        if ((current_hp_self + item_use_hold.item_number) < max_hp_self)
            message[cmsgn] = message_add + "* (You recovered " + string(item_use_hold.item_number) + " HP!)";
        else
            message[cmsgn] = message_add + "* (Your HP was maxed out.)";
    }
    
    if (execute_pp == true)
    {
        cmsgn = item_use_hold.con_message_number;
        
        if ((current_pp_self + item_use_hold.item_number) < max_pp_self)
            message[cmsgn] = message_add + "* (You gained " + string(item_use_hold.item_number) + " PP!)";
        else
            message[cmsgn] = message_add + "* (Your PP was maxed out.)";
    }
    
    if (execute_sp == true)
    {
        cmsgn = item_use_hold.con_message_number;
        
        if ((current_sp_self + item_use_hold.item_number) < max_sp_self)
            message[cmsgn] = message_add + "* (You gained " + string(item_use_hold.item_number) + " SP!)";
        else
            message[cmsgn] = message_add + "* (Your SP was maxed out.)";
    }
    
    if (execute_rp == true)
    {
        cmsgn = item_use_hold.con_message_number;
        
        if ((current_rp_self + item_use_hold.item_number) < max_rp_self)
            message[cmsgn] = message_add + "* You will heal for " + string(item_use_hold.item_number) + " turns!";
        else
            message[cmsgn] = message_add + "* (Your RP was maxed out.)";
    }
}
