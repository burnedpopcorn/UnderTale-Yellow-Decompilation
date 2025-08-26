scr_text();
is_talking = true;
msg.sndfnt_array[0] = snd_talk_martlet;
talk_id = room_get_name(room) + string_copy(object_get_name(global.party_member), 4, 2);

function multiple_lines()
{
    if (!ds_map_exists(global.talk_map, talk_id))
        ds_map_add(global.talk_map, talk_id, 0);
}

function update_talk_val()
{
    ds_map_replace(global.talk_map, talk_id, ds_map_find_value(global.talk_map, talk_id) + 1);
}

if (global.dunes_flag[41] == 0)
{
    switch (room)
    {
        case rm_dunes_10:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Bet you had a few#  run-ins on your journey,#  right?\t";
                    message[1] = "* An area like this... I#  wonder what kind of#  battle music they had?\t";
                    message[2] = "* Oh, right. You may not#  know...\t";
                    message[3] = "* There's this phenomenon#  with monsters.\t";
                    message[4] = "* When we focus while in#  a battle, melodic#  vibrations echo from us.";
                    message[5] = "* It's almost like it's#  in our heads but... \t";
                    message[6] = "* It's possible the#  opponent hears it as#  well.\t";
                    message[7] = "* I always hear super#  dramatic music when I#  fight!\t";
                    message[8] = "* It may not fit me to be#  honest... but it's the#  feeling I strive for!\t";
                    message[9] = "* I wonder...\t";
                    message[10] = "* Could humans find their#  own melody if determined#  enough?\t";
                    message[11] = "* An interesting thought!";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_regular;
                    prt[2] = spr_martlet_head_melancholic;
                    prt[3] = spr_martlet_head_confused;
                    prt[4] = spr_martlet_head_regular;
                    prt[5] = spr_martlet_head_wondering;
                    prt[6] = spr_martlet_head_regular;
                    prt[7] = spr_martlet_head_determined;
                    prt[8] = spr_martlet_head_determined;
                    prt[9] = spr_martlet_head_confused;
                    prt[10] = spr_martlet_head_questioning;
                    prt[11] = spr_martlet_head_content;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* With me around, you#  shouldn't have to worry#  about fights anymore!\t";
                    message[1] = "* It isn't because they#  don't like me...\t";
                    message[2] = "* It's that monsters#  typically don't attack#  other monsters.";
                    message[3] = "* ‘Least I hope that's#  the reason...";
                    message[4] = "* I'm personable...#  right?\t";
                    message[5] = "* Let's just say \"yes\" to#  avoid being anxious the#  rest of today.";
                    prt[0] = spr_martlet_head_content;
                    prt[1] = spr_martlet_head_melancholic;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_confused;
                    prt[4] = spr_martlet_head_melancholic;
                    prt[5] = spr_martlet_head_content;
                }
            }
            
            break;
        
        case rm_dunes_36:
            with (msg)
            {
                message[0] = "* ...";
                prt[0] = spr_martlet_head_moderate;
            }
            
            break;
        
        case rm_dunes_35:
            with (msg)
            {
                message[0] = "* I have no clue where#  we're headed.";
                message[1] = "* I'm so unfamiliar with#  this place, it might as#  well be the Surface.";
                message[2] = "* Doing a great job of#  helping you, I know.";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_melancholic;
            }
            
            break;
        
        case rm_dunes_35b:
            with (msg)
            {
                message[0] = "* Geez, I was hoping it'd#  be cooler in here but#  nope!";
                prt[0] = spr_martlet_head_moderate;
            }
            
            break;
        
        case rm_dunes_34:
            with (msg)
            {
                message[0] = "* Hmm... there's gotta be#  a way to Hotland#  somewhere.";
                prt[0] = spr_martlet_head_confused;
            }
            
            break;
        
        case rm_dunes_32:
            with (msg)
            {
                message[0] = "* Man, it is h-o-t HOT!#  I'm starting to miss#  Snowdin!";
                message[1] = "* You doin' okay in those#  heavy clothes? I'd pass#  out by now.";
                prt[0] = spr_martlet_head_nervous;
                prt[1] = spr_martlet_head_nervous;
            }
            
            break;
        
        case rm_dunes_30:
            with (msg)
            {
                message[0] = "* There's so much to see#  in this town!\t";
                message[1] = "* I'm getting some strong#  Honeydew Resort vibes.\t";
                message[2] = "* After I get tired of#  keeping the peace every#  day, I may move here.\t";
                message[3] = "* A mighty fine#  retirement plan, yeah?";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_happy;
                prt[2] = spr_martlet_head_happy;
                prt[3] = spr_martlet_head_content;
            }
            
            break;
        
        case rm_dunes_30_house_1:
            with (msg)
            {
                message[0] = "* I apologize for not#  talking with the#  residents more.";
                message[1] = "* With my bird brain, who#  knows what might slip#  out!";
                prt[0] = spr_martlet_head_melancholic;
                prt[1] = spr_martlet_head_nervous_smile;
            }
            
            break;
        
        case rm_dunes_30_house_2:
            with (msg)
            {
                message[0] = "* Look at that little#  thing.    ";
                message[1] = "* Trying its best to grow#  big and strong I bet!";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_happy;
            }
            
            break;
        
        case rm_dunes_30_house_3:
            with (msg)
            {
                message[0] = "* Ooo! I bet I can tell#  your fortune, Clover!";
                message[1] = "* Yeess... Hmm...";
                message[2] = "* I see you with a brand#  new hat...";
                message[3] = "* One that just SCREAMS#  \"I'm a human.\"";
                message[4] = "* Kidding, by the way.#  Your hat's plenty cool#  as is!";
                prt[0] = spr_martlet_head_happy;
                prt[1] = spr_martlet_head_suspiciouser;
                prt[2] = spr_martlet_head_suspicious;
                prt[3] = spr_martlet_head_surprised;
                prt[4] = spr_martlet_head_content;
            }
            
            break;
        
        case rm_dunes_31:
            with (msg)
            {
                message[0] = "* The architecture here#  is fascinating!";
                message[1] = "* Back home, almost#  everything is made from#  wood.";
                message[2] = "* Maybe I should start#  building with stone?";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_questioning;
            }
            
            break;
        
        case rm_dunes_30b:
            with (msg)
            {
                message[0] = "* Hey... I think I know#  who lives here.";
                message[1] = "* Guess she doesn't want#  visitors.";
                message[2] = "* Makes sense, poor#  thing.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_sad;
            }
            
            break;
        
        case rm_dunes_28:
            with (msg)
            {
                message[0] = "* Aww, the playground is#  super cute!";
                message[1] = "* I should build one of#  these back home for the#  school!";
                prt[0] = spr_martlet_head_content;
                prt[1] = spr_martlet_head_regular;
            }
            
            break;
        
        case rm_dunes_29b:
            with (msg)
            {
                message[0] = "* Can't say this is how I#  thought my day would end#  up.\t";
                message[1] = "* Meeting a human,#  visiting a new place...\t";
                message[2] = "* Couple checks off the#  bucket list for sure.";
                prt[0] = spr_martlet_head_melancholic;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_regular;
            }
            
            break;
        
        case rm_dunes_28b:
            with (msg)
            {
                message[0] = "* Phew, I'm getting#  thirsty.";
                message[1] = "* I typically bring a#  canteen when I travel#  but...";
                message[2] = "* ...I kinda left all of#  my belongings at my#  station.";
                prt[0] = spr_martlet_head_disappointed;
                prt[1] = spr_martlet_head_downer;
                prt[2] = spr_martlet_head_sad;
            }
            
            break;
        
        case rm_dunes_28c:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    talker[0] = obj_martlet_follower;
                    talker[2] = obj_miner_giftshopper;
                    talker[3] = obj_martlet_follower;
                    talker[4] = obj_miner_giftshopper;
                    talker[5] = obj_martlet_follower;
                    sndfnt_array[0] = snd_talk_martlet;
                    sndfnt_array[2] = snd_talk_default;
                    sndfnt_array[3] = snd_talk_martlet;
                    sndfnt_array[4] = snd_talk_default;
                    sndfnt_array[5] = snd_talk_martlet;
                    message[0] = "* Excuse me, sir?     ";
                    message[1] = "* Shouldn't a gift shop#  have, ya know, gifts?";
                    message[2] = "* DO YOU SEE THOSE#  SHELVES?";
                    message[3] = "* I do.";
                    message[4] = "* YEAH, THOUGHT SO.#";
                    message[5] = "* ...What?";
                    prt[0] = spr_martlet_head_confused;
                    prt[1] = spr_martlet_head_questioning;
                    prt[3] = spr_martlet_head_moderate;
                    prt[5] = spr_martlet_head_unamused;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Not exactly digging the#  vibe of this place.    ";
                    message[1] = "* I'm ready to leave when#  you are.";
                    prt[0] = spr_martlet_head_unamused;
                    prt[1] = spr_martlet_head_wondering;
                }
            }
            
            break;
        
        case rm_dunes_25:
        case rm_dunes_25b:
        case rm_dunes_26:
        case rm_dunes_27:
            talk_id = "rm_dunes_25" + string_copy(object_get_name(global.party_member), 4, 2);
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What a breathtaking#  view...    ";
                    message[1] = "* Isn't it fascinating#  how large the#  Underground is?    ";
                    message[2] = "* Feels almost too large#  sometimes.    ";
                    message[3] = "* I may seem audacious#  but I'm a little uneasy#  right now, heh.    ";
                    message[4] = "* Bit of a homebody...#  Like to stay where it's#  familiar.    ";
                    message[5] = "* Focus on my hobbies and#  job, ya know...    ";
                    message[6] = "* But I'm working on it! #    ";
                    message[7] = "* Not doing great but#  working on it!";
                    prt[0] = spr_martlet_head_surprised;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_wondering;
                    prt[5] = spr_martlet_head_melancholic;
                    prt[6] = spr_martlet_head_content;
                    prt[7] = spr_martlet_head_nervous_smile;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Just saying, last time#  I stepped out and took a#  risk...    ";
                    message[1] = "* I ended up regretting#  it SO MUCH you wouldn't#  believe!    ";
                    message[2] = "* But I guess it taught#  me that growth is#  possible.    ";
                    message[3] = "* Good growth, bad#  growth, don't know yet. #    ";
                    message[4] = "* I'm still not even used#  to normal adult#  responsibilities!    ";
                    message[5] = "* Cut me some slack,#  waking up before noon#  sucks!";
                    prt[0] = spr_martlet_head_wondering;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_regular;
                    prt[3] = spr_martlet_head_wondering;
                    prt[4] = spr_martlet_head_nervous_smile;
                    prt[5] = spr_martlet_head_suspiciouser;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 2)
            {
                with (msg)
                {
                    message[0] = "* Guess I'm lucky my job#  involves something I#  like doing.    ";
                    message[1] = "* I could be working here#  at the Mines or even#  worse... retail!    ";
                    message[2] = "* Glass half full,#  Clover. Glass half full.";
                    prt[0] = spr_martlet_head_regular;
                    prt[1] = spr_martlet_head_spook;
                    prt[2] = spr_martlet_head_content;
                }
            }
            
            break;
        
        case rm_dunes_12:
        case rm_dunes_12b:
        case rm_dunes_13:
        case rm_dunes_14:
        case rm_dunes_15:
        case rm_dunes_16:
        case rm_dunes_17:
        case rm_dunes_19:
        case rm_dunes_20:
        case rm_dunes_22:
        case rm_dunes_23:
            talk_id = "rm_dunes_12" + string_copy(object_get_name(global.party_member), 4, 2);
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Oh my gosh! Look at all#  the gemstones in the#  walls!";
                    message[1] = "* I might have to sneak a#  few outta here.";
                    message[2] = "* Don't rat me out!";
                    prt[0] = spr_martlet_head_happy;
                    prt[1] = spr_martlet_head_smirk;
                    prt[2] = spr_martlet_head_wink;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* We should probably find#  a way to Hotland soon,#  yeah?";
                    prt[0] = spr_martlet_head_content;
                }
            }
            
            break;
        
        case rm_dunes_08b:
            multiple_lines();
            
            if (instance_exists(obj_dunes_08b_room_controller) && global.dunes_flag[3] > 0)
            {
                with (msg)
                {
                    message[0] = "* (Hey, Clover. I know#  this fella.)";
                    message[1] = "* (He's set up shop#  around Snowdin quite a#  bit.)";
                    message[2] = "* (Always seemed a little#  shady if you ask me...#  pun intended.)";
                    prt[0] = spr_martlet_head_suspiciouser;
                    prt[1] = spr_martlet_head_suspicious;
                    prt[2] = spr_martlet_head_suspiciouser;
                }
                
                update_talk_val();
            }
            else
            {
                with (msg)
                {
                    message[0] = "* Looks like this is a#  dead end, huh.";
                    prt[0] = spr_martlet_head_regular;
                }
            }
            
            break;
        
        case rm_dunes_01:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What a terrible#  sight...";
                    message[1] = "* Ava was such a beauty#  and look at her now...";
                    message[2] = "* A hundred smaller#  beauties.";
                    message[3] = "* ...";
                    message[4] = "* I should... ";
                    message[5] = "* No, nevermind. We don't#  have time. Let's go.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_downer;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_sad;
                    prt[4] = spr_martlet_head_sad;
                    prt[5] = spr_martlet_head_moderate;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Let's push ahead,#  Clover.";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
        
        default:
            with (msg)
            {
                message[0] = "* We should probably get#  going.";
                prt[0] = spr_martlet_head_moderate;
            }
            
            break;
    }
}

