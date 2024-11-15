var game_mode;

depth = -room_height - global.depth_overworld_text_normal;
global.item_info_hold = id;
item_slot = global.item_slot[global.item_pause_screen_number];
game_mode = global.game_mode;
story_item = false;

if (game_mode == "customs")
{
    if (item_slot == "Monster Candy")
        item_info_message[0] = "Heals 10 HP#* Has a distinct,#  non-licorice flavor.";
    else if (item_slot == "Croquet Roll")
        item_info_message[0] = "Heals 15 HP#* Fried dough traditionally served with a mallet.";
    else if (item_slot == "Stick")
        item_info_message[0] = "Weapon AT 0#* Its bark is worse than#  its bite.";
    else if (item_slot == "Bandage")
        item_info_message[0] = "Heals 10 HP#* It has already been used several times.";
    else if (item_slot == "Rock Candy")
        item_info_message[0] = "Heals 1 HP#* Here is a recipe to make this at home: 1. Find a rock";
    else if (item_slot == "Pumpkin Rings")
        item_info_message[0] = "Heals 8 HP#* A small pumpkin cooked like onion rings.";
    else if (item_slot == "Spider Donut")
        item_info_message[0] = "Heals 12 HP#* A donut made with Spider Cider in the batter.";
    else if (item_slot == "Stoic Onion")
        item_info_message[0] = "Heals 5 HP#* Even eating it raw, the tears just won't come.";
    else if (item_slot == "Ghost Fruit")
        item_info_message[0] = "Heals 16 HP#* If eaten, it will never pass to the other side.";
    else if (item_slot == "Spider Cider")
        item_info_message[0] = "Heals 24 HP#* Made with whole spiders, not just the juice.";
    else if (item_slot == "Butterscotch Pie")
        item_info_message[0] = "All HP#* Butterscotch-cinnamon pie, one slice.";
    else if (item_slot == "Faded Ribbon")
        item_info_message[0] = "Armor DF 3#* If you're cuter, monsters won't hit you as hard.";
    else if (item_slot == "Toy Knife")
        item_info_message[0] = "Weapon AT 3#* Made of plastic. A rarity nowadays.";
    else if (item_slot == "Tough Glove")
        item_info_message[0] = "Weapon AT 5#* A worn pink leather glove. For five-fingered folk.";
    else if (item_slot == "Manly Bandanna")
        item_info_message[0] = "Armor DF 7#* It has seen some wear. It has abs drawn on it.";
    else if (item_slot == "Snowman Piece")
        item_info_message[0] = "Heals 45 HP#* Please take this to the ends of the earth.";
    else if (item_slot == "Nice Cream")
        item_info_message[0] = "Heals 15 HP#* Instead of a joke, the wrapper says something nice.";
    else if (item_slot == "Puppydough Icecream")
        item_info_message[0] = "Heals 28 HP#* Made by young pups.";
    else if (item_slot == "Bisicle")
        item_info_message[0] = "Heals 11 HP#* It's a two-pronged popsicle, so you can eat it twice.";
    else if (item_slot == "Unisicle")
        item_info_message[0] = "Heals 11 HP#* It's a SINGLE-pronged popsicle. Wait, that's just normal...";
    else if (item_slot == "Cinnamon Bun")
        item_info_message[0] = "Heals 22 HP#* A cinnamon roll in the shape of a bunny.";
    else if (item_slot == "Temmie Flakes")
        item_info_message[0] = "Heals 2 HP#* It's just torn up pieces of colored construction paper.";
    else if (item_slot == "Abandoned Quiche")
        item_info_message[0] = "Heals 34 HP#* A psychologically damaged spinach egg pie.";
    else if (item_slot == "Old Tutu")
        item_info_message[0] = "Armor DF 10#* Finally, a protective piece of armor.";
    else if (item_slot == "Ballet Shoes")
        item_info_message[0] = "Wpn AT 7#* These used shoes make you feel incredibly dangerous.";
    else if (item_slot == "Punch Card")
        item_info_message[0] = "Battle Item#* Use to make punching attacks stronger in one battle. Use outside of battle to look at the card.";
    else if (item_slot == "Annoying Dog")
        item_info_message[0] = "Dog A little white dog. It's fast";
    else if (item_slot == "Dog Salad")
        item_info_message[0] = "Heals ?? HP#* Recovers HP. (Hit Poodles.)";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Shiny trail left behind by a dog.";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Dog-shaped husk shed from a dog's carapace.";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Dirty dishes left unwashed by a dog.";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Glowing crystals secreted by a dog.";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Jigsaw puzzle left unfinished by a dog.";
    else if (item_slot == "Dog Residue")
        item_info_message[0] = "Dog Item Web spun by a dog to ensnare prey.";
    else if (item_slot == "Astronaut Food")
        item_info_message[0] = "Heals 21 HP#* For feeding a pet astronaut.";
    else if (item_slot == "Instant Noodles")
        item_info_message[0] = "Heals HP#* Comes with everything you need for a quick meal!";
    else if (item_slot == "Crab Apple")
        item_info_message[0] = "Heals 18 HP#* An aquatic fruit that resembles a crustacean.";
    else if (item_slot == "Hot Dog...?")
        item_info_message[0] = "Heals 20 HP#* The \"meat\" is made of something#  called a \"water sausage.\"";
    else if (item_slot == "Hot Cat")
        item_info_message[0] = "Heals 21 HP#* Like a hot dog, but with little cat ears on the end.";
    else if (item_slot == "Glamburger")
        item_info_message[0] = "Heals 27 HP#* A hamburger made of edible glitter and sequins.";
    else if (item_slot == "Sea Tea")
        item_info_message[0] = "Heals 10 HP#* Made from glowing marshwater. Increases SPEED for one battle.";
    else if (item_slot == "Starfait")
        item_info_message[0] = "Heals 14 HP#* A sweet treat made of sparkling stars.";
    else if (item_slot == "Legendary Hero")
        item_info_message[0] = "Heals 40 HP#* Sandwich shaped like a sword. Increases ATTACK when eaten.";
    else if (item_slot == "Butty Glasses")
        item_info_message[0] = "Armor DF 6#* Glasses marred with wear. Increases INV by 9. (After you get hurt by an attack, you stay invulnerable for longer.)";
    else if (item_slot == "Torn Notebook")
        item_info_message[0] = "Weapon AT 2#* Contains illegible scrawls. Increases INV by 6. (After you get hurt by an attack, you stay invulnerable for longer.)";
    else if (item_slot == "Stained Apron")
        item_info_message[0] = "Armor DF 11#* Heals 1 HP every other turn.";
    else if (item_slot == "Burnt Pan")
        item_info_message[0] = "Weapon AT 10#* Damage is rather consistent. Consumable items heal 4 more HP.";
    else if (item_slot == "Cowboy Hat")
        item_info_message[0] = "Armor DF 12#* This battle-worn hat makes you want to grow a beard. It also raises ATTACK by 5.";
    else if (item_slot == "Empty Gun")
        item_info_message[0] = "Weapon AT 12#* An antique revolver. It has no ammo. Must be used precisely, or damage will be low.";
    else if (item_slot == "Heart Locket")
        item_info_message[0] = "Armor DF 15#* It says \"Best Friends Forever.\"";
    else if (item_slot == "Worn Dagger")
        item_info_message[0] = "Weapon AT 15#* Perfect for cutting plants and vines.";
    else if (item_slot == "Real Knife")
        item_info_message[0] = "Weapon AT 99#* Here we are!";
    else if (item_slot == "The Locket")
        item_info_message[0] = "Armor DF 99#* You can feel it beating.";
    else if (item_slot == "Bad Memory")
        item_info_message[0] = "Hurts 1 HP#* ?????";
    else if (item_slot == "Dream")
        item_info_message[0] = "Heals 12 HP#* The goal of \"Determination.\"";
    else if (item_slot == "Undyne's Letter")
        item_info_message[0] = "Unique Letter written for Dr. Alphys.";
    else if (item_slot == "Undyne Letter EX")
        item_info_message[0] = "Unique It has DON'T DROP IT written on it.";
    else if (item_slot == "Popato Chisps")
        item_info_message[0] = "Heals 13 HP#* Regular old popato chisps.";
    else if (item_slot == "Junk Food")
        item_info_message[0] = "Heals 17 HP#* Food that was probably once thrown away.";
    else if (item_slot == "Mystery Key")
        item_info_message[0] = "Unique It is too bent to fit on your keychain.";
    else if (item_slot == "Face Steak")
        item_info_message[0] = "Heals 60 HP#* Huge steak in the shape of Mettaton's face. (You don't feel like it's made of real meat...)";
    else if (item_slot == "Hush Puppy")
        item_info_message[0] = "Heals 65 HP#* This wonderful spell will stop a dog from casting magic.";
    else if (item_slot == "Snail Pie")
        item_info_message[0] = "Heals Some HP#* An acquired taste.";
    else if (item_slot == "temy armor")
        item_info_message[0] = "Armor DF 20#* The things you can do with a college education! Raises ATTACK when worn. Recovers HP every other turn. INV up slightly.";
}
else if (game_mode == "yellow")
{
    script_execute(scr_item_info_text_yellow);
}

for (i = 0; i < array_length_1d(item_info_message); i++)
{
    if (story_item == false && i == 0)
        message[0] = "* \"" + string(item_slot) + "\"" + " - " + string(item_info_message[0]);
    else
        message[i] = string(item_info_message[i]);
}

message_end = array_length_1d(item_info_message) - 1;
message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
