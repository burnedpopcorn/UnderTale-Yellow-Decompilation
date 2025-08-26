scr_text();
is_talking = true;
msg.sndfnt_array[0] = snd_talk_ceroba;
talk_id = room_get_name(room) + string_copy(object_get_name(global.party_member), 4, 2);

function multiple_lines()
{
    if (!ds_map_exists(global.talk_map, obj_ceroba_follower.talk_id))
        ds_map_add(global.talk_map, obj_ceroba_follower.talk_id, 0);
    
    map_entry = ds_map_find_value(global.talk_map, obj_ceroba_follower.talk_id);
}

function update_talk_val()
{
    ds_map_replace(global.talk_map, obj_ceroba_follower.talk_id, ds_map_find_value(global.talk_map, obj_ceroba_follower.talk_id) + 1);
}

with (msg)
{
    switch (room)
    {
        case rm_steamworks_01:
            message[0] = "* You better not be#  thinking about going#  back to the Dunes.";
            message[1] = "* You might've loved the#  Wild East for all I know#  but we gotta focus.";
            message[2] = "* Some other time, okay?";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_02:
            message[0] = "* Hm, I wonder what these#  monitors' purpose was?";
            message[1] = "* To greet workers on#  their way in?";
            message[2] = "* I wouldn't know 'cause#  this is my first time#  here.";
            message[3] = "* This place had a strict#  \"no visitors policy\" if#  you can believe it.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_03:
            message[0] = "* Oh hey...";
            message[1] = "* This is the area where#  I was in charge for#  three seconds.";
            message[2] = "* You're lucky I didn't#  let all that power go to#  my head.";
            prt[0] = spr_portrait_ceroba_smile_alt;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_snarky;
            break;
        
        case rm_steamworks_04:
            message[0] = "* We better hurry. Who#  knows how long this#  thing can hold up?";
            message[1] = "* Surely they replaced it#  for a reason.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_04_transition_b:
        case rm_steamworks_04_transition_c:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            break;
        
        case rm_steamworks_04b:
        case rm_steamworks_04c:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* Is this what you messed#  with to fix the#  generator?";
                message[1] = "* Surprised this#  old-fashioned tech still#  functions.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else
            {
                message[0] = "* Doesn't look like#  there's anything#  important here.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
            }
            
            break;
        
        case rm_steamworks_05:
            message[0] = "* Did you hear all those#  distant, metallic creaks#  when we entered?";
            message[1] = "* I mean, is it even safe#  to walk in here?";
            message[2] = "* The last thing our day#  needs is the floor#  giving way unexpectedly.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            break;
        
        case rm_steamworks_05b:
            ch_msg = 2;
            ch[1] = "I fell in a puddle";
            message[0] = "* Ew...";
            message[1] = "* These washers would#  make clothes dirtier by#  the looks of them.";
            message[2] = "* When did you clean#  yours last?";
            message[3] = "* Eh, close enough.";
            prt[0] = spr_portrait_ceroba_confounded;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_disapproving;
            break;
        
        case rm_steamworks_05c:
            message[0] = "* I'm not sure this is#  the right way...";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            break;
        
        case rm_steamworks_05d:
            message[0] = "* Nice vaguely ominous#  machinery they got#  there.";
            message[1] = "* Couldn't they have#  installed some lights?";
            message[2] = "* Not even expensive#  lights.";
            message[3] = "* Dangling a few Gyftmas#  strands would go a long#  way.";
            message[4] = "* Spice things up, you#  know? Festive too.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_ceroba_alt;
            prt[4] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_06:
            message[0] = "* This pink goop is#  really putting off heat!";
            message[1] = "* It must be some sort of#  coolant but...";
            message[2] = "* Why would they fill up#  so much space with#  coolant?";
            message[3] = "* I mean...";
            message[4] = "* The machinery certainly#  isn't freezing any time#  soon now, so...";
            message[5] = "* ...Job well done?";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_ceroba_neutral;
            prt[4] = spr_portrait_ceroba_alt;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            break;
        
        case rm_steamworks_07:
            message[0] = "* Let's move.";
            prt[0] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_08:
            message[0] = "* Wish there weren't so#  many broken walkways...";
            message[1] = "* Bet this place was far#  easier to navigate#  before.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_09:
            message[0] = "* Hokay, we are really#  high up...";
            message[1] = "* Ahem, I mean...";
            message[2] = "* ...What?";
            message[3] = "* God-what's with that#  look?";
            message[4] = "* I am not scared of#  heights of all things.#  Grow up.";
            message[5] = "* ...";
            prt[0] = spr_portrait_ceroba_confounded;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_nervous_smile;
            prt[3] = spr_portrait_ceroba_irked;
            prt[4] = spr_portrait_ceroba_irked;
            prt[5] = spr_portrait_ceroba_disapproving;
            break;
        
        case rm_steamworks_10:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            break;
        
        case rm_steamworks_11:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* What strange plants...";
                message[1] = "* I didn't expect#  beautiful greenery but#  white?";
                message[2] = "* Probably went overboard#  with the chemical#  experiments.";
                message[3] = "* As a monster, they're#  most likely safe but for#  all we know...";
                message[4] = "* ...you may already have#  a plethora of poisons in#  your system.";
                message[5] = "* I would suggest#  limiting your breathing#  from now on.";
                message[6] = "* Not enough that you die#  but you know, be frugal#  about it.";
                prt[0] = spr_portrait_ceroba_disapproving;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_closed_eyes;
                prt[4] = spr_portrait_ceroba_neutral;
                prt[5] = spr_portrait_ceroba_neutral;
                prt[6] = spr_portrait_ceroba_smile;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* It sure is unsettling#  in here...";
                prt[0] = spr_portrait_ceroba_disapproving;
            }
            
            break;
        
        case rm_steamworks_12:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            break;
        
        case rm_steamworks_13:
            multiple_lines();
            
            if (map_entry == 0)
            {
                instance_create_depth(0, 0, 0, obj_ceroba_follower_quote_ext);
                update_talk_val();
            }
            else
            {
                message[0] = "* Let's get out of here.";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_14:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* So Axis is completely#  artificial intelligence?";
                message[1] = "* Well... artificial at#  least.";
                message[2] = "* Still, unemotional as#  he may be...";
                message[3] = "* ...The fact he so#  closely resembles life#  is impressive.";
                prt[0] = spr_portrait_ceroba_neutral;
                prt[1] = spr_portrait_ceroba_muttering;
                prt[2] = spr_portrait_ceroba_alt;
                prt[3] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* Standing around won't#  get us to Hotland.";
                message[1] = "* Come on.";
                prt[0] = spr_portrait_ceroba_neutral;
                prt[1] = spr_portrait_ceroba_alt;
            }
        
        case rm_steamworks_15:
            message[0] = "* Keep a move on, Clover.";
            prt[0] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_16:
            message[0] = "* Bridges and rotting#  infrastructure don't#  exactly mesh well.";
            message[1] = "* Stay alert.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_17:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* Man, this place is#  huge.";
                message[1] = "* I think the government#  ought to repurpose all#  this abandoned acreage.";
                message[2] = "* I've heard that New#  Home is becoming#  overpopulated.";
                message[3] = "* Throw up some suburbs#  here or something, that#  would solve it.";
                message[4] = "* ...Maybe drain the lake#  of deadly liquid first,#  though.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_closed_eyes;
                prt[3] = spr_portrait_ceroba_alt;
                prt[4] = spr_portrait_ceroba_disapproving;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* New Home...";
                message[1] = "* Boy could Chujin rant#  about that place.";
                message[2] = "* It's a long story.";
                message[3] = "* Politics, creatives#  being creatives... You#  know.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_disapproving;
                prt[2] = spr_portrait_ceroba_closed_eyes;
                prt[3] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 2)
            {
                message[0] = "* Let's keep up the#  progress, yeah?";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_17b:
            message[0] = "* I've heard of#  piggybacking on others#  to get ahead but...";
            message[1] = "* ...Yeah, this is weird.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_17c:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* This facility is just#  full of characters, huh?";
                message[1] = "* At least they aren't#  ALL trying to kill us.";
                message[2] = "* I've thought of going#  back to turn the power#  off but...";
                message[3] = "* ...not only would that#  lock us out again,";
                message[4] = "* ...it would shut down#  any helpful bots like#  our friend outside.";
                message[5] = "* All we can do is suck#  it up and push ahead.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_disapproving;
                prt[3] = spr_portrait_ceroba_neutral;
                prt[4] = spr_portrait_ceroba_alt;
                prt[5] = spr_portrait_ceroba_closed_eyes;
                update_talk_val();
            }
            else
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_alt;
            }
            
            break;
        
        case rm_steamworks_18:
            message[0] = "* Navigating all this#  junk is a bit of a maze,#  huh?";
            message[1] = "* Even unintentionally,#  monsters can't help but#  leave puzzles behind.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_18b:
            if (global.sworks_flag[10] == 0)
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            else if (global.sworks_flag[10] < 2)
            {
                message[0] = "* Clover, you trust this#  guy?";
                message[1] = "* He's selling you flora#  he scraped off the#  walls.";
                message[2] = "* ...You don't care, do#  you?";
                message[3] = "* ...Right. ";
                message[4] = "* I do not understand#  humans.";
                prt[0] = spr_portrait_ceroba_neutral;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_disapproving;
                prt[3] = spr_portrait_ceroba_alt;
                prt[4] = spr_portrait_ceroba_alt;
            }
            else
            {
                message[0] = "* Looks like this way's a#  dead end.";
                message[1] = "* Heading west might be#  best.";
                message[2] = "* Huh. Accidental rhyme.";
                message[3] = "* Nice.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_snarky;
                prt[3] = spr_portrait_ceroba_snarky;
            }
            
            break;
        
        case rm_steamworks_19:
            message[0] = "* I won't fight if you#  wanna ride the ferry-bot#  more but...";
            message[1] = "* ...I can't say I#  enjoyed myself on it.";
            message[2] = "* You know... inches away#  from burning alive in#  glow stick juice.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_muttering;
            break;
        
        case rm_steamworks_20:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            break;
        
        case rm_steamworks_21:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* While Axis is a#  problem...";
                message[1] = "* I am glad Chujin was#  able to succeed in#  engineering.";
                message[2] = "* I have no doubt he#  inherited the craft from#  his father.";
                message[3] = "* Problem was, his father#  didn't exactly approve#  of \"innovation.\"";
                message[4] = "* Asgore's big expansion#  and the establishment of#  this facility...";
                message[5] = "* Let's just say a rift#  grew between families.";
                message[6] = "* However, Chujin was#  different. ";
                message[7] = "* Saw the benefits of#  progress, even if it#  caused friction.";
                message[8] = "* Still, he never#  discarded his lineage#  and how much it meant.";
                message[9] = "* The best of both#  worlds, hm?";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_snarky;
                prt[2] = spr_portrait_ceroba_snarky;
                prt[3] = spr_portrait_ceroba_disapproving;
                prt[4] = spr_portrait_ceroba_neutral;
                prt[5] = spr_portrait_ceroba_closed_eyes;
                prt[6] = spr_portrait_ceroba_alt;
                prt[7] = spr_portrait_ceroba_disapproving;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* Hey, um...";
                message[1] = "* Don't you have folks? ";
                message[2] = "* You know, on the#  Surface.";
                message[3] = "* They'd be pretty#  worried by now, right?";
                message[4] = "* I mean, I am in a#  similar boat so...";
                message[5] = "* ...";
                message[6] = "* Too personal? Sorry.";
                message[7] = "* Just thinking out loud.";
                prt[0] = spr_portrait_ceroba_disapproving;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_neutral;
                prt[4] = spr_portrait_ceroba_closed_eyes;
                prt[5] = spr_portrait_ceroba_neutral;
                prt[6] = spr_portrait_ceroba_alt;
                prt[7] = spr_portrait_ceroba_alt;
                update_talk_val();
            }
            else if (map_entry == 2)
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_22:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* When I'm older, I think#  I'll write a memoir.";
                message[1] = "* Name a chapter: 'The#  Time a Pissed Off Robot#  Tried to Kill Me.'";
                message[2] = "* It'll recount our great#  escape that happened#  here,";
                message[3] = "* Reveal my genius locker#  trick,";
                message[4] = "* And advise the reader#  to be in-shape before#  pissing off robots.";
                message[5] = "* Seriously, I canceled#  my gym membership last#  year.";
                message[6] = "* Lots of regret.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_closed_eyes;
                prt[2] = spr_portrait_ceroba_snarky;
                prt[3] = spr_portrait_ceroba_snarky;
                prt[4] = spr_portrait_ceroba_smile;
                prt[5] = spr_portrait_ceroba_neutral;
                prt[6] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* Better get going before#  someone or something#  finds us.";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_23:
            message[0] = "* I feel things may only#  grow more complicated#  from here.";
            message[1] = "* Keep your head high,#  Clover.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_24:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* Question...";
                message[1] = "* Have you slept at all#  since you arrived?";
                message[2] = "* If not, I don't know#  how you keep up the#  energy.";
                message[3] = "* I've had more nights#  without sleep than with#  lately.";
                message[4] = "* Takes a real toll.";
                message[5] = "* The reason isn't as#  much the company as it#  is the bed.";
                message[6] = "* ...Kanako used a#  similar one.";
                message[7] = "* Good times...";
                message[8] = "* You know, she would#  refuse to sleep until I#  tucked her in.";
                message[9] = "* After reluctantly#  bending to her#  demands...";
                message[10] = "* ...I'd kiss her#  forehead and say \"Love#  you lots.\"";
                message[11] = "* She'd challenge me with#  a cheeky \"How much?\"";
                message[12] = "* Then I'd reply...";
                message[13] = "* \"My love for you could#  shatter the barrier just#  on its own!\"";
                message[14] = "* \"That's not true!\"#  she'd say with the#  cutest grin.";
                message[15] = "* And we'd keep going...";
                message[16] = "* Back and forth until#  her eyelids grew too#  heavy to continue.";
                message[17] = "* ...";
                message[18] = "* Believe it or not, that#  same exchange happened#  every night.";
                message[19] = "* Every night until there#  wasn't anyone left to#  tuck in.";
                message[20] = "* ...";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_alt;
                prt[3] = spr_portrait_ceroba_closed_eyes;
                prt[4] = spr_portrait_ceroba_disapproving;
                prt[5] = spr_portrait_ceroba_neutral;
                prt[6] = spr_portrait_ceroba_alt;
                prt[7] = spr_portrait_ceroba_disapproving;
                prt[8] = spr_portrait_ceroba_neutral;
                prt[9] = spr_portrait_ceroba_alt;
                prt[10] = spr_portrait_ceroba_alt;
                prt[11] = spr_portrait_ceroba_alt;
                prt[12] = spr_portrait_ceroba_alt;
                prt[13] = spr_portrait_ceroba_disapproving;
                prt[14] = spr_portrait_ceroba_snarky;
                prt[15] = spr_portrait_ceroba_snarky;
                prt[16] = spr_portrait_ceroba_snarky;
                prt[17] = spr_portrait_ceroba_snarky;
                prt[18] = spr_portrait_ceroba_neutral;
                prt[19] = spr_portrait_ceroba_alt;
                prt[20] = spr_portrait_ceroba_disapproving;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_disapproving;
            }
            
            break;
        
        case rm_steamworks_25:
            message[0] = "* I appreciate them#  putting handrails here.";
            message[1] = "* Sure, we're suspended#  over a bottomless pit#  but hey...";
            message[2] = "* Making baby steps#  towards basic safety#  measures.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_smile;
            break;
        
        case rm_steamworks_26:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_27:
            message[0] = "* Geez... the#  Steamworks...";
            message[1] = "* It's all so... pitiful#  in this state.";
            message[2] = "* Abandoned potential#  hurts.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_28:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* ...";
                message[1] = "* At my old home, Chujin#  planted a garden.";
                message[2] = "* It was a work of#  compassion. Beautiful.";
                message[3] = "* Almost like a#  reflection of his own#  SOUL.";
                message[4] = "* ...";
                message[5] = "* When his health began#  to deteriorate... so did#  the garden.";
                message[6] = "* \"The Meadow\" became#  \"the Dunes.\"";
                message[7] = "* Seeing a discarded#  place like this...";
                message[8] = "* It's familiar.";
                message[9] = "* We can care so much for#  something but#  eventually...";
                message[10] = "* ...it all comes to an#  end.";
                message[11] = "* That's why we must#  forge our own path while#  we can.";
                message[12] = "* Cause trust me...";
                message[13] = "* Once the guise of good#  times is over... ";
                message[14] = "* Life is cruel.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_smile;
                prt[4] = spr_portrait_ceroba_disapproving;
                prt[5] = spr_portrait_ceroba_alt;
                prt[6] = spr_portrait_ceroba_disapproving;
                prt[7] = spr_portrait_ceroba_disapproving;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_alt;
                prt[10] = spr_portrait_ceroba_closed_eyes;
                prt[11] = spr_portrait_ceroba_alt;
                prt[12] = spr_portrait_ceroba_neutral;
                prt[13] = spr_portrait_ceroba_neutral;
                prt[14] = spr_portrait_ceroba_alt;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_29:
            message[0] = "* I can feel the Lab#  getting closer.";
            message[1] = "* Come on.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        case rm_steamworks_30:
            message[0] = "* We can't let these bots#  deter us.";
            message[1] = "* I wish we could help#  them but it's far too#  late.";
            message[2] = "* I mean, they aren't#  even real...";
            message[3] = "* Yeah... They're only#  some mix of metal and#  magic.";
            message[4] = "* So... it's alright.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_ceroba_neutral;
            prt[4] = spr_portrait_ceroba_closed_eyes;
            break;
        
        case rm_steamworks_31:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* I bet your faith in me#  is dwindling with every#  new obstacle.";
                message[1] = "* I'm just as annoyed as#  you, trust me.";
                message[2] = "* This journey should've#  been a cakewalk like I#  said.";
                message[3] = "* Even still, it's likely#  the best path to Hotland#  we could've picked.";
                message[4] = "* Places like Waterfall#  are heavily patrolled.";
                message[5] = "* Guess there's also a#  patrol here but...";
                message[6] = "* Between Axis and#  Undyne, I'll take my#  chances.";
                message[7] = "* Doesn't seem like these#  bots want to leave the#  Steamworks either.";
                message[8] = "* We won't be followed.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_alt;
                prt[3] = spr_portrait_ceroba_closed_eyes;
                prt[4] = spr_portrait_ceroba_alt;
                prt[5] = spr_portrait_ceroba_closed_eyes;
                prt[6] = spr_portrait_ceroba_neutral;
                prt[7] = spr_portrait_ceroba_alt;
                prt[8] = spr_portrait_ceroba_alt;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* Keep it up for a little#  longer, okay?";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_factory_01:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* So this is the building#  Chujin worked at...";
                message[1] = "* Hell of a commute.";
                message[2] = "* He was always a#  traveler, though.";
                message[3] = "* Back when we first met,#  I lived in the#  mountains.";
                message[4] = "* My mother had sent me#  down to Oasis Valley for#  some crops.";
                message[5] = "* On the way back, I had#  to cross a rather large#  ditch.";
                message[6] = "* While on the bridge, I#  accidentally rolled my#  ankle and fell in.";
                message[7] = "* I couldn't climb out no#  matter how hard I tried.#  ";
                message[8] = "* Even worse, the#  expensive crops were#  ruined.";
                message[9] = "* Felt like I was there#  for hours before I heard#  a jingling sound.";
                message[10] = "* A hiker approached the#  bridge holding a walking#  stick with a bell on it.";
                message[11] = "* He noticed me lying in#  my humble ditch so I#  smiled and said: \"Hey.\"";
                message[12] = "* With a kind look, he#  replied: \"You look#  awful.\"";
                message[13] = "* I was hooked.";
                message[14] = "* He then hopped down and#  tore a strip of his red#  robe to wrap my ankle.";
                message[15] = "* And... Well, I could go#  on but... yeah.";
                message[16] = "* That's just who he was.#  Caring. Even to a fault.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_disapproving;
                prt[4] = spr_portrait_ceroba_alt;
                prt[5] = spr_portrait_ceroba_alt;
                prt[6] = spr_portrait_ceroba_closed_eyes;
                prt[7] = spr_portrait_ceroba_disapproving;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_closed_eyes;
                prt[10] = spr_portrait_ceroba_neutral;
                prt[11] = spr_portrait_ceroba_smile;
                prt[12] = spr_portrait_ceroba_snarky;
                prt[13] = spr_portrait_ceroba_snarky;
                prt[14] = spr_portrait_ceroba_alt;
                prt[15] = spr_portrait_ceroba_neutral;
                prt[16] = spr_portrait_ceroba_disapproving;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                ch_msg = 3;
                ch[1] = "Starlo?";
                
                if (message_current > 4)
                {
                    ch_msg = 9;
                    ch[1] = "Ah.";
                }
                
                message[0] = "* The truth is...";
                message[1] = "* I don't think I'll ever#  be able to move on.";
                message[2] = "* You know, find someone#  else and try to be happy#  again.";
                message[3] = "* I don't think anyone#  like him is out there.";
                message[4] = "* !";
                message[5] = "* You're...";
                message[6] = "* You're serious?";
                message[7] = "* Well...";
                message[8] = "* Perhaps at one point in#  my life I considered it.";
                message[9] = "* You know, back when I#  was a naive kid, kinda#  like you.";
                message[10] = "* Hey, it's science. Your#  brain is still#  developing.";
                message[11] = "* ...I hope.";
                message[12] = "* But honestly...";
                message[13] = "* I wanted to grow up#  and... Star wouldn't#  follow.";
                message[14] = "* In the end, I think#  that was okay.";
                message[15] = "* Just look how happy he#  is versus where I ended#  up.";
                message[16] = "* He clearly chose the#  better path, heh...";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_disapproving;
                prt[4] = spr_portrait_ceroba_surprised;
                prt[5] = spr_portrait_ceroba_nervous;
                prt[6] = spr_portrait_ceroba_nervous_smile;
                prt[7] = spr_portrait_ceroba_closed_eyes;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_neutral;
                prt[10] = spr_portrait_ceroba_snarky;
                prt[11] = spr_portrait_ceroba_closed_eyes;
                prt[12] = spr_portrait_ceroba_alt;
                prt[13] = spr_portrait_ceroba_neutral;
                prt[14] = spr_portrait_ceroba_closed_eyes;
                prt[15] = spr_portrait_ceroba_disapproving;
                prt[16] = spr_portrait_ceroba_snarky;
                update_talk_val();
            }
            else
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_alt;
            }
            
            break;
        
        case rm_steamworks_factory_02:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* Not the greatest#  working conditions from#  what I can see.";
                message[1] = "* I know the job paid#  well, though.";
                message[2] = "* Of course after Chujin#  left, we needed a new#  source of income.";
                message[3] = "* I picked up a part-time#  shift at Cafe Dune to#  help us raise Kanako.";
                message[4] = "* The job was alright but#  my boss was... ";
                message[5] = "* ...Let's just say#  there's currently a#  strike going on there.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_neutral;
                prt[2] = spr_portrait_ceroba_closed_eyes;
                prt[3] = spr_portrait_ceroba_closed_eyes;
                prt[4] = spr_portrait_ceroba_alt;
                prt[5] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* We probably should've#  held onto Chujin's#  earnings but...";
                message[1] = "* He had this dream of#  building a big house for#  our family.";
                message[2] = "* Followed through with#  it too. Turned out#  beautifully.";
                message[3] = "* At first I thought the#  size was a bit overkill#  but...";
                message[4] = "* Well...";
                message[5] = "* I think he was#  insinuating a bigger#  family.";
                message[6] = "* ...";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_snarky;
                prt[3] = spr_portrait_ceroba_alt;
                prt[4] = spr_portrait_ceroba_closed_eyes;
                prt[5] = spr_portrait_ceroba_disapproving;
                prt[6] = spr_portrait_ceroba_disapproving;
                update_talk_val();
            }
            else if (map_entry == 2)
            {
                message[0] = "* ... ";
                prt[0] = spr_portrait_ceroba_alt;
            }
            
            break;
        
        case rm_steamworks_factory_03:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* Ugh, the air in this#  place is heavy.";
                message[1] = "* Smells like motor oil#  on burnt toast.";
                message[2] = "* I wasn't exactly#  expecting it to smell#  like roses but... bleh!";
                prt[0] = spr_portrait_ceroba_muttering;
                prt[1] = spr_portrait_ceroba_closed_eyes;
                prt[2] = spr_portrait_ceroba_muttering;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* ... ";
                prt[0] = spr_portrait_ceroba_alt;
            }
            
            break;
        
        case rm_steamworks_factory_04:
            multiple_lines();
            
            if (global.sworks_flag[38] < 2)
            {
                message[0] = "* Feels like we might be#  delving into some#  classified info up here.";
                message[1] = "* They sure abandoned a#  lot.";
                prt[0] = spr_portrait_ceroba_alt;
                prt[1] = spr_portrait_ceroba_neutral;
            }
            else if (map_entry == 0)
            {
                message[0] = "* There's no point in#  wallowing in what I read#  here.";
                message[1] = "* Chujin was a monster of#  secrets, I already knew#  that...";
                message[2] = "* I just wish he was more#  transparent with his#  struggles.";
                message[3] = "* I could've helped him#  through it. I#  would've...";
                message[4] = "* Maybe all this... My#  situation... It wouldn't#  be this way if I did.";
                message[5] = "* If I didn't assume#  everything was fine and#  truly paid attention I-";
                message[6] = "* ...";
                message[7] = "* I know... I just said I#  wouldn't wallow.";
                message[8] = "* Live in the present and#  plan for the future. ";
                message[9] = "* That's what Chujin#  always did, so that's#  what I must do.";
                prt[0] = spr_portrait_ceroba_closed_eyes;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_neutral;
                prt[3] = spr_portrait_ceroba_alt;
                prt[4] = spr_portrait_ceroba_disapproving;
                prt[5] = spr_portrait_ceroba_disapproving;
                prt[6] = spr_portrait_ceroba_closed_eyes;
                prt[7] = spr_portrait_ceroba_alt;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_neutral;
                update_talk_val();
            }
            else if (map_entry == 1)
            {
                message[0] = "* Come on, we have a#  mission.";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_factory_elevator:
        case rm_steamworks_factory_shaft:
            message[0] = "* ... ";
            prt[0] = spr_portrait_ceroba_alt;
            break;
        
        case rm_steamworks_32:
            multiple_lines();
            
            if (map_entry == 0)
            {
                message[0] = "* This whole adventure#  has had its share of#  twists and turns.";
                message[1] = "* If I knew what I was#  getting myself into back#  in that Saloon...";
                message[2] = "* I'd probably still do#  it. Dangerous stuff like#  this is kinda fun.";
                prt[0] = spr_portrait_ceroba_neutral;
                prt[1] = spr_portrait_ceroba_alt;
                prt[2] = spr_portrait_ceroba_snarky;
                update_talk_val();
            }
            else
            {
                message[0] = "* Keep moving, Clover.";
                prt[0] = spr_portrait_ceroba_neutral;
            }
            
            break;
        
        case rm_steamworks_33:
            message[0] = "* The Steamworks slogan,#  \"Tomorrow Means the#  Surface.\"";
            message[1] = "* When do you think that#  \"tomorrow\" will come?";
            message[2] = "* It's been \"today\" my#  entire life.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_disapproving;
            break;
        
        case rm_steamworks_34:
            message[0] = "* We need to head through#  that furnace over there#  to reach the exit.";
            message[1] = "* Just bring some water#  with you if you're#  afraid of the heat.";
            message[2] = "* Don't worry about me,#  I'm a Dunes resident.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            break;
        
        case rm_steamworks_35:
            if (global.sworks_flag[31] >= 2)
            {
                message[0] = "* ...";
                prt[0] = spr_portrait_ceroba_alt;
            }
            else
            {
                multiple_lines();
                
                if (map_entry == 0)
                {
                    message[0] = "* Was the only purpose of#  this furnace to dispose#  of garbage?";
                    message[1] = "* Why would they make it#  mandatory to walk#  through?";
                    message[2] = "* If you entered from#  Hotland...";
                    message[3] = "* The first thing you#  would smell is burning#  trash.";
                    message[4] = "* \"Welcome to the#  Steamworks! It sucks#  here!\"";
                    prt[0] = spr_portrait_ceroba_irked;
                    prt[1] = spr_portrait_ceroba_irked;
                    prt[2] = spr_portrait_ceroba_muttering;
                    prt[3] = spr_portrait_ceroba_muttering;
                    prt[4] = spr_portrait_ceroba_irked;
                    update_talk_val();
                }
                else
                {
                    message[0] = "* This is way too hot,#  even for me.";
                    message[1] = "* Let's leave please.";
                    prt[0] = spr_portrait_ceroba_disapproving;
                    prt[1] = spr_portrait_ceroba_muttering;
                }
            }
            
            break;
        
        case rm_steamworks_36:
        case rm_steamworks_37:
            message[0] = "* The moment we've waited#  for is almost here.";
            message[1] = "* Just a few steps away.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            break;
        
        default:
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            break;
    }
}
