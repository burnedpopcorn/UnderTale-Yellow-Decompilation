if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        if (cutscene_dialogue_final_flowey())
        {
            if (global.meta_flowey_fight_count != 0)
            {
                instance_create(x, y, obj_flowey_battle_screen_glitch_ending);
                scene = 10;
            }
        }
        
        with (msg)
        {
            position = 0;
            sndfnt = sndfnt_flowey;
            
            if (global.meta_flowey_fight_count == 0)
            {
                message[0] = "* Heh, I can't believe I thought#  this run might be it.";
                message[1] = "* It's no wonder we make a good#  team.";
                message[2] = "* You're a lot like me in a way.";
                message[3] = "* Too stubborn to lie down and#  accept your situation.";
                message[4] = "* Too... determined.";
                message[5] = "* You're so annoying.";
                message[6] = "* ...";
                message[7] = "* I thought this would be fun,#  and I suppose it was...";
                message[8] = "* ...For a moment.";
                message[9] = "* But I'm over it now.";
                message[10] = "* ...";
                message[11] = "* I don't think either of us feel#  like fighting for all eternity#  so...";
                message[12] = "* I'll cut you a deal.";
                message[13] = "* I'm going to reset. Back to#  when you first arrived.";
                message[14] = "* Of course, you probably won't#  remember this.";
                message[15] = "* We can be \"pals\" all over#  again. Reunited.";
                message[16] = "* If we end up in the same spot,#  I may try this again.";
                message[17] = "* But...";
                message[18] = "* If you can remember anything#  from right now...";
                message[19] = "* Try to make different decisions#  next time.";
                message[20] = "* There's a better timeline out#  there for both of us.";
                message[21] = "* Not that I care about you, this#  outcome just sucks.";
                message[22] = "* It was all in my mind!";
                message[23] = "* No one could see it, it wasn't#  threatening lives...";
                message[24] = "* Doesn't come close to what I'm#  TRULY aiming for.";
                message[25] = "* When I reach that goal, you'll#  be there to witness it.";
                message[26] = "* A spectacle like the world's#  never seen!";
                message[27] = "* So... When we meet again in#  that dingy room...";
                message[28] = "* You're gonna help me get what I#  want.";
                message[29] = "* Like it or not, I decide your#  fate now.";
                message[30] = "* Haha! If only I could see your#  reaction to all this!";
                message[31] = "* Oh, who am I kidding?";
                message[32] = "* Your face would only look like#  it always did!";
                flowey[0] = 357;
                flowey[1] = 3251;
                flowey[2] = 348;
                flowey[3] = 349;
                flowey[4] = 348;
                flowey[5] = 349;
                flowey[6] = 352;
                flowey[7] = 353;
                flowey[8] = 352;
                flowey[9] = 352;
                flowey[10] = 353;
                flowey[11] = 353;
                flowey[12] = 352;
                flowey[13] = 348;
                flowey[14] = 347;
                flowey[15] = 348;
                flowey[16] = 347;
                flowey[17] = 348;
                flowey[18] = 348;
                flowey[19] = 348;
                flowey[20] = 348;
                flowey[21] = 347;
                flowey[22] = 348;
                flowey[23] = 352;
                flowey[24] = 353;
                flowey[25] = 348;
                flowey[26] = 347;
                flowey[27] = 348;
                flowey[28] = 349;
                flowey[29] = 349;
                flowey[30] = 348;
                flowey[31] = 3251;
                flowey[32] = 348;
            }
            else if (global.meta_flowey_fight_count == 1)
            {
                message[0] = "* Here we are again.";
                message[1] = "* Wasn't as terrifying or flashy#  as it was the first time, huh?";
                message[2] = "* Cut me some slack! My#  imagination is only so vast!";
                message[3] = "* Forget it. I might as well be#  talking to a wall.";
                message[4] = "* You don't retain your memory#  after resets.";
                message[5] = "* That's why I have to explain#  the same things every time.";
                message[6] = "* Place the same savepoints,#  make the same comments...";
                message[7] = "* \"Golly, this place sure is#  ____!\" ";
                message[8] = "* \"Keep up the good work,#  buddy!\"";
                message[9] = "* \"Remember your mission!\"";
                message[10] = "* Over and over and over and#  over...";
                message[11] = "* But I notice things each run.";
                message[12] = "* You solve puzzles faster.";
                message[13] = "* You defeat monsters faster.";
                message[14] = "* You navigate the Underground#  like you have a map.";
                message[15] = "* All that, yet I know your#  memory is wiped clean.";
                message[16] = "* I can't explain it...";
                message[17] = "* ...";
                message[18] = "* Maybe at some point it will#  all culminate.";
                message[19] = "* You will finally lead me to#  what I need.";
                message[20] = "* Until then, I'll reset.";
                message[21] = "* And reset and reset and reset#  and reset and reset and reset#  and reset and";
                flowey[0] = 352;
                flowey[1] = 353;
                flowey[2] = 3692;
                flowey[3] = 353;
                flowey[4] = 352;
                flowey[5] = 352;
                flowey[6] = 353;
                flowey[7] = 3148;
                flowey[8] = 3738;
                flowey[9] = 3148;
                flowey[10] = 353;
                flowey[11] = 348;
                flowey[12] = 353;
                flowey[13] = 353;
                flowey[14] = 352;
                flowey[15] = 352;
                flowey[16] = 353;
                flowey[17] = 353;
                flowey[18] = 352;
                flowey[19] = 352;
                flowey[20] = 353;
                flowey[21] = 3738;
                
                if (message_current == 21)
                    message_timer = 1;
            }
            else if (global.meta_flowey_fight_count == 2)
            {
                message[0] = "* Why do we keep ending up here?";
                message[1] = "* Every time you make certain#  choices, it's the rooftop.";
                message[2] = "* Martlet always convinces you#  to go with her.";
                message[3] = "* Am I supposed to just... let#  that happen?";
                message[4] = "* No... I've seen you surrender#  and adapt before.";
                message[5] = "* It doesn't lead anywhere.";
                message[6] = "* So, what? Is this it? Is this#  the way it has to be?";
                message[7] = "* When I first steered you into#  the Dark Ruins...";
                message[8] = "* I could've sworn I was onto#  something.";
                message[9] = "* But it feels like your life -#  your fate - is locked in.";
                message[10] = "* As if there's a specific way#  it MUST play out.";
                message[11] = "* If that's true... what does#  that fate lead to? Ultimately?";
                message[12] = "* ...Maybe you're not the one I#  need?";
                message[13] = "* Maybe you're only a stepping#  stone? A... precursor.";
                message[14] = "* \"They come. They leave. They#  die.\"";
                message[15] = "* That's what she always said.";
                message[16] = "* ...";
                message[17] = "* There will be another.\t";
                message[18] = "* And this \"helpful\" act... It's#  not working.\t";
                message[19] = "* I need to embrace who I really#  am as soon as I'm rid of you.\t";
                message[20] = "* For now, however, I have to#  keep it up.\t";
                message[21] = "* I know what it's like to be at#  rock bottom without hope.\t";
                message[22] = "* This... while incredibly#  frustrating...\t";
                message[23] = "* This act has gotten me the#  closest I've ever been to my#  goal.\t";
                message[24] = "* It's the first time I've felt#  like I've made true progress.\t";
                message[25] = "* Sure I could try rigging a new#  puzzle...\t";
                message[26] = "* Drag you into another#  alternate path...\t";
                message[27] = "* But even I don't have the#  patience for that.\t";
                message[28] = "* I know deep down that my plan#  WILL work out.\t";
                message[29] = "* What I don't know is whether#  that plan involves you in the#  end.\t";
                message[30] = "* ...Alive, that is.\t";
                message[31] = "* But I've blabbered on enough.\t";
                message[32] = "* It's time for me to fake a#  smile through another#  excruciating journey.\t";
                message[33] = "* Don't mess it up again.";
                flowey[0] = 352;
                flowey[1] = 352;
                flowey[2] = 353;
                flowey[3] = 352;
                flowey[4] = 353;
                flowey[5] = 353;
                flowey[6] = 356;
                flowey[7] = 352;
                flowey[8] = 353;
                flowey[9] = 352;
                flowey[10] = 352;
                flowey[11] = 353;
                flowey[12] = 352;
                flowey[13] = 353;
                flowey[14] = 353;
                flowey[15] = 348;
                flowey[16] = 352;
                flowey[17] = 352;
                flowey[18] = 353;
                flowey[19] = 347;
                flowey[20] = 348;
                flowey[21] = 352;
                flowey[22] = 353;
                flowey[23] = 352;
                flowey[24] = 352;
                flowey[25] = 353;
                flowey[26] = 353;
                flowey[27] = 352;
                flowey[28] = 349;
                flowey[29] = 353;
                flowey[30] = 348;
                flowey[31] = 347;
                flowey[32] = 348;
                flowey[33] = 349;
            }
            else if (global.meta_flowey_fight_count >= 3 && !other.fun_value_check)
            {
                message[0] = "* Heh.";
                message[1] = "* Talk about a \"dead end.\"";
                message[2] = "* ...";
                message[3] = "* That's not funny.";
                message[4] = "* None of this is.";
                message[5] = "* I shouldn't be here. Not#  again.";
                message[6] = "* I mean, come on...";
                message[7] = "* Don't I have anything better#  to do?";
                flowey[0] = 348;
                flowey[1] = 347;
                flowey[2] = 353;
                flowey[3] = 352;
                flowey[4] = 353;
                flowey[5] = 353;
                flowey[6] = 356;
                flowey[7] = 353;
            }
            else if (other.fun_value_check)
            {
                message[0] = "* ...";
                message[1] = "* You know? It's strange.";
                message[2] = "* Something's off here.";
                message[3] = "* We're alone in my mind right#  now.";
                message[4] = "* It's clear that we're alone,#  right?";
                message[5] = "* Then why I can't shake it...";
                message[6] = "* In moments like this where all#  is quiet... that's when I feel#  it.";
                message[7] = "* Only since you showed up has#  it been this way.";
                message[8] = "* ...";
                message[9] = "* I have to reset again.";
                message[10] = "* I have to reset until I find#  the right path.";
                message[11] = "* Until you make the right#  choices.";
                message[12] = "* Until it...";
                flowey[0] = 352;
                flowey[1] = 353;
                flowey[2] = 353;
                flowey[3] = 353;
                flowey[4] = 352;
                flowey[5] = 352;
                flowey[6] = 352;
                flowey[7] = 353;
                flowey[8] = 352;
                flowey[9] = 353;
                flowey[10] = 353;
                flowey[11] = 352;
                flowey[12] = 353;
                
                if (message_current == 12)
                    message_timer = 1;
            }
            
            other.sprite_index = flowey[message_current];
        }
        
        break;
    
    case 2:
        cutscene_sfx_play(snd_toy_squeak, 1);
        break;
    
    case 3:
        sprite_index = spr_flowey_cloverface;
        cutscene_wait(2);
        break;
    
    case 4:
        cutscene_dialogue_final_flowey();
        
        with (msg)
        {
            position = 0;
            sndfnt = sndfnt_flowey;
            message[0] = "* Hahahahaha!!!";
            message[1] = "* Alright, alright, I'll let you#  go.";
            message[2] = "* I do need a little time to#  practice my intro monologue,#  though.";
            message[3] = "* Feel free to pace yourself#  before the big fall!";
            message[4] = "* See ya later, Clover!";
            flowey[0] = 348;
            flowey[1] = 347;
            flowey[2] = 3251;
            flowey[3] = 348;
            flowey[4] = 347;
            other.sprite_index = flowey[message_current];
        }
        
        break;
    
    case 5:
        if (sprite_index != spr_flowey_enter)
        {
            y -= 44;
            sprite_index = spr_flowey_enter;
            image_index = image_number - 1;
            image_speed = -0.3;
        }
        else if (image_index <= 0.5)
        {
            cutscene_advance();
            image_alpha = 0;
        }
        
        break;
    
    case 6:
        cutscene_wait(3);
        break;
    
    case 7:
        cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
        cutscene_advance();
        break;
    
    case 8:
        draw_alpha_white = audio_sound_get_track_position(cymbal_sound) / audio_sound_length(cymbal_sound);
        
        if (draw_alpha_white >= 0.99)
        {
            draw_alpha_white = 1;
            scene++;
        }
        
        break;
    
    case 9:
        cutscene_wait(5);
        break;
    
    case 10:
        if (!instance_exists(obj_flowey_battle_screen_glitch_ending))
        {
            room = rm_credits;
            persistent = true;
            scene++;
        }
        
        break;
    
    case 11:
        draw_alpha_white -= 0.1;
        
        if (draw_alpha_white <= 0)
            instance_destroy();
        
        break;
}

if (instance_exists(obj_heart_battle_fighting_yellow_final))
    obj_heart_battle_fighting_yellow_final.y = lerp(obj_heart_battle_fighting_yellow_final.y, 440, 0.15);
