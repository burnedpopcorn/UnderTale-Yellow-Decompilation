var overlay_alpha_default;

if (live_call())
    return global.live_result;

overlay_image_index += 0.3;

if (overlay_image_index > 27)
    overlay_image_index -= 27;

switch (scene)
{
    case 0:
        scene_change = true;
        break;
    
    case 1:
        cutscene_music_start(589);
        break;
    
    case 2:
        sprite_index = spr_chujin_default_idle;
        cutscene_wait(5);
        break;
    
    case 3:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            message[0] = "     Greetings, this is Chujin.";
            message[1] = "   I don't have much time these#   days for a written journal so#   I opted for video.";
            message[2] = "    I have no idea who will view#    these, if anyone, but I see it#    best to document my work.";
            message[3] = " That is all for now. Signing off.";
            prt[0] = 3563;
            prt[1] = 908;
            prt[2] = 908;
            prt[3] = 3563;
        }
        
        break;
    
    case 4:
        scene_change = true;
        break;
    
    case 5:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            message[0] = "         This is Chujin...";
            message[1] = "  Today I traveled to Snowdin with#  my daughter on casual business.";
            message[2] = "  While I was busy, Kanako wandered#  off to play with a resident.";
            message[3] = "     That's when it happened...";
            message[4] = "A few panicked townsfolk ran up to#me saying that a human had entered#the area.";
            message[5] = "  This human... they attacked the#  monster Kanako was with. ";
            message[6] = "  She was so close... She could've#  been next.";
            message[7] = "  No one was there to protect her...#  Not even me...";
            message[8] = "  ...";
            message[9] = "  I don't understand... I just#  don't understand!";
            message[10] = " Humankind already won by trapping# us down here yet they keep twisting# the knife!";
            message[11] = "  This cannot continue any longer!";
            message[12] = "   As of today, I'm looking into#   stopping this perpetual injustice#   once and for all.";
            prt[0] = 3563;
            prt[1] = 908;
            prt[2] = 2129;
            prt[3] = 3392;
            prt[4] = 629;
            prt[5] = 629;
            prt[6] = 2782;
            prt[7] = 3194;
            prt[8] = 3414;
            prt[9] = 2782;
            prt[10] = 3194;
            prt[11] = 908;
            prt[12] = 3563;
        }
        
        break;
    
    case 6:
        scene_change = true;
        break;
    
    case 7:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            message[0] = "  This is Chujin with unfortunate#  news...";
            message[1] = " I was... fired from my engineering# position.";
            message[2] = "   I poured my all into my project#   but it wasn't enough!";
            message[3] = "  The programming was buggy but I#  know I could've ironed it out with#  a few more iterations!";
            message[4] = "   Why am I punished for trying to#   take our struggle seriously!? ";
            message[5] = "  ...I feel as if I'm the only one#  who hasn't forgotten or chosen to  #  live in ignorance...";
            message[6] = "  ...";
            message[7] = "   I told Ceroba I was retiring.#   Can't let her think less of me.";
            message[8] = "  But enough of that... it's in the#  past. ";
            message[9] = "    I must live in the present#    and plan for the future.";
            message[10] = "   Prove I can save monsterkind...#   another way.";
            prt[0] = 3563;
            prt[1] = 908;
            prt[2] = 3392;
            prt[3] = 3392;
            prt[4] = 2782;
            prt[5] = 3194;
            prt[6] = 629;
            prt[7] = 3563;
            prt[8] = 908;
            prt[9] = 908;
            prt[10] = 3563;
        }
        
        break;
    
    case 8:
        scene_change = true;
        break;
    
    case 9:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            message[0] = "          This is Chujin.";
            message[1] = " After years of research, I've made# a breakthrough!";
            message[2] = "  Boss Monsters... They may be the#  key to monsterkind's survival.";
            message[3] = "I was able to reach this conclusion#because I... ";
            message[4] = " ...I carry the Boss Monster gene.";
            message[5] = "This means my SOUL is much stronger#than that of other monsters.";
            message[6] = "  More importantly, Boss Monsters#  are immortal until they produce#  offspring.";
            message[7] = " Right now, monsterkind is few in# numbers compared to humanity but... ";
            message[8] = "  ...What if anyone could become#  a Boss Monster like me? Like...#  Kanako?";
            message[9] = "  As a nation, an army, we could#  finally possess enough power to#  take the Surface back!";
            message[10] = "  My theory for this involves the#  fusion of a human SOUL and a#  Boss Monster SOUL.";
            message[11] = "   From that, a serum would be#   extracted which could transform#   any average monster.";
            message[12] = "  ...Unfortunately, I have not#  garnered enough proof that said#  serum is possible.";
            message[13] = "     I must conduct more tests.";
            prt[0] = 908;
            prt[1] = 3563;
            prt[2] = 629;
            prt[3] = 629;
            prt[4] = 3392;
            prt[5] = 2129;
            prt[6] = 908;
            prt[7] = 908;
            prt[8] = 3563;
            prt[9] = 629;
            prt[10] = 3563;
            prt[11] = 908;
            prt[12] = 2129;
            prt[13] = 629;
        }
        
        break;
    
    case 10:
        scene_change = true;
        break;
    
    case 11:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            chujin_tapes_effects = true;
            message[0] = "      This... This is Chujin.";
            message[1] = "   I was worried this might happen.#   Science is a dangerous game.";
            message[2] = "  Rather foolishly, I experimented#  on myself... several times.";
            message[3] = "Over and over, the subject rejected#the fusion, and I think I know why.";
            message[4] = "                ...";
            message[5] = "          I'll be direct... ";
            message[6] = "  My SOUL has deteriorated and I#  don't know how much longer I have.";
            message[7] = "   However... I believe my theory#   holds stronger than it ever did.";
            message[8] = "   This is a message to my dear#   Ceroba:";
            message[9] = "   This research is up to you. No#   one else would listen.";
            message[10] = "  After I'm gone... look for the#  next human who falls down here.";
            message[11] = "       Someone pure of heart#       - uncorrupted.";
            message[12] = "   I need you to obtain their SOUL#   but not just anywhere... ";
            message[13] = "  You must have a Boss Monster SOUL#  nearby to fuse with.";
            message[14] = "            You'll need...";
            message[15] = "          ...Damn it all.";
            message[16] = "Search for a willing Boss Monster#in the Underground. Someone else...#please.";
            message[17] = "   Our little girl... Kanako...#   She needs to live a happy life,#   unaffected by my endeavors.";
            message[18] = "       That is my final wish.";
            prt[0] = 1065;
            prt[1] = 1630;
            prt[2] = 1065;
            prt[3] = 1814;
            prt[4] = 1814;
            prt[5] = 3708;
            prt[6] = 1065;
            prt[7] = 1814;
            prt[8] = 1065;
            prt[9] = 1065;
            prt[10] = 1065;
            prt[11] = 1814;
            prt[12] = 1935;
            prt[13] = 1935;
            prt[14] = 1935;
            prt[15] = 3078;
            prt[16] = 1935;
            prt[17] = 1065;
            prt[18] = 1814;
        }
        
        break;
    
    case 12:
    case 14:
        audio_play_sound(snd_electric_flash, 1, 0);
        overlay_alpha += 0.35;
        scene++;
        break;
    
    case 13:
    case 15:
        cutscene_wait(0.6);
        break;
    
    case 16:
        audio_play_sound(snd_f_noise, 1, 1);
        audio_sound_gain(snd_f_noise, 0, 0);
        audio_sound_gain(snd_f_noise, 1, 2500);
        scene++;
        break;
    
    case 17:
        if (overlay_alpha < 1)
            overlay_alpha += 0.03;
        else
            cutscene_wait(4);
        
        break;
    
    case 18:
        scr_audio_fade_out(cutscene_music, 1500);
        scr_audio_fade_out(633, 2500);
        cutscene_advance();
        break;
    
    case 19:
        image_alpha = 0;
        
        if (overlay_alpha > 0)
            overlay_alpha -= 0.05;
        else
            scene++;
        
        break;
    
    case 20:
        cutscene_wait(2.5);
        break;
    
    case 21:
        instance_destroy();
        break;
}

if (scene_change == true)
{
    if (sprite_index != spr_chujin_tapes_static)
    {
        audio_play_sound(snd_f_noise, 1, 1);
        sprite_index = spr_chujin_tapes_static;
        image_index = 0;
    }
    
    if (scene_change_timer > 0)
    {
        scene_change_timer -= 1;
    }
    else
    {
        scene_change = false;
        scene_change_timer = scene_change_timer_max;
        audio_stop_sound(snd_f_noise);
        scene++;
        show_debug_message("HOW?");
    }
}

if (scene >= 12)
    exit;

overlay_alpha_default = 0.15;

if (irandom(80) == 1)
    static_flicker = true;

if (static_flicker == true)
{
    audio_play_sound(snd_electric_flash, 1, 0);
    overlay_alpha = clamp(overlay_alpha + random_range(0.25, 0.5), overlay_alpha_default, 0.75);
    static_flicker = false;
}

overlay_alpha = lerp(overlay_alpha, overlay_alpha_default, 0.1);
