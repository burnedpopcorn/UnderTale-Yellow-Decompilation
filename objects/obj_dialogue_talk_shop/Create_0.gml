var game_mode, shop_name, buy_shop_screen_number, message_alt_length;

depth = -room_height - 164;
image_speed = 0.2;
game_mode = global.game_mode;
shop_name = global.shop_name;
buy_shop_screen_number = global.buy_shop_screen_number;
box_portait[0] = -4;
autoskip = false;

if (game_mode == "yellow")
{
    if (shop_name == "Honeydew Resort Normal")
    {
        if (global.snowdin_flag[13] == 0)
        {
            if (buy_shop_screen_number == 1)
            {
                switch (global.snowdin_flag[20])
                {
                    case 0:
                        message[0] = "* Um...";
                        message[1] = "* Well...";
                        message[2] = "* This resort has been a family#  business for years.";
                        message[3] = "* We use local honey in all of our#  goodies while providing a warm#  place to visit.";
                        message[4] = "* It was started by my#  great-great-uncle back in...";
                        message[5] = "* Or was it my#  great-great-grandfather...";
                        message[6] = "* I...";
                        message[7] = "* I can't answer this customer's#  simple question!";
                        message[8] = "* I'm not cut out for this job.";
                        portrait[0] = 1406;
                        portrait[1] = 1406;
                        portrait[2] = 1402;
                        portrait[3] = 1401;
                        portrait[4] = 1409;
                        portrait[5] = 1398;
                        portrait[6] = 1407;
                        portrait[7] = 1403;
                        portrait[8] = 1403;
                        point[0] = 1;
                        point[1] = 1;
                        point[2] = 1;
                        point[3] = 1;
                        point[4] = 1;
                        point[5] = 1;
                        point[6] = 1;
                        point[7] = 1;
                        point[8] = 1;
                        talk_script[0] = scr_talking_honeydew_bear;
                        talk_script[1] = scr_talking_honeydew_bear;
                        talk_script[2] = scr_talking_honeydew_bear;
                        talk_script[3] = scr_talking_honeydew_bear;
                        talk_script[4] = scr_talking_honeydew_bear;
                        talk_script[5] = scr_talking_honeydew_bear;
                        talk_script[6] = scr_talking_honeydew_bear;
                        talk_script[7] = scr_talking_honeydew_bear;
                        talk_script[8] = scr_talking_honeydew_bear;
                        
                        for (i = 0; i < array_length_1d(message); i += 1)
                            action[i] = "Nothing";
                        
                        action[2] = "Override";
                        action[7] = "Override";
                        action_follow_up[2] = "Nothing";
                        action_follow_up[7] = "Nothing";
                        action_script[2] = scr_shop_animation_override_honeydew_bear_hand_deux;
                        action_script[7] = scr_shop_animation_override_honeydew_bear_head_down;
                        message_end = 8;
                        global.snowdin_flag[20] = 1;
                        global.shop_talk[1] = "This resort (NEW)";
                        break;
                    
                    case 1:
                        message[0] = "* So uhh, more about this#  place...";
                        message[1] = "* Our amenities are neat!";
                        message[2] = "* The honey cooler, our coveted#  latte machine... Oh, and the#  space heater! That's a special#  one!";
                        message[3] = "* It was donated to us by a real#  nice engineer by the name of#  Chujin! His apprentice helped#  as well.";
                        message[4] = "* He worked in the Steamworks#  ages ago when it was, ya#  know... operational.";
                        message[5] = "* Of course, everyone around#  here knew him for his#  generosity and soft smile.";
                        message[6] = "* Always wanted to make people#  feel welcome!";
                        message[7] = "* The heat from that machine#  often reminds me of those days...";
                        message[8] = "* I hope it does you too! If...#  you were there, which you#  weren't... ";
                        message[9] = "* I'll shut up now.";
                        portrait[0] = 1406;
                        portrait[1] = 1402;
                        portrait[2] = 1401;
                        portrait[3] = 1402;
                        portrait[4] = 1398;
                        portrait[5] = 1409;
                        portrait[6] = 1410;
                        portrait[7] = 1409;
                        portrait[8] = 1404;
                        portrait[9] = 1403;
                        point[0] = 1;
                        point[1] = 1;
                        point[2] = 1;
                        point[3] = 1;
                        point[4] = 1;
                        point[5] = 1;
                        point[6] = 1;
                        point[7] = 1;
                        point[8] = 1;
                        point[9] = 1;
                        talk_script[0] = scr_talking_honeydew_bear;
                        talk_script[1] = scr_talking_honeydew_bear;
                        talk_script[2] = scr_talking_honeydew_bear;
                        talk_script[3] = scr_talking_honeydew_bear;
                        talk_script[4] = scr_talking_honeydew_bear;
                        talk_script[5] = scr_talking_honeydew_bear;
                        talk_script[6] = scr_talking_honeydew_bear;
                        talk_script[7] = scr_talking_honeydew_bear;
                        talk_script[8] = scr_talking_honeydew_bear;
                        talk_script[9] = scr_talking_honeydew_bear;
                        
                        for (i = 0; i < array_length_1d(message); i += 1)
                            action[i] = "Nothing";
                        
                        action[1] = "Override";
                        action_follow_up[1] = "Nothing";
                        action_script[1] = scr_shop_animation_override_honeydew_bear_hand_deux;
                        action[9] = "Override";
                        action_follow_up[9] = "Nothing";
                        action_script[9] = scr_shop_animation_override_honeydew_bear_head_down;
                        message_end = 9;
                        global.shop_talk[1] = "This resort";
                        break;
                }
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* It's better than ever.";
                message[1] = "* This is the place to be in#  Snowdin!";
                message[2] = "* Some come for the band, some for#  the hotspring...";
                message[3] = "* But the monsters love our coffee#  the most.";
                message[4] = "* I don't blame them one bit.";
                message[5] = "* It's a sweet blend of coffee#  beans, hazelnut creamer, and#  honey, straight from the forest.";
                message[6] = "* I've already had thirteen cups#  this morning!";
                portrait[0] = 1410;
                portrait[1] = 1402;
                portrait[2] = 1409;
                portrait[3] = 1401;
                portrait[4] = 1409;
                portrait[5] = 1402;
                portrait[6] = 1399;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[1] = "Override";
                action[3] = "Override";
                action[5] = "Override";
                action_follow_up[1] = "Nothing";
                action_follow_up[3] = "Nothing";
                action_follow_up[5] = "Nothing";
                action_script[1] = scr_shop_animation_override_honeydew_bear_hand_deux;
                action_script[3] = scr_shop_animation_override_honeydew_bear_hand;
                action_script[5] = scr_shop_animation_override_honeydew_bear_hand_deux;
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* The band?";
                message[1] = "* Let's see...";
                message[2] = "* We have a few acts that come#  here to play.";
                message[3] = "* The band is a very popular one#  from Hotland.";
                message[4] = "* Oh! You should TOTALLY hear#  their new single.";
                message[5] = "* I especially love the chorus!";
                message[6] = "* It's so good and-";
                message[7] = "* and...";
                message[8] = "* Oh no.";
                message[9] = "* I've just been talking about#  what I like.";
                message[10] = "* You must be so bored...";
                message[11] = "* This is why I don't like#  conversations.";
                portrait[0] = 1398;
                portrait[1] = 1398;
                portrait[2] = 1402;
                portrait[3] = 1401;
                portrait[4] = 1399;
                portrait[5] = 1399;
                portrait[6] = 1399;
                portrait[7] = 1406;
                portrait[8] = 1404;
                portrait[9] = 1406;
                portrait[10] = 1404;
                portrait[11] = 1407;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                point[10] = 1;
                point[11] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                talk_script[7] = scr_talking_honeydew_bear;
                talk_script[8] = scr_talking_honeydew_bear;
                talk_script[9] = scr_talking_honeydew_bear;
                talk_script[10] = scr_talking_honeydew_bear;
                talk_script[11] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[2] = "Override";
                action_follow_up[2] = "Nothing";
                action_script[2] = scr_shop_animation_override_honeydew_bear_hand_deux;
                message_end = 11;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* That name rings a bell.";
                message[1] = "* Hmm...";
                message[2] = "* Oh, I remember!";
                message[3] = "* Strange little guy.";
                message[4] = "* He would often visit here, sit#  down, and watch the band.";
                message[5] = "* It looked like he was in a#  trance every time he watched#  them.";
                message[6] = "* I always wanted to talk to him,#  but...";
                message[7] = "* The thought of socializing that#  much always scared me...";
                message[8] = "* Before I could muster the#  courage, he suddenly#  stopped visiting.";
                message[9] = "* I wonder where he went?";
                message[10] = "* If you see him, be sure to tell#  him he's always welcome here!";
                portrait[0] = 1398;
                portrait[1] = 1398;
                portrait[2] = 1410;
                portrait[3] = 1409;
                portrait[4] = 1402;
                portrait[5] = 1398;
                portrait[6] = 1406;
                portrait[7] = 1404;
                portrait[8] = 1407;
                portrait[9] = 1398;
                portrait[10] = 1410;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                point[10] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                talk_script[7] = scr_talking_honeydew_bear;
                talk_script[8] = scr_talking_honeydew_bear;
                talk_script[9] = scr_talking_honeydew_bear;
                talk_script[10] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[4] = "Override";
                action_follow_up[4] = "Nothing";
                action_script[4] = scr_shop_animation_override_honeydew_bear_hand_deux;
                message_end = 10;
            }
        }
        else
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* You don't know what the Royal#  Guard is?#";
                message[1] = "* Why they're the peacekeepers#  of the Underground!#";
                message[2] = "* They set up stations all#  around and keep watch for#  wrongdoers.#";
                message[3] = "* Typically, they handle small#  stuff. Schemers and scammers,#  you know.#";
                message[4] = "* But then there are the big#  jobs. Jobs that don't come#  around very often.#";
                message[5] = "* I... don't think you've#  learned about that particular#  subject in school yet, by the#  looks of you.#";
                message[6] = "* You gotta be REALLY mature#  before that enters the#  curriculum. Like... a#  highschooler.#";
                message[7] = "* Sooo... sorry! I wouldn't want#  to spoil your homework!";
                portrait[0] = 1398;
                portrait[1] = 1401;
                portrait[2] = 1402;
                portrait[3] = 1409;
                portrait[4] = 1409;
                portrait[5] = 1406;
                portrait[6] = 1408;
                portrait[7] = 1404;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                talk_script[7] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[1] = "Override";
                action_follow_up[1] = "Nothing";
                action_script[1] = scr_shop_animation_override_honeydew_bear_hand;
                message_end = 7;
            }
            
            if (buy_shop_screen_number == 2)
            {
                if (global.snowdin_flag[20] < 2)
                {
                    message[0] = "* \"Mo?\"";
                    message[1] = "* Ohhh! \"More!\", You want more of#  something?#";
                    message[2] = "* Coffee? Live music? Let me#  know and I'll see what I can#  do!";
                    portrait[0] = 1398;
                    portrait[1] = 1410;
                    portrait[2] = 1409;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    talk_script[0] = scr_talking_honeydew_bear;
                    talk_script[1] = scr_talking_honeydew_bear;
                    talk_script[2] = scr_talking_honeydew_bear;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    global.snowdin_flag[20] = 2;
                    global.shop_talk[2] = "No, Mo";
                    message_end = 2;
                }
                else
                {
                    message[0] = "* No more? Um, alright then...#";
                    message[1] = "* ...What? #";
                    message[2] = "* Something wrong? You look#  annoyed...#";
                    message[3] = "* I-I didn't mean to upset you#  if I did!#";
                    message[4] = "* (How in the world do I#  communicate with children???)#";
                    message[5] = "* Uhhh - do you like video#  games? There's an arcade#  located in the Dunes!#";
                    message[6] = "* You should ask your parents to#  take you there!#";
                    message[7] = "* (Did that work?)";
                    portrait[0] = 1398;
                    portrait[1] = 1404;
                    portrait[2] = 1406;
                    portrait[3] = 1404;
                    portrait[4] = 1403;
                    portrait[5] = 1404;
                    portrait[6] = 1404;
                    portrait[7] = 1411;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    point[6] = 1;
                    point[7] = 1;
                    talk_script[0] = scr_talking_honeydew_bear;
                    talk_script[1] = scr_talking_honeydew_bear;
                    talk_script[2] = scr_talking_honeydew_bear;
                    talk_script[3] = scr_talking_honeydew_bear;
                    talk_script[4] = scr_talking_honeydew_bear;
                    talk_script[5] = scr_talking_honeydew_bear;
                    talk_script[6] = scr_talking_honeydew_bear;
                    talk_script[7] = scr_talking_honeydew_bear;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    action[4] = "Override";
                    action_follow_up[4] = "Nothing";
                    action_script[4] = scr_shop_animation_override_honeydew_bear_head_down;
                    global.snowdin_flag[20] = 1;
                    global.shop_talk[2] = "Mo";
                    message_end = 7;
                }
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* The snow should stop falling#  soon. Usually lasts a day at a#  time.#";
                message[1] = "* It's all super interesting!#";
                message[2] = "* The Underground is large#  enough to house its own#  ecosystem, did you know that?#";
                message[3] = "* That's why snow covers the#  ground and plant life surrounds#  us despite the obvious lack of#  sunlight.#";
                message[4] = "* There's also these gemstone#  things but that's a whole other#  can of snails...#";
                message[5] = "* Oh, s-sorry for the lecture!#";
                message[6] = "* I kind of want to be a teacher#  when I get older... It's not#  important...";
                portrait[0] = 1409;
                portrait[1] = 1409;
                portrait[2] = 1402;
                portrait[3] = 1401;
                portrait[4] = 1398;
                portrait[5] = 1404;
                portrait[6] = 1406;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[2] = "Override";
                action_follow_up[2] = "Nothing";
                action_script[2] = scr_shop_animation_override_honeydew_bear_hand_deux;
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* You want to h-hear a joke???#";
                message[1] = "* (The things I do for#  customers...)#";
                message[2] = "* Alright, uh... Let me think...#";
                message[3] = "* Okay, here's one:#";
                message[4] = "* Why did the dishonest monster#  get fired from his job?#";
                message[5] = "* ...#";
                message[6] = "* He was caught lying around!#  Heh...#";
                message[7] = "* ...#";
                message[8] = "* ...Not even a chuckle? Man...#";
                message[9] = "* Definitely keeping this off#  the daily report.";
                portrait[0] = 1404;
                portrait[1] = 1411;
                portrait[2] = 1406;
                portrait[3] = 1404;
                portrait[4] = 1402;
                portrait[5] = 1406;
                portrait[6] = 1404;
                portrait[7] = 1406;
                portrait[8] = 1411;
                portrait[9] = 1404;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                talk_script[0] = scr_talking_honeydew_bear;
                talk_script[1] = scr_talking_honeydew_bear;
                talk_script[2] = scr_talking_honeydew_bear;
                talk_script[3] = scr_talking_honeydew_bear;
                talk_script[4] = scr_talking_honeydew_bear;
                talk_script[5] = scr_talking_honeydew_bear;
                talk_script[6] = scr_talking_honeydew_bear;
                talk_script[7] = scr_talking_honeydew_bear;
                talk_script[8] = scr_talking_honeydew_bear;
                talk_script[9] = scr_talking_honeydew_bear;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[4] = "Override";
                action_follow_up[4] = "Nothing";
                action_script[4] = scr_shop_animation_override_honeydew_bear_hand_deux;
                message_end = 9;
            }
        }
    }
    
    if (shop_name == "Wild East Gunshop")
    {
        if (global.dunes_flag[20] >= 9 && global.dunes_flag[24] == 0)
        {
            message[0] = "* What occured in the square?\t";
            message[1] = "* North Star just walked by my#  shop while staring at the#  ground.";
            message[2] = "* It isn't a trouble of mine#  but... maybe you should check in#  on him?\t";
            message[3] = "* If you think it's important#  that is. Ahem.";
            portrait[0] = 1412;
            portrait[1] = 1412;
            portrait[2] = 1412;
            portrait[3] = 1412;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            point[3] = 1;
            talk_script[0] = scr_talking_blackjack;
            talk_script[1] = scr_talking_blackjack;
            talk_script[2] = scr_talking_blackjack;
            talk_script[3] = scr_talking_blackjack;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 3;
            autoskip = true;
        }
        else if (global.dunes_flag[24] != 0)
        {
            if (buy_shop_screen_number == 1)
            {
                if (global.dunes_flag[47] == 0)
                {
                    message[0] = "* How old am I? How old do I#  look?#";
                    message[1] = "* Believe it or not, I was born#  with gray hair. Got it from my#  father.#";
                    message[2] = "* But yes... I am what they call#  a \"senior citizen.\" Which only#  means I am much wiser than you#  youngsters!#";
                    message[3] = "* Because I've been around, I do#  have some interesting history#  if you would like to hear it.";
                    portrait[0] = 1419;
                    portrait[1] = 1419;
                    portrait[2] = 1419;
                    portrait[3] = 1412;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    talk_script[0] = scr_talking_blackjack;
                    talk_script[1] = scr_talking_blackjack;
                    talk_script[2] = scr_talking_blackjack;
                    talk_script[3] = scr_talking_blackjack;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    action[0] = "Override";
                    action[3] = "Override";
                    action_follow_up[0] = "Nothing";
                    action_follow_up[3] = "Nothing";
                    action_script[0] = scr_shop_animation_override_wildeast_blackjack_gun;
                    action_script[3] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                    message_end = 3;
                    global.shop_talk[1] = "Your History (NEW)";
                    global.dunes_flag[47] = 1;
                }
                else if (global.dunes_flag[47] == 1)
                {
                    message[0] = "* I was born during the war.#  Mere weeks before our#  Underground imprisonment.#";
                    message[1] = "* My father was a soldier in#  King ASGORE's army. And a#  soldier was all he ever#  became.#";
                    message[2] = "* When my mother got the word#  that monsterkind had to#  withdraw, she refused to leave.#  Insisted on searching for my#  father instead.#";
                    message[3] = "* ...Despite pleas from#  officers, there was no changing#  her mind. #";
                    message[4] = "* I was promptly given to a#  nanny and raised in this very#  mountain.#";
                    message[5] = "* But so goes life in such#  circumstances. Not everyone#  gets it easy.#";
                    message[6] = "* I will say, these kids out#  here... While they can be#  bothersome, they are lucky.#";
                    message[7] = "* The Underground isn't ideal#  but from the ripples I grew up#  feeling, it is much better than#  the strife of days past.#";
                    message[8] = "* I'm thankful for that.";
                    portrait[0] = 1412;
                    portrait[1] = 1412;
                    portrait[2] = 1412;
                    portrait[3] = 1412;
                    portrait[4] = 1412;
                    portrait[5] = 1412;
                    portrait[6] = 1412;
                    portrait[7] = 1412;
                    portrait[8] = 1412;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    point[6] = 1;
                    point[7] = 1;
                    point[8] = 1;
                    talk_script[0] = scr_talking_blackjack;
                    talk_script[1] = scr_talking_blackjack;
                    talk_script[2] = scr_talking_blackjack;
                    talk_script[3] = scr_talking_blackjack;
                    talk_script[4] = scr_talking_blackjack;
                    talk_script[5] = scr_talking_blackjack;
                    talk_script[6] = scr_talking_blackjack;
                    talk_script[7] = scr_talking_blackjack;
                    talk_script[8] = scr_talking_blackjack;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 8;
                    global.shop_talk[1] = "Your History";
                }
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* North Star's posse are friends#  of his from highschool, I#  believe.#";
                message[1] = "* There, they started a club to#  talk about movies and dress up#  to go on imaginary adventures.#  Almost like a permanent Pumpkin#  Day.#";
                message[2] = "* Some think that they're a#  little old to be doing such#  things but it's pretty#  harmless.#";
                message[3] = "* ...What am I saying? It isn't#  harmless! They harm me almost#  every day!#";
                message[4] = "* Did you know that Ace and#  Mooch installed a speaker#  system throughout the town? #";
                message[5] = "* They use it to play little#  jingles and this dreadful song#  that loops over and over! It#  even changes arrangements in#  certain buildings!#";
                message[6] = "* Every morning at seven they#  wake me up with an eagle#  screech!#";
                message[7] = "* I've tried telling Ace that#  it's SUPPOSED to be a rooster#  crow but he always says#  \"Roosters and crows can't get#  together like that.\"#";
                message[8] = "* They COULD if it was true#  LOVE!!!#";
                message[9] = "* (Pant... pant...)#";
                message[10] = "* ...#";
                message[11] = "* ...What were we speaking#  about?";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1412;
                portrait[3] = 1419;
                portrait[4] = 1419;
                portrait[5] = 1419;
                portrait[6] = 1419;
                portrait[7] = 1419;
                portrait[8] = 1419;
                portrait[9] = 1419;
                portrait[10] = 1412;
                portrait[11] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                point[10] = 1;
                point[11] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                talk_script[5] = scr_talking_blackjack;
                talk_script[6] = scr_talking_blackjack;
                talk_script[7] = scr_talking_blackjack;
                talk_script[8] = scr_talking_blackjack;
                talk_script[9] = scr_talking_blackjack;
                talk_script[10] = scr_talking_blackjack;
                talk_script[11] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[3] = "Override";
                action_follow_up[3] = "Nothing";
                action_script[3] = scr_shop_animation_override_wildeast_blackjack_gun;
                action[10] = "Override";
                action_follow_up[10] = "Nothing";
                action_script[10] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                message_end = 11;
            }
            
            if (buy_shop_screen_number == 3)
            {
                if (global.dunes_flag[48] == 0)
                {
                    message[0] = "* Humans, huh?#";
                    message[1] = "* Well, I'm afraid there's no#  sugar-coating it. Humans such#  as yourself are widely#  disdained in the Underground.#";
                    message[2] = "* It's popular to root for their#  annihilation, even.#";
                    message[3] = "* So much loss... So much grief...#  #";
                    message[4] = "* The wicked actions of#  humankind are forever etched in#  our history, only to subside#  once King ASGORE obtains seven#  of their SOULs and judgment is#  brought upon the Surface.#";
                    message[5] = "* Then you wonder, \"How can a#  town like the Wild East exist#  in such a society?\" Well it#  isn't without its controversy.#";
                    message[6] = "* Most are indifferent,#  preferring not to acknowledge#  it.#";
                    message[7] = "* But some make their opinions#  very clear, stating that the#  town's making light of a#  serious situation, or even that#  we're traitors to monsterkind#  itself.#";
                    message[8] = "* Rather harsh, right?#";
                    message[9] = "* I believe everyone who#  participates is just fascinated#  with the Surface world. Whether#  it be historical, or plain old#  escapism.#";
                    message[10] = "* There's nothing wrong with#  finding an appreciation for#  such things, the way I see it.";
                    portrait[0] = 1412;
                    portrait[1] = 1419;
                    portrait[2] = 1419;
                    portrait[3] = 1419;
                    portrait[4] = 1419;
                    portrait[5] = 1419;
                    portrait[6] = 1419;
                    portrait[7] = 1419;
                    portrait[8] = 1412;
                    portrait[9] = 1412;
                    portrait[10] = 1412;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    point[6] = 1;
                    point[7] = 1;
                    point[8] = 1;
                    point[9] = 1;
                    point[10] = 1;
                    talk_script[0] = scr_talking_blackjack;
                    talk_script[1] = scr_talking_blackjack;
                    talk_script[2] = scr_talking_blackjack;
                    talk_script[3] = scr_talking_blackjack;
                    talk_script[4] = scr_talking_blackjack;
                    talk_script[5] = scr_talking_blackjack;
                    talk_script[6] = scr_talking_blackjack;
                    talk_script[7] = scr_talking_blackjack;
                    talk_script[8] = scr_talking_blackjack;
                    talk_script[9] = scr_talking_blackjack;
                    talk_script[10] = scr_talking_blackjack;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    action[1] = "Override";
                    action[5] = "Override";
                    action[8] = "Override";
                    action_follow_up[1] = "Nothing";
                    action_follow_up[5] = "Nothing";
                    action_follow_up[8] = "Nothing";
                    action_script[1] = scr_shop_animation_override_wildeast_blackjack_gun;
                    action_script[5] = scr_shop_animation_override_wildeast_blackjack_gun_spin;
                    action_script[8] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                    message_end = 10;
                    global.shop_talk[3] = "Your Opinion (NEW)";
                    global.dunes_flag[48] = 1;
                }
                else if (global.dunes_flag[48] == 1)
                {
                    message[0] = "* My opinion on humans? Hmm...#\t";
                    message[1] = "* I've spent most of my life#  disliking humans outright.#  Justifiably so.#\t";
                    message[2] = "* But... as I've aged, I've#  pondered over my bitterness.#\t";
                    message[3] = "* Thought that perhaps, this#  feud is more nuanced than it#  first appears?#\t";
                    message[4] = "* But even with all my years, I#  still haven't reached the other#  side, if I ever will.#";
                    message[5] = "* I do know that I dislike the#  nature that drove humankind to#  do what they did. #";
                    message[6] = "* The violence, the#  selfishness...#";
                    message[7] = "* But that nature can reside in#  anyone.#";
                    message[8] = "* At the end of the day, it's#  about an individual's#  character, you see. #";
                    message[9] = "* Whether or not they carry#  civility and respect within#  their SOUL.#";
                    message[10] = "* So far, I see those traits in#  you, so I've given you a pass.#";
                    message[11] = "* And anyway, it would be#  foolish of me to eliminate a#  potential patron when they have#  money to spend, haha!";
                    portrait[0] = 1412;
                    portrait[1] = 1412;
                    portrait[2] = 1412;
                    portrait[3] = 1412;
                    portrait[4] = 1412;
                    portrait[5] = 1412;
                    portrait[6] = 1412;
                    portrait[7] = 1412;
                    portrait[8] = 1412;
                    portrait[9] = 1412;
                    portrait[10] = 1412;
                    portrait[11] = 1412;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    point[6] = 1;
                    point[7] = 1;
                    point[8] = 1;
                    point[9] = 1;
                    point[10] = 1;
                    point[11] = 1;
                    talk_script[0] = scr_talking_blackjack;
                    talk_script[1] = scr_talking_blackjack;
                    talk_script[2] = scr_talking_blackjack;
                    talk_script[3] = scr_talking_blackjack;
                    talk_script[4] = scr_talking_blackjack;
                    talk_script[5] = scr_talking_blackjack;
                    talk_script[6] = scr_talking_blackjack;
                    talk_script[7] = scr_talking_blackjack;
                    talk_script[8] = scr_talking_blackjack;
                    talk_script[9] = scr_talking_blackjack;
                    talk_script[10] = scr_talking_blackjack;
                    talk_script[11] = scr_talking_blackjack;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 11;
                    global.shop_talk[3] = "Your Opinion";
                }
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* My life's dedication!#";
                message[1] = "* I work with steel, iron, and#  even a little silver and gold#  when I'm feeling fancy.#";
                message[2] = "* Mining Co. is still uncovering#  many such materials so I buy it#  from them at the beginning of#  each month.#";
                message[3] = "* Creating practical and#  beautiful items from rubble is#  endearing. I learned everything#  I know from a job in New Home#  where I made armor for Royal#  Guards.#";
                message[4] = "* The head smith who taught me -#  rumor was that he helped King#  ASGORE forge his mighty#  trident.#";
                message[5] = "* Of course, naysayers tout that#  it's made of pure magic but I#  don't believe them!#";
                message[6] = "* You do know that ASGORE wields#  a trident, correct? An absolute#  masterwork it is!#\t";
                message[7] = "* His armor is wonderfully#  crafted as well. I've heard#  it's impenetrable!#\t";
                message[8] = "* Such a respectable monster#  must look the part and he#  spared no expense!";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1412;
                portrait[3] = 1412;
                portrait[4] = 1412;
                portrait[5] = 1412;
                portrait[6] = 1419;
                portrait[7] = 1419;
                portrait[8] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                talk_script[5] = scr_talking_blackjack;
                talk_script[6] = scr_talking_blackjack;
                talk_script[7] = scr_talking_blackjack;
                talk_script[8] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[6] = "Override";
                action_follow_up[6] = "Nothing";
                action_script[6] = scr_shop_animation_override_wildeast_blackjack_gun;
                action[7] = "Override";
                action_follow_up[7] = "Nothing";
                action_script[7] = scr_shop_animation_override_wildeast_blackjack_gun_spin;
                action[8] = "Override";
                action_follow_up[8] = "Nothing";
                action_script[8] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                message_end = 8;
            }
        }
        else
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* I was hoping you wouldn't ask#  about them...";
                message[1] = "* Sigh...";
                message[2] = "* Young hooligans are all they#  are.";
                message[3] = "* Hooligans I'm forced to put up#  with to keep my business afloat.";
                message[4] = "* They have no respect for the#  fine arms I produce, always#  waving them around like they're#  some child's toy!";
                message[5] = "* However, I have learned how to#  benefit off their behavior.";
                message[6] = "* I'm the only monster around#  that provides such quality#  weapons, so whenever they push#  me, I push back and threaten to#  close shop.";
                message[7] = "* They always crumble and end up#  paying far more than the weapon#  they want is worth.";
                message[8] = "* A little money is worth a few#  headaches, haha!";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1419;
                portrait[3] = 1419;
                portrait[4] = 1419;
                portrait[5] = 1419;
                portrait[6] = 1419;
                portrait[7] = 1419;
                portrait[8] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                talk_script[5] = scr_talking_blackjack;
                talk_script[6] = scr_talking_blackjack;
                talk_script[7] = scr_talking_blackjack;
                talk_script[8] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[2] = "Override";
                action[4] = "Override";
                action[8] = "Override";
                action_follow_up[2] = "Nothing";
                action_follow_up[4] = "Nothing";
                action_follow_up[8] = "Nothing";
                action_script[2] = scr_shop_animation_override_wildeast_blackjack_gun;
                action_script[4] = scr_shop_animation_override_wildeast_blackjack_gun_spin;
                action_script[8] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                message_end = 8;
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* Ah yes, my gallery of babies!";
                message[1] = "* Uh... That sounded strange...#  Ahem!";
                message[2] = "* These beauties are all crafted#  from the highest quality#  materials!";
                message[3] = "* I forge them myself in my#  personal gunsmithing room!";
                message[4] = "* Not only do I make them with#  care, but I also care FOR them.";
                message[5] = "* I start my mornings by#  polishing the whole stock until#  I see my reflection in them!";
                message[6] = "* I also know how to handle these#  bad boys. I'm a way better shot#  than North Star, that's for#  sure.";
                message[7] = "* I... I saw a bandit in my#  rafters.";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1419;
                portrait[3] = 1419;
                portrait[4] = 1419;
                portrait[5] = 1419;
                portrait[6] = 1419;
                portrait[7] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                talk_script[5] = scr_talking_blackjack;
                talk_script[6] = scr_talking_blackjack;
                talk_script[7] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[2] = "Override";
                action_follow_up[2] = "Nothing";
                action_script[2] = scr_shop_animation_override_wildeast_blackjack_gun;
                action[7] = "Override";
                action_follow_up[7] = "Nothing";
                action_script[7] = scr_shop_animation_override_wildeast_blackjack_gun_shoot;
                message_end = 7;
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* The Wild East gets many#  visitors each day.";
                message[1] = "* There's something about the#  aura here that some monsters#  can't get enough of.";
                message[2] = "* Now, don't worry. I'm not#  selling ultra-deadly weapons to#  any passerby with enough G.";
                message[3] = "* I make sure my wares are tame#  enough to not be lethal. I#  myself am not one for violence!";
                message[4] = "* Well... used enough times#  consecutively, they COULD be#  lethal. But then again, a ballet#  shoe could also be lethal used#  enough times.";
                message[5] = "* Look, don't question my#  morality too much! I am not#  prepared to speak about it!";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1419;
                portrait[3] = 1419;
                portrait[4] = 1419;
                portrait[5] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                talk_script[5] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                action[2] = "Override";
                action_follow_up[2] = "Nothing";
                action_script[2] = scr_shop_animation_override_wildeast_blackjack_gun;
                action[5] = "Override";
                action_follow_up[5] = "Nothing";
                action_script[5] = scr_shop_animation_override_wildeast_blackjack_gun_holster;
                message_end = 5;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* I heard about this town some#  years back.";
                message[1] = "* I had mastered my smithing#  capabilities and was looking to#  open up shop.";
                message[2] = "* As it turns out, there was an#  empty building here so I thought#  \"why not?\" Seemed like quite the#  perfect town for such a shop.";
                message[3] = "* Do I regret settling down here,#  resulting in endless torment#  from five demonic youngsters?#  Every day.";
                message[4] = "* But everyone else I've met is#  quite pleasant, so it balances#  out.";
                portrait[0] = 1412;
                portrait[1] = 1412;
                portrait[2] = 1412;
                portrait[3] = 1412;
                portrait[4] = 1412;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                talk_script[0] = scr_talking_blackjack;
                talk_script[1] = scr_talking_blackjack;
                talk_script[2] = scr_talking_blackjack;
                talk_script[3] = scr_talking_blackjack;
                talk_script[4] = scr_talking_blackjack;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 4;
            }
        }
    }
    
    if (shop_name == "Wild East Saloon")
    {
        if (global.dunes_flag[20] >= 9 && global.dunes_flag[24] == 0)
        {
            message[0] = "* It's probably not the best#  time to chat. Real worried#  'bout everythin' goin' on right#  now.";
            portrait[0] = 1427;
            point[0] = 1;
            talk_script[0] = scr_talking_dina;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 0;
            autoskip = true;
        }
        else if (global.route == 1 && global.sworks_flag[0] > 0 && global.dunes_flag[24] != 2 && global.sworks_flag[61] == 0)
        {
            message[0] = "* Sorry, can't chit chat right#  now.";
            message[1] = "* I wanna savor this reunion as#  much as possible, bless their#  hearts.";
            portrait[0] = 1423;
            portrait[1] = 1426;
            point[0] = 1;
            point[1] = 1;
            talk_script[0] = scr_talking_dina;
            talk_script[1] = scr_talking_dina;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 1;
            autoskip = true;
        }
        else if (global.dunes_flag[24] != 0)
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* Was all the drama settled? It#  was real rough out there.#";
                message[1] = "* The Five are like siblin's, ya#  know? Every now and then a spat#  rears its head.#";
                message[2] = "* 'Course, most of the time it's#  somethin' like Mooch stealing#  Ed's hat or Star forgettin' to#  turn off his \"mission machines\"#  out in the Dunes.#";
                message[3] = "* This was uh... This was a step#  above.#";
                message[4] = "* It ain't my business but I'm#  sure it'll all smooth over in#  time... 'least I hope.#";
                message[5] = "* Family, right?";
                portrait[0] = 1423;
                portrait[1] = 1423;
                portrait[2] = 1425;
                portrait[3] = 1427;
                portrait[4] = 1423;
                portrait[5] = 1423;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                talk_script[5] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 5;
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* Ceroba's little troublemaker.#  Real cute kid.#";
                message[1] = "* She likes to hang 'round us#  and the Five when her mom's in#  town.#";
                message[2] = "* Looks dang intimidatin' in a#  cowboy hat too, that's for#  sure. Little older and she#  would fit right into our#  group!#";
                message[3] = "* Though I don't think Ceroba#  would allow it seein' as we#  might not be the best#  influence, haha.#";
                message[4] = "* Anyway, I been meanin' to ask#  Ceroba where Kanako's been.#  School field trip maybe? She#  does like to travel 'round the#  Underground.#";
                message[5] = "* Though I wouldn't think she'd#  be allowed too far ever#  since...#";
                message[6] = "* Ah, well, I could tell stories#  for hours but that's the gist#  of it, heh...";
                portrait[0] = 1425;
                portrait[1] = 1423;
                portrait[2] = 1423;
                portrait[3] = 1427;
                portrait[4] = 1423;
                portrait[5] = 1423;
                portrait[6] = 1423;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                talk_script[5] = scr_talking_dina;
                talk_script[6] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 3)
            {
                if (global.dunes_flag[45] == 0)
                {
                    message[0] = "* Heard fears of Royal's bargin'#  into town? Your presence did#  cause a stir. Only natural.#";
                    message[1] = "* The government takes human#  business seriously. Very#  seriously...#";
                    message[2] = "* I'm sure you've been hunted#  and attacked a hundred times by#  now. Happens every once in a#  while when a human falls down#  here.#";
                    message[3] = "* Man, if I didn't have a#  business to upkeep I'd let#  whoever's wronged you have it!";
                    portrait[0] = 1423;
                    portrait[1] = 1423;
                    portrait[2] = 1427;
                    portrait[3] = 1423;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    talk_script[0] = scr_talking_dina;
                    talk_script[1] = scr_talking_dina;
                    talk_script[2] = scr_talking_dina;
                    talk_script[3] = scr_talking_dina;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 3;
                    global.shop_talk[3] = "Government (NEW)";
                    global.dunes_flag[45] = 1;
                }
                else
                {
                    message[0] = "* Hey, if you're worried the#  town's gonna be ransacked, I#  wouldn't be.#";
                    message[1] = "* Royal's don't come 'round here#  often. I don't think they much#  care what we do.#";
                    message[2] = "* To my knowledge, last time any#  representative showed up was to#  post a flier on the news board.#  A notice for some kinda new#  healthcare program.#";
                    message[3] = "* Ol' Fluffybuns and his posse#  aren't exactly the most active#  group. #";
                    message[4] = "* Other than chasin' the odd#  human, I don't think they have#  anything else to spend their#  time on. #";
                    message[5] = "* It seems monsterkind has#  peaked in a way, so I reckon#  everyone should just come out#  here and spend their G on a#  slice of the Surface! Haha.";
                    portrait[0] = 1423;
                    portrait[1] = 1423;
                    portrait[2] = 1427;
                    portrait[3] = 1428;
                    portrait[4] = 1427;
                    portrait[5] = 1423;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    talk_script[0] = scr_talking_dina;
                    talk_script[1] = scr_talking_dina;
                    talk_script[2] = scr_talking_dina;
                    talk_script[3] = scr_talking_dina;
                    talk_script[4] = scr_talking_dina;
                    talk_script[5] = scr_talking_dina;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 5;
                    global.shop_talk[3] = "Government";
                }
            }
            
            if (buy_shop_screen_number == 4)
            {
                if (global.dunes_flag[46] == 0)
                {
                    message[0] = "* Oh, Ceroba's partner? Um,#  well, kind of a heavy subject...#";
                    message[1] = "* He never really came 'round#  this town back in the day.#  Didn't like what it stood for.#  Not that the tension was#  one-sided.#";
                    message[2] = "* Whether it was politics or an#  unburied hatchet, Star didn't#  speak highly of the fella#  neither.#";
                    message[3] = "* There was one time though...#";
                    message[4] = "* It was after hours - no one#  here but me. BAM! Front doors#  swing open and in walks#  Chujin.#";
                    message[5] = "* He was breathin' heavy, worn#  'n rugged... Unusual for a#  cleancut monster of science.#";
                    message[6] = "* I didn't think he drank but#  nevertheless, he sat down and#  ordered a cold one. #";
                    message[7] = "* I asked if somethin' was the#  matter but all he said was, \"I#  believe I've seen a ghost.\"";
                    message[8] = "* Weird, huh? Like... a monster?#  Couldn't be what he meant,#  right? Who knows...#";
                    message[9] = "* Shoot, I've said too much#  haven't I?#";
                    message[10] = "* All in all, I wouldn't bring#  him up 'round Star or Ceroba.#  There's a lotta feelin's there,#  ya know...";
                    portrait[0] = 1427;
                    portrait[1] = 1423;
                    portrait[2] = 1423;
                    portrait[3] = 1427;
                    portrait[4] = 1423;
                    portrait[5] = 1423;
                    portrait[6] = 1423;
                    portrait[7] = 1427;
                    portrait[8] = 1423;
                    portrait[9] = 1427;
                    portrait[10] = 1423;
                    point[0] = 1;
                    point[1] = 1;
                    point[2] = 1;
                    point[3] = 1;
                    point[4] = 1;
                    point[5] = 1;
                    point[6] = 1;
                    point[7] = 1;
                    point[8] = 1;
                    point[9] = 1;
                    point[10] = 1;
                    talk_script[0] = scr_talking_dina;
                    talk_script[1] = scr_talking_dina;
                    talk_script[2] = scr_talking_dina;
                    talk_script[3] = scr_talking_dina;
                    talk_script[4] = scr_talking_dina;
                    talk_script[5] = scr_talking_dina;
                    talk_script[6] = scr_talking_dina;
                    talk_script[7] = scr_talking_dina;
                    talk_script[8] = scr_talking_dina;
                    talk_script[9] = scr_talking_dina;
                    talk_script[10] = scr_talking_dina;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 10;
                    global.shop_talk[4] = "Chujin (NEW)";
                    global.dunes_flag[46] = 1;
                }
                else
                {
                    message[0] = "* Sorry but I need to be more#  careful of what beans I spill.";
                    message[1] = "* It ain't becomin' to spread#  gossip while a widow's still in#  mourning.";
                    portrait[0] = 1427;
                    portrait[1] = 1427;
                    point[0] = 1;
                    point[1] = 1;
                    talk_script[0] = scr_talking_dina;
                    talk_script[1] = scr_talking_dina;
                    
                    for (i = 0; i < array_length_1d(message); i += 1)
                        action[i] = "Nothing";
                    
                    message_end = 1;
                    global.shop_talk[4] = "Chujin";
                }
            }
        }
        else
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* Oh this little place? It's#  pretty fun 'round here.";
                message[1] = "* I heard it was established some#  years back when the Dunes gained#  its name if you get me.";
                message[2] = "* I should be polished on its#  history but Star don't talk#  'bout those days.";
                message[3] = "* I was lookin' for a friendly#  environment to share my brewin'#  skills, so here I am.";
                message[4] = "* There ain't terribly much to do#  in this town but that only makes#  it more close-knit.";
                message[5] = "* Every day has been pretty#  predictable until you showed up.#  ";
                message[6] = "* I'm eager to see what Star's#  plannin'.";
                portrait[0] = 1425;
                portrait[1] = 1423;
                portrait[2] = 1423;
                portrait[3] = 1423;
                portrait[4] = 1423;
                portrait[5] = 1423;
                portrait[6] = 1425;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                talk_script[5] = scr_talking_dina;
                talk_script[6] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* Haha, I get this question a#  lot.";
                message[1] = "* These fellas are my pets. Real#  reptiles, not monsters.";
                message[2] = "* Their names are Ann, Sammy,#  and Bert.";
                message[3] = "* The Underground still houses#  some critters from the Surface#  like birds and insects.";
                message[4] = "* I found these west of here,#  hidin' in a crevasse of sorts.";
                message[5] = "* Some monsters think keepin'#  pets is strange but I think it's#  cute.";
                message[6] = "* They give me someone to talk to#  when business is slow.";
                portrait[0] = 1423;
                portrait[1] = 1425;
                portrait[2] = 1425;
                portrait[3] = 1423;
                portrait[4] = 1423;
                portrait[5] = 1426;
                portrait[6] = 1426;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                talk_script[5] = scr_talking_dina;
                talk_script[6] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* You can at any time. Won't hurt#  my feelin's.";
                message[1] = "* Oh... I see. Star's tryin' to#  keep you here since it's a big#  deal and all.";
                message[2] = "* That ain't right if you're#  wantin' to go.";
                message[3] = "* I try not to infringe on#  sheriff business but I'll ask#  him 'bout it soon.";
                message[4] = "* I'm sure he means well by it!";
                portrait[0] = 1423;
                portrait[1] = 1423;
                portrait[2] = 1427;
                portrait[3] = 1423;
                portrait[4] = 1428;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 4;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* What a character! Our big and#  courageous sheriff.";
                message[1] = "* I get a feelin' he ain't as#  tough as he likes to play up.";
                message[2] = "* But then again, maybe he's just#  clumsy.";
                message[3] = "* His whole posse is a hoot. They#  frequently host parties here.";
                message[4] = "* He definitely knows the right#  kind of monsters to surround#  himself with.";
                message[5] = "* Not to mention Ceroba, his#  childhood friend. I get a kick#  out of her and Star's antics.";
                message[6] = "* When she brings her daughter into#  town, it's basically two against#  one, haha!";
                message[7] = "* Now that I think about it, it's#  been a while since I saw the#  rascal.";
                message[8] = "* We really need to get the whole#  gang together again!";
                portrait[0] = 1425;
                portrait[1] = 1423;
                portrait[2] = 1426;
                portrait[3] = 1423;
                portrait[4] = 1425;
                portrait[5] = 1423;
                portrait[6] = 1423;
                portrait[7] = 1425;
                portrait[8] = 1423;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                talk_script[0] = scr_talking_dina;
                talk_script[1] = scr_talking_dina;
                talk_script[2] = scr_talking_dina;
                talk_script[3] = scr_talking_dina;
                talk_script[4] = scr_talking_dina;
                talk_script[5] = scr_talking_dina;
                talk_script[6] = scr_talking_dina;
                talk_script[7] = scr_talking_dina;
                talk_script[8] = scr_talking_dina;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 8;
            }
        }
    }
    
    if (shop_name == "Steamworks Vendy")
    {
        if (global.sworks_flag[26] < 2)
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* Code line 327: \"If a customer is#  determined 'unauthorized', treat#  them with utmost disrespect so#  they will not buy up the#  company's snacks.\"";
                message[1] = "* My disrespectful state was#  initiated when I scanned your#  dull face.";
                message[2] = "* Bring a Steamworks employee ID#  next time to experience#  \"Hospitable Mode.\"";
                message[3] = "* Until then, you may still#  purchase items, but I will tear#  apart your self-esteem while#  you do so...";
                message[4] = "* ...";
                message[5] = "* Loser.";
                portrait[0] = 3325;
                portrait[1] = 3325;
                portrait[2] = 3325;
                portrait[3] = 3325;
                portrait[4] = 3325;
                portrait[5] = 1281;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 5;
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* What about it?";
                message[1] = "* The Steamworks are only the#  finest in monster science and#  engineering, no big deal or#  anything.";
                message[2] = "* Structures built from the#  toughest steel and the greatest#  minds, sure to stand the test#  of several millennia!";
                message[3] = "* Searching for a more advanced#  facility would be like searching#  for the corner of a circle.";
                message[4] = "* With quality machines such as#  myself at every turn, lives are#  improved every day!";
                message[5] = "* The Steamworks: Tomorrow means#  the Surface!";
                message[6] = "* ...I am not a propaganda machine.#  My creator made sure I specify#  that.";
                portrait[0] = 1281;
                portrait[1] = 3325;
                portrait[2] = 3325;
                portrait[3] = 3325;
                portrait[4] = 3325;
                portrait[5] = 131;
                portrait[6] = 863;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                talk_script[6] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 6;
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* Searching for \"Axis\" in the#  database...";
                message[1] = "* Axis - Latest Model: 014, is a#  robot built to act as a Royal#  Guard.";
                message[2] = "* Production goal: Create an army#  of Axis guard-bots to protect#  monsterkind from humanity.";
                message[3] = "* Production status...#  Discontinued.";
                message[4] = "* That is all of the information#  I have on this robot.";
                message[5] = "* If I were to be helpful, which I#  will not be, I would tell you to#  ask an engineer in the Factory#  Wing for more information.";
                message[6] = "* Where is the Factory Wing?#  I cannot tell you.#  You are unauthorized. ";
                message[7] = "* Not that I trust you to find it#  on your own since you are,#  in fact, an idiot.";
                portrait[0] = 2875;
                portrait[1] = 3325;
                portrait[2] = 3325;
                portrait[3] = 3325;
                portrait[4] = 3325;
                portrait[5] = 3325;
                portrait[6] = 1281;
                portrait[7] = 1281;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                talk_script[6] = scr_talking_vendy;
                talk_script[7] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 7;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* My snacks are up to the#  HIGHEST Steamworks standards.";
                message[1] = "* I ensure the employees'#  designated meal times are as#  enjoyable as possible.";
                message[2] = "* Because of my popularity, I often#  run out of inventory to which#  my creator restocks every Monday#  at 8:00.";
                message[3] = "* That reminds me... My last boot#  up - yesterday - was a Sunday.#  Dr. R.O. should be stopping by#  any minute now. I simply cannot#  wait.";
                message[4] = "* But none of that is your#  business, now is it?";
                portrait[0] = 131;
                portrait[1] = 131;
                portrait[2] = 3744;
                portrait[3] = 131;
                portrait[4] = 3325;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 4;
            }
        }
        else
        {
            if (buy_shop_screen_number == 1)
            {
                message[0] = "* Every robot has a creator! It#  is a law of the land after all.";
                message[1] = "* Mine is Dr. Rutherford Oscar!";
                message[2] = "* Prestigious engineer, chemist,#  botanist, architect, doctor,#  dentist, archeologist,#  geologist, zoologist, chef,";
                message[3] = "* ...tailor, musician, athlete,#  forklift operator, pilot,#  writer...";
                message[4] = "* ...salesman, mailsman, snailsman,#  beekeeper, birdkeeper, veteran,#  veterinarian, electrician,#  beautician, magician, war#  criminal, banker, pranker,#  fish-tanker, and...#";
                message[5] = "* ...3% shareholder in the#  government. ";
                message[6] = "* What a guy!";
                portrait[0] = 131;
                portrait[1] = 131;
                portrait[2] = 131;
                portrait[3] = 131;
                portrait[4] = 131;
                portrait[5] = 3744;
                portrait[6] = 131;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 5;
            }
            
            if (buy_shop_screen_number == 2)
            {
                message[0] = "* You know what they say:#  Steamworks makes the dream#  work!";
                message[1] = "* This is the place to BE for#  progress!";
                message[2] = "* Each profession has its own#  division, and I am not one for#  math! ";
                message[3] = "* Ha ha, I am only kidding of#  course! All robots are forced#  to love math!";
                message[4] = "* The Factory Wing is where home#  appliances are created for#  monsterkind to enjoy.#";
                message[5] = "* From refrigerators to washing#  machines, the assembly line#  makes it easy for monsters to#  take it easy!#";
                message[6] = "* And do not forget the second#  floor which specializes in#  smelting materials mined around#  the Underground into the#  currency known as G.#";
                message[7] = "* It's what makes the economy#  run as adequately as it does!";
                message[8] = "* From the Chemistry Wing to the#  Greenhouse, there is a job for#  everyone!";
                message[9] = "* The Steamworks: Tomorrow means#  the Surface!";
                portrait[0] = 131;
                portrait[1] = 131;
                portrait[2] = 131;
                portrait[3] = 3744;
                portrait[4] = 131;
                portrait[5] = 131;
                portrait[6] = 131;
                portrait[7] = 131;
                portrait[8] = 131;
                portrait[9] = 131;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                talk_script[5] = scr_talking_vendy;
                talk_script[6] = scr_talking_vendy;
                talk_script[7] = scr_talking_vendy;
                talk_script[8] = scr_talking_vendy;
                talk_script[9] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 9;
            }
            
            if (buy_shop_screen_number == 3)
            {
                message[0] = "* I apologize, customer. My#  hospitable code is preventing#  me from releasing any#  classified information on my#  colleagues.#";
                message[1] = "* Though we appear as#  individuals, us robots are#  quite the hivemind. All#  controlled by a station to the#  west of my current location.#";
                message[2] = "* Axis, however, is a bit of an#  exception. The 'black sheep' of#  the robotics project to put it#  lightly.#";
                message[3] = "* Can you imagine acting outside#  a governing fist that only#  gives you one purpose and no#  hope of freedom? Could NOT be#  me!#";
                message[4] = "* But if you care to know more,#  he does love to talk about#  himself so I would ask him :]";
                portrait[0] = 3325;
                portrait[1] = 3325;
                portrait[2] = 3325;
                portrait[3] = 131;
                portrait[4] = 131;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                talk_script[2] = scr_talking_vendy;
                talk_script[3] = scr_talking_vendy;
                talk_script[4] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 4;
            }
            
            if (buy_shop_screen_number == 4)
            {
                message[0] = "* Ah snacks... My purpose :]#";
                message[1] = "* I highly suggest you purchase#  some! They are made with all#  natural ingredient substitutes!";
                portrait[0] = 131;
                portrait[1] = 3744;
                point[0] = 1;
                point[1] = 1;
                talk_script[0] = scr_talking_vendy;
                talk_script[1] = scr_talking_vendy;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 1;
            }
        }
    }
    
    if (shop_name == "Hotel Shop")
    {
        if (global.party_member != -4)
        {
            if (global.hotland_flag[14] == 0)
            {
                message[0] = "* (Hey, Clover, I don't#  think these... two can#  help us. We need to be#  going.)";
                message_alt[0] = "";
                message[1] = "* Help? Help with what?";
                message_alt[1] = "* Help? Help with what?#* < We can be handy. Whatcha#  hidin'? >";
                message[2] = "* Oh, it's nothing! My#  um... kiddo here wanted#  to look at your shop.";
                message_alt[2] = "";
                message[3] = "";
                message_alt[3] = "* < That's your kid? When uh...#  when do the they get their#  feathers? >";
                message[4] = "* Late bloomer. You know#  how it is.";
                message_alt[4] = "";
                message[5] = "* Oh do we ever!";
                message_alt[5] = "* Oh do we ever!#* < Bits didn't get his mouth#  until age nine. >";
                message[6] = "* It's true!";
                message_alt[6] = "";
                message[7] = "* Well uh, it was nice to#  meet you but we have#  places to be. Isn't that#  right, child of mine?";
                message_alt[7] = "";
                message[8] = "* (Finish up your#  business, please.)";
                message_alt[8] = "";
                portrait[0] = 1492;
                portrait[1] = 3199;
                portrait[2] = 1492;
                portrait[3] = 3301;
                portrait[4] = 3199;
                portrait[5] = 3199;
                portrait[6] = 3199;
                portrait[7] = 3199;
                portrait[8] = 3199;
                portrait_alt[0] = 470;
                portrait_alt[1] = 1959;
                portrait_alt[2] = 470;
                portrait_alt[3] = 1959;
                portrait_alt[4] = 470;
                portrait_alt[5] = 1959;
                portrait_alt[6] = 470;
                portrait_alt[7] = 470;
                portrait_alt[8] = 3792;
                box_portait[0] = 338;
                box_portait[1] = -4;
                box_portait[2] = 330;
                box_portait[3] = -4;
                box_portait[4] = 320;
                box_portait[5] = -4;
                box_portait[6] = -4;
                box_portait[7] = 323;
                box_portait[8] = 323;
                box_sndfnt = 102;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                talk_script[0] = scr_talking_martlet;
                talk_script[1] = scr_talking_hotel_shopkeeper;
                talk_script[2] = scr_talking_martlet;
                talk_script[3] = scr_talking_hotel_shopkeeper;
                talk_script[4] = scr_talking_martlet;
                talk_script[5] = scr_talking_hotel_shopkeeper;
                talk_script[6] = scr_talking_hotel_shopkeeper;
                talk_script[7] = scr_talking_martlet;
                talk_script[8] = scr_talking_martlet;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 8;
                autoskip = true;
                global.hotland_flag[14] = 1;
            }
            else
            {
                message[0] = "* (We really don't have#  time to chat. Maybe#  later, okay?)";
                message_alt[0] = "";
                portrait[0] = 1492;
                portrait_alt[0] = 470;
                box_portait[0] = 320;
                point[0] = 1;
                talk_script[0] = scr_talking_martlet;
                
                for (i = 0; i < array_length_1d(message); i += 1)
                    action[i] = "Nothing";
                
                message_end = 0;
                autoskip = true;
            }
        }
        else if (buy_shop_screen_number == 1)
        {
            message[0] = "* Mr. Fluffybuns is the shining#  beacon of our nation!";
            message_alt[0] = "";
            message[1] = "* One of the main reasons we're#  so close to breaking the#  barrier and moving back up to#  the Surface.#";
            message_alt[1] = "* One of the main reasons we're#  so close to breaking the#  barrier and moving back up to#  the Surface.               #* < Yeah, he's great at stickin'#  it to the humans! >";
            message[2] = "* Hey now! ASGORE carries a huge#  weight on his shoulders, you#  know. Having to deal with all#  the unpleasantries that come#  with harvesting human SOULs#  isn't a fun job.";
            message_alt[2] = "";
            message[3] = "* Handles it like a champ,#  though!";
            message_alt[3] = "";
            message[4] = "* I wouldn't choose anyone#  else to lead us into a#  brighter future!";
            message_alt[4] = "* I wouldn't choose anyone#  else to lead us into a#  brighter future!#* < Geez, if you like him so much,#  why don't you marry the guy? >";
            message[5] = "* Oh you know I would if I#  could!";
            message_alt[5] = "";
            portrait[0] = 3199;
            portrait[1] = 1492;
            portrait[2] = 1492;
            portrait[3] = 1492;
            portrait[4] = 3199;
            portrait[5] = 3199;
            portrait_alt[0] = 470;
            portrait_alt[1] = 1959;
            portrait_alt[2] = 470;
            portrait_alt[3] = 1959;
            portrait_alt[4] = 1959;
            portrait_alt[5] = 3792;
            obj_hotel_shop_puppet.shopkeeper_sprite[3] = 3230;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            point[3] = 1;
            point[4] = 1;
            point[5] = 1;
            talk_script[0] = scr_talking_hotel_shopkeeper;
            talk_script[1] = scr_talking_hotel_shopkeeper;
            talk_script[2] = scr_talking_hotel_shopkeeper;
            talk_script[3] = scr_talking_hotel_shopkeeper;
            talk_script[4] = scr_talking_hotel_shopkeeper;
            talk_script[5] = scr_talking_hotel_shopkeeper;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
            
            message_end = 5;
        }
        
        if (buy_shop_screen_number == 2)
        {
            if (global.hotland_flag[4] == 0)
            {
                message[0] = "";
                message_alt[0] = "* < It's a stretch of land which#  happens to be hot. Done. Area#  explained. >#";
                message[1] = "* Ahh, you're doing a disservice#  to the rich history Hotland has#  to offer!";
                message_alt[1] = "* Ahh, you're doing a disservice#  to the rich history Hotland has#  to offer!#* < It's got rich history#  alright. Cost a fortune to#  build the place! Heheh. >#";
                message[2] = "* But for good reason! There are#  many impressive landmarks here#  like the Lab, the Spider House,#  UG Apartments, elevators one#  through seven, conveyor belts...#";
                message_alt[2] = "";
                message[3] = "*  ...rocks.";
                message_alt[3] = "*  ...rocks.#* < It's a stretch of land which#  happens to be hot. >";
                message[4] = "*  Yep.";
                message_alt[4] = "";
                portrait[0] = 1492;
                portrait[1] = 3301;
                portrait[2] = 1492;
                portrait[3] = 1492;
                portrait[4] = 1492;
                portrait_alt[0] = 1959;
                portrait_alt[1] = 1959;
                portrait_alt[2] = 470;
                portrait_alt[3] = 1959;
                portrait_alt[4] = 470;
                obj_hotel_shop_puppet.shopkeeper_sprite[2] = 3230;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                talk_script[1] = scr_talking_hotel_shopkeeper;
                talk_script[2] = scr_talking_hotel_shopkeeper;
                talk_script[3] = scr_talking_hotel_shopkeeper;
                talk_script[4] = scr_talking_hotel_shopkeeper;
                message_end = 4;
                global.hotland_flag[4] = 1;
                global.shop_talk[2] = "Hotland (NEW)";
            }
            else if (global.hotland_flag[4] >= 1)
            {
                message[0] = "* The Lab is located a good#  distance away from here on#  Level 1. It's where the#  brilliant Dr. Alphys conducts#  important work for the King!#";
                message_alt[0] = "";
                message[1] = "";
                message_alt[1] = "* < I have a theory that some of#  the weird food in the#  Underground stem from#  experiments gone awry in that#  building. >#";
                message[2] = "* Oh yeah? Like what?";
                message_alt[2] = "* Oh yeah? Like what?#* < Ever heard of a thing called#  \"Instant Noodles?\" It's a#  frickin' square that turns into#  edible worms when put in water! >";
                message[3] = "";
                message_alt[3] = "* < Science gone wrong! Poison!#  Has to be! >";
                message[4] = "* I've heard it's delicious.#  Have you tried it?";
                message_alt[4] = "* I've heard it's delicious.#  Have you tried it?#* < 'Course I have. I ain't#  afraid of death. >#";
                message[5] = "* Haha, sometimes I wish you#  were!#";
                message_alt[5] = "";
                message[6] = "* Anyway, reaching the Lab has#  been a pain lately. Loootta#  traffic. Almost like#  something's in the air...#  something new.#";
                message_alt[6] = "";
                message[7] = "";
                message_alt[7] = "* < Ya think? Not much has#  changed 'round here in ages.#  Trust me, I've lived through it#  all. >#";
                message[8] = "* You have? Buttons... how old#  are you?";
                message_alt[8] = "  You have? Buttons... how old#  are you?#* < I've seen war, Bits. >#";
                message[9] = "* ...#";
                message_alt[9] = "";
                message[10] = "* ...Huh.";
                message_alt[10] = "";
                portrait[0] = 1492;
                portrait[1] = 1492;
                portrait[2] = 3301;
                portrait[3] = 3301;
                portrait[4] = 3199;
                portrait[5] = 1492;
                portrait[6] = 1492;
                portrait[7] = 1492;
                portrait[8] = 3301;
                portrait[9] = 1492;
                portrait[10] = 1492;
                portrait_alt[0] = 470;
                portrait_alt[1] = 1959;
                portrait_alt[2] = 1959;
                portrait_alt[3] = 1959;
                portrait_alt[4] = 1959;
                portrait_alt[5] = 470;
                portrait_alt[6] = 470;
                portrait_alt[7] = 1959;
                portrait_alt[8] = 1959;
                portrait_alt[9] = 3792;
                portrait_alt[10] = 470;
                obj_hotel_shop_puppet.shopkeeper_sprite[0] = 3629;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                point[6] = 1;
                point[7] = 1;
                point[8] = 1;
                point[9] = 1;
                point[10] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                talk_script[1] = scr_talking_hotel_shopkeeper;
                talk_script[2] = scr_talking_hotel_shopkeeper;
                talk_script[3] = scr_talking_hotel_shopkeeper;
                talk_script[4] = scr_talking_hotel_shopkeeper;
                talk_script[5] = scr_talking_hotel_shopkeeper;
                talk_script[6] = scr_talking_hotel_shopkeeper;
                talk_script[7] = scr_talking_hotel_shopkeeper;
                talk_script[8] = scr_talking_hotel_shopkeeper;
                talk_script[9] = scr_talking_hotel_shopkeeper;
                talk_script[10] = scr_talking_hotel_shopkeeper;
                message_end = 10;
                global.hotland_flag[4] = 2;
                global.shop_talk[2] = "Hotland";
            }
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        
        if (buy_shop_screen_number == 3)
        {
            message[0] = "";
            message_alt[0] = "* < WHOA! >";
            message[1] = "*  WHOA HEY!";
            message_alt[1] = "*  WHOA HEY!#* < WIND ME UP, BITS! WIND ME UP#  RIGHT NOW! >#";
            message[2] = "* Excuse me, patron but Buttons#  doesn't appreciate that word.#  It's not considered very nice#  where he comes from.#";
            message_alt[2] = "";
            message[3] = "";
            message_alt[3] = "* < Take your FILTHY mouth to#  the Dump where it belongs or#  I'll shut you up right here and#  now you expressionless infant! >#";
            message[4] = "* Now Buttons, we talked about#  this. Finish the phrase: \"We#  don't...#";
            message_alt[4] = "* Now Buttons, we talked about#  this. Finish the phrase: \"We#  don't...#* < ...punch who hath punched\" I#  know, I know! >#";
            message[5] = "* We're working on Buttons'#  anger management. It's a slow#  process but I think he'll get#  it sooner or later.";
            message_alt[5] = "";
            message[6] = "";
            message_alt[6] = "* < I don't see what's so wrong#  with unleashing rage upon my#  enemies, I honestly don't. >#";
            message[7] = "* It's simple: Being kind to#  others leads to more profits in#  the shop.";
            message_alt[7] = "* It's simple: Being kind to#  others leads to more profits in#  the shop.#* < ...Maybe I could try a#  LITTLE harder, you're right. >";
            portrait[0] = 3301;
            portrait[1] = 3301;
            portrait[2] = 1492;
            portrait[3] = 3301;
            portrait[4] = 1492;
            portrait[5] = 1492;
            portrait[6] = 1492;
            portrait[7] = 3199;
            portrait_alt[0] = 1959;
            portrait_alt[1] = 1959;
            portrait_alt[2] = 470;
            portrait_alt[3] = 1959;
            portrait_alt[4] = 1959;
            portrait_alt[5] = 470;
            portrait_alt[6] = 1959;
            portrait_alt[7] = 1959;
            obj_hotel_shop_puppet.shopkeeper_sprite[4] = 3230;
            point[0] = 1;
            point[1] = 1;
            point[2] = 1;
            point[3] = 1;
            point[4] = 1;
            point[5] = 1;
            point[6] = 1;
            point[7] = 1;
            talk_script[0] = scr_talking_hotel_shopkeeper;
            talk_script[1] = scr_talking_hotel_shopkeeper;
            talk_script[2] = scr_talking_hotel_shopkeeper;
            talk_script[3] = scr_talking_hotel_shopkeeper;
            talk_script[4] = scr_talking_hotel_shopkeeper;
            talk_script[5] = scr_talking_hotel_shopkeeper;
            talk_script[6] = scr_talking_hotel_shopkeeper;
            talk_script[7] = scr_talking_hotel_shopkeeper;
            message_end = 7;
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
        
        if (buy_shop_screen_number == 4)
        {
            if (global.hotland_flag[5] == 0)
            {
                message[0] = "* Oh, um, heh...#\t";
                message_alt[0] = "";
                message[1] = "* That's a rather sensitive#  subject, I don't really kno-";
                message_alt[1] = "* That's a rather sensitive#  subject, I don't really kno-#* < Toriel DIVORCED the King!#  Hilarious! >#";
                message[2] = "* Buttons! The disrespect!";
                message_alt[2] = "* Buttons! The disrespect!#* < If the man's not right, the#  man's not right. >";
                message[3] = "* Oh, you're such a handful!#";
                message_alt[3] = "";
                message[4] = "* ...Am I right? Get it?#";
                message_alt[4] = "* ...Am I right? Get it?#* < Stop speaking. >";
                message[5] = "* Sorry.";
                message_alt[5] = "";
                portrait[0] = 1492;
                portrait[1] = 1492;
                portrait[2] = 3301;
                portrait[3] = 1492;
                portrait[4] = 3199;
                portrait[5] = 1492;
                portrait_alt[0] = 470;
                portrait_alt[1] = 1959;
                portrait_alt[2] = 1959;
                portrait_alt[3] = 470;
                portrait_alt[4] = 1959;
                portrait_alt[5] = 470;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                talk_script[1] = scr_talking_hotel_shopkeeper;
                talk_script[2] = scr_talking_hotel_shopkeeper;
                talk_script[3] = scr_talking_hotel_shopkeeper;
                talk_script[4] = scr_talking_hotel_shopkeeper;
                talk_script[5] = scr_talking_hotel_shopkeeper;
                message_end = 5;
                global.hotland_flag[5] = 1;
                global.shop_talk[4] = "Toriel? (NEW)";
            }
            else if (global.hotland_flag[5] >= 1)
            {
                message[0] = "* Honestly, I don't know much#  about the former Queen. Her#  whereabouts, how she's doing...#  All a mystery.#";
                message_alt[0] = "";
                message[1] = "* Of course, it isn't any of my#  business anyway so I haven't#  properly looked into it.";
                message_alt[1] = "* Of course, it isn't any of my#  business anyway so I haven't#  properly looked into it.#* < I've seen your stash of#  gossip magazines. Don't lie to#  the customer. >#";
                message[2] = "* I-I mean, one gets curious of#  course! That's all, really!";
                message_alt[2] = "* I-I mean, one gets curious of#  course! That's all, really!#* < Hey I love readin' 'em as#  much as you do! Stuff is spicy!#  >#";
                message[3] = "* Right??? To be a Flier on the#  wall during the-";
                message_alt[3] = "";
                message[4] = "* ...The um...";
                message_alt[4] = "* ...The um...#* < ... >#";
                message[5] = "* Yeah... I do wish Toriel the#  best. I'm sure she's made a#  fine life for herself.";
                message_alt[5] = "";
                portrait[0] = 1492;
                portrait[1] = 1492;
                portrait[2] = 3301;
                portrait[3] = 3199;
                portrait[4] = 1492;
                portrait[5] = 1492;
                portrait_alt[0] = 470;
                portrait_alt[1] = 1959;
                portrait_alt[2] = 1959;
                portrait_alt[3] = 470;
                portrait_alt[4] = 1959;
                portrait_alt[5] = 3792;
                point[0] = 1;
                point[1] = 1;
                point[2] = 1;
                point[3] = 1;
                point[4] = 1;
                point[5] = 1;
                talk_script[0] = scr_talking_hotel_shopkeeper;
                talk_script[1] = scr_talking_hotel_shopkeeper;
                talk_script[2] = scr_talking_hotel_shopkeeper;
                talk_script[3] = scr_talking_hotel_shopkeeper;
                talk_script[4] = scr_talking_hotel_shopkeeper;
                talk_script[5] = scr_talking_hotel_shopkeeper;
                message_end = 5;
                global.hotland_flag[5] = 2;
                global.shop_talk[4] = "Toriel?";
            }
            
            for (i = 0; i < array_length_1d(message); i += 1)
                action[i] = "Nothing";
        }
    }
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
message_draw_alt = "";

if (shop_name == "Hotel Shop")
{
    message_alt_length = string_length(message_alt[message_current]);
    
    if (message_alt_length > message_length)
        message_length = message_alt_length;
}

script_execute(scr_generate_text_counters);
