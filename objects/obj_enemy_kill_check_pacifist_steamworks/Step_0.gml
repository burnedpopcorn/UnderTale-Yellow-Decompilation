switch (scene)
{
    case 0:
        if (room == rm_battle)
            exit;
        
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* What are you thinking!?";
            message[1] = "* I know they started the#  fight but we don't know#  the situation!";
            message[2] = "* What if it was a glitch#  in their programming?";
            message[3] = "* ...";
            message[4] = "* These bots are#  antiques. ";
            message[5] = "* We have no right to#  destroy them, got that?";
            message[6] = "* ...Sigh.";
            
            if (global.sworks_flag[4] == 0)
            {
                message[7] = "* Why are we in this#  situation to begin with?";
                message[8] = "* I thought Axis said he#  was the last of his#  kind...";
                message[9] = "* Wait... ";
                message[10] = "* He introduced himself#  as \"Model 014\".";
                message[11] = "* There must have been 13#  other guard-bot#  prototypes.";
                message[12] = "* I suppose only one is#  still functioning.";
                message[13] = "* Still, this thing#  definitely wasn't a#  guard-bot...";
                message[14] = "* We don't know how many#  other robot types are#  out there.";
                message[45] = "* We'll figure it out in#  due time, I'm sure.";
                message[16] = "* Just... don't do#  anything stupid.";
                prt[7] = spr_portrait_ceroba_alt;
                prt[8] = spr_portrait_ceroba_alt;
                prt[9] = spr_portrait_ceroba_neutral;
                prt[10] = spr_portrait_ceroba_alt;
                prt[11] = spr_portrait_ceroba_closed_eyes;
                prt[12] = spr_portrait_ceroba_closed_eyes;
                prt[13] = spr_portrait_ceroba_alt;
                prt[14] = spr_portrait_ceroba_neutral;
                prt[15] = spr_portrait_ceroba_neutral;
                prt[16] = spr_portrait_ceroba_irked;
            }
            else
            {
                message[7] = "* Just... don't do#  anything stupid.";
                prt[7] = spr_portrait_ceroba_irked;
            }
            
            prt[0] = spr_portrait_ceroba_angry;
            prt[1] = spr_portrait_ceroba_irked;
            prt[2] = spr_portrait_ceroba_irked;
            prt[3] = spr_portrait_ceroba_disapproving;
            prt[4] = spr_portrait_ceroba_closed_eyes;
            prt[5] = spr_portrait_ceroba_neutral;
            prt[6] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 2:
        global.sworks_flag[4] = 1;
        cutscene_end();
        break;
}