if (global.dunes_flag[41] >= 1)
{
    switch (room)
    {
        case rm_dunes_36:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* This is going to be#  redundant,\t";
                    message[1] = "* But I'm sorry for all#  of my apologies.\t";
                    message[2] = "* It feels like all I've#  done since we met is#  screw up.\t";
                    message[3] = "* I'm thankful that#  you're tough and aren't,#  ya know, dead.\t";
                    message[4] = "* But I shouldn't have#  been so scatterbrained#  in the first place.\t";
                    message[5] = "* That changes here!\t";
                    message[6] = "* Whatever awaits us,#  I'll do my best to help!";
                    prt[0] = spr_martlet_head_wondering;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_downer;
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_downer;
                    prt[5] = spr_martlet_head_regular;
                    prt[6] = spr_martlet_head_content;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Trek on, Clover!";
                    prt[0] = spr_martlet_head_regular;
                }
            }
            
            break;
        
        case rm_dunes_34:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I want you to know that#  you can trust me.";
                    message[1] = "* Some monsters haven't#  been incredibly#  accommodating to you.\t";
                    message[2] = "* Me included...\t";
                    message[3] = "* But please don't let#  those experiences warp#  your perception of us!\t";
                    message[4] = "* Especially the#  potential backstabbing#  we're dealing with now.\t";
                    message[5] = "* Our history with#  humanity is a harsh and#  complicated one.\t";
                    message[6] = "* Not everyone takes it#  well.";
                    prt[0] = spr_martlet_head_regular;
                    prt[1] = spr_martlet_head_melancholic;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_downer;
                    prt[4] = spr_martlet_head_sad;
                    prt[5] = spr_martlet_head_downer;
                    prt[6] = spr_martlet_head_disappointed;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_downer;
                }
            }
            
            break;
        
        case rm_dunes_32:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Gosh...";
                    message[1] = "* I don't know if I'm#  ready for this.";
                    message[2] = "* Way to get yourself#  into a mess, Martlet.\t";
                    message[3] = "* Bang up job.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_nervous;
                    prt[3] = spr_martlet_head_nervous;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_sad;
                }
            }
            
            break;
        
        case rm_dunes_31:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* You doing alright?\t";
                    message[1] = "* Sure look like you#  are.\t";
                    message[2] = "* I can only hope your#  confidence rubs off on#  me.";
                    message[3] = "* Just a smidge.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_melancholic;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_melancholic;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_melancholic;
                }
            }
            
            break;
        
        case rm_dunes_30:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Until now, I haven't#  done any real#  investigations.\t";
                    message[1] = "* Though, one time I did#  have to look into a#  Snowdin gang.\t";
                    message[2] = "* I heard reports they#  were harassing visitors#  so I checked it out.\t";
                    message[3] = "* I didn't find a gang#  but a few cups did make#  me play a game.\t";
                    message[4] = "* They moved so fast it#  made me dizzy! I#  couldn't beat ‘em!\t";
                    message[5] = "* They had a name... What#  was it? \"The Scrufflers\"#  or something like that.\t";
                    message[6] = "* Wait... Gangs have#  names!\t";
                    message[7] = "* They were probably#  friends with the other#  gang!\t";
                    message[8] = "* Gah-I should've pieced#  it together sooner!";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_confused;
                    prt[3] = spr_martlet_head_questioning;
                    prt[4] = spr_martlet_head_confounded;
                    prt[5] = spr_martlet_head_questioning;
                    prt[6] = spr_martlet_head_surprised;
                    prt[7] = spr_martlet_head_angry;
                    prt[8] = spr_martlet_head_confounded;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Almost there...";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
        
        case rm_dunes_30b:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Here we go...\t";
                    message[1] = "* No turning back...";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_nervous;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_sad;
                }
            }
            
            break;
        
        case rm_dunes_30c:
            with (msg)
            {
                message[0] = "* ...";
                prt[0] = spr_martlet_head_sad;
            }
            
            break;
        
        case rm_mansion_entrance:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Talk about#  extravagant!\t";
                    message[1] = "* This must've taken#  years to build...\t";
                    message[2] = "* Well, if it were done#  traditionally.";
                    message[3] = "* Maybe magic had#  something to do with it?";
                    prt[0] = spr_martlet_head_surprised;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_melancholic;
                    prt[3] = spr_martlet_head_confused;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Guess we should choose#  a direction.";
                    message[1] = "* East, west, up to you.";
                    message[2] = "* We'll find what we need#  eventually.";
                    prt[0] = spr_martlet_head_questioning;
                    prt[1] = spr_martlet_head_regular;
                    prt[2] = spr_martlet_head_regular;
                }
            }
            
            break;
        
        case rm_mansion_hallway_west:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* This place is a little#  eerie when no one's#  around.\t";
                    message[1] = "* Long, dim halls... dust#  filling each beam of#  light...\t";
                    message[2] = "* Regular dust that is...";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_moderate;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover.";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
        
        case rm_mansion_kanakos_room:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I'm a bit surprised#  Kanako wanted this#  room.\t";
                    message[1] = "* It's pretty isolated#  from everything else.\t";
                    message[2] = "* Must have some of her#  mother's independence,#  huh?";
                    prt[0] = spr_martlet_head_wondering;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_melancholic;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover.";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
        
        case rm_mansion_office:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Keep an eye out for#  anything out of the#  ordinary.";
                    prt[0] = spr_martlet_head_wondering;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Anything seem off to#  you yet?";
                    message[1] = "* Yeah... me neither.";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_wondering;
                }
            }
            
            break;
        
        case rm_mansion_hallway_west_2:
            with (msg)
            {
                message[0] = "* ...";
                prt[0] = spr_martlet_head_wondering;
            }
            
            break;
        
        case rm_mansion_hallway_east:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* Hopefully this place#  doesn't stay abandoned#  for too long.";
                    message[1] = "* It'd be a huge shame to#  let it waste away.";
                    prt[0] = spr_martlet_head_sad;
                    prt[1] = spr_martlet_head_downer;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* Keep on looking,#  Clover.";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
        
        case rm_mansion_bedroom:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* I don't see anything#  concerning here.\t";
                    message[1] = "* It's gotta be somewhere#  else.";
                    prt[0] = spr_martlet_head_wondering;
                    prt[1] = spr_martlet_head_moderate;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* We gotta be getting#  closer, right?";
                    prt[0] = spr_martlet_head_downer;
                }
            }
            
            break;
        
        case rm_mansion_hallway_east_2:
            with (msg)
            {
                message[0] = "* ...";
                prt[0] = spr_martlet_head_wondering;
            }
            
            break;
        
        case rm_mansion_kotatsu:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* You still doing okay?\t";
                    message[1] = "* I know this whole thing#  is a lot to process...\t";
                    message[2] = "* Actually, me pointing#  that out doesn't help.\t";
                    message[3] = "* I'm gonna stop talking.";
                    prt[0] = spr_martlet_head_melancholic;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_melancholic;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_wondering;
                }
            }
            
            break;
        
        case rm_mansion_study:
            multiple_lines();
            
            if (ds_map_find_value(global.talk_map, talk_id) == 0)
            {
                with (msg)
                {
                    message[0] = "* What the...";
                    prt[0] = spr_martlet_head_surprised;
                }
                
                update_talk_val();
            }
            else if (ds_map_find_value(global.talk_map, talk_id) == 1)
            {
                with (msg)
                {
                    message[0] = "* ...";
                    prt[0] = spr_martlet_head_nervous;
                }
            }
            
            break;
        
        case rm_hotland_roof:
            with (msg)
            {
                message[0] = "* There's no more time to#  waste!";
                message[1] = "* We got this!";
                prt[0] = spr_martlet_head_determined;
                prt[1] = spr_martlet_head_determined;
            }
            
            break;
        
        case rm_hotland_03b:
            with (msg)
            {
                message[0] = "* Sorry if the meet#  location was hard to#  find.";
                message[1] = "* Needed a private#  vantage point.";
                message[2] = "* I also forgot that not#  everyone can fly...";
                prt[0] = spr_martlet_head_nervous_smile;
                prt[1] = spr_martlet_head_sad;
                prt[2] = spr_martlet_head_questioning;
            }
            
            break;
        
        case rm_hotland_03:
            with (msg)
            {
                message[0] = "* This is a busy place so#  we should keep to#  ourselves.";
                message[1] = "* No need to raise#  suspicion.";
                message[2] = "* It's a normal day in#  the Underground. Yep.";
                message[3] = "* ...Let's just hope it#  ends normally too.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_regular;
                prt[3] = spr_martlet_head_sad;
            }
            
            break;
        
        case rm_hotland_complex_1:
            with (msg)
            {
                message[0] = "* Need to take that#  elevator to New Home.";
                message[1] = "* ...If it isn't#  occupied, that is.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_wondering;
            }
            
            break;
        
        case rm_newhome_01:
            with (msg)
            {
                message[0] = "* Here we are... the big#  city.";
                message[1] = "* Now that I think about#  it...";
                message[2] = "* I'm not sure a human#  has ever walked these#  streets.";
                message[3] = "* Who's to say, though?";
                message[4] = "* Not a whole lot is#  known about those#  previous treks.";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_moderate;
                prt[3] = spr_martlet_head_regular;
                prt[4] = spr_martlet_head_wondering;
            }
            
            break;
        
        case rm_newhome_02:
            with (msg)
            {
                message[0] = "* Huh...";
                message[1] = "* I expected a lot more#  citizens.";
                message[2] = "* Little eerie when no#  one's around.";
                prt[0] = spr_martlet_head_confused;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_downer;
            }
            
            break;
        
        case rm_newhome_03:
            with (msg)
            {
                message[0] = "* ...";
                prt[0] = spr_martlet_head_sad;
            }
            
            break;
        
        case rm_castle_01:
            with (msg)
            {
                message[0] = "* So this is the#  Castle...";
                message[1] = "* Never been inside#  before.";
                message[2] = "* Nerve-wracking stuff.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_wondering;
                prt[2] = spr_martlet_head_downer;
            }
            
            break;
        
        case rm_castle_02:
            with (msg)
            {
                message[0] = "* ...\t";
                message[1] = "* ...";
                message[2] = "* For once, I'm at a loss#  for words.";
                prt[0] = spr_martlet_head_surprised;
                prt[1] = spr_martlet_head_moderate;
                prt[2] = spr_martlet_head_moderate;
            }
            
            break;
        
        case rm_castle_03:
            with (msg)
            {
                message[0] = "* This is it, Clover.";
                message[1] = "* A few more steps and#  you're free.";
                prt[0] = spr_martlet_head_moderate;
                prt[1] = spr_martlet_head_melancholic;
            }
            
            break;
        
        case rm_castle_05:
            with (msg)
            {
                message[0] = "* ...";
                message[1] = "* Maybe we shouldn't be#  in this room...";
                prt[0] = spr_martlet_head_disappointed;
                prt[1] = spr_martlet_head_downer;
            }
            
            break;
        
        default:
            with (msg)
            {
                if (global.hotland_flag[1] > 0)
                {
                    message[0] = "* Let's keep going,#  Clover!";
                    prt[0] = spr_martlet_head_regular;
                }
                else
                {
                    message[0] = "* We should probably get#  going.";
                    prt[0] = spr_martlet_head_moderate;
                }
            }
            
            break;
    }
}
