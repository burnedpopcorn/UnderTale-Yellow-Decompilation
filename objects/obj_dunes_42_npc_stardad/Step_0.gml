event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Welcome to Sunnyside Farm!";
                message[1] = "* It ain't much but we call it#  home!";
                message[2] = "* My name's Solomon.";
                message[3] = "* You must be from Starlo's#  town, eh?";
                message[4] = "* I have mixed feelin's about it#  all, if I'm bein' honest.";
                message[5] = "* The boy rarely talks to us,#  it's a shame.";
                message[6] = "* He probably thinks we hate his#  life choices but that just#  ain't true.";
                message[7] = "* It's because of him that our#  farm stayed in business durin'#  the ol' drought.";
                message[8] = "* His little town attracted#  monsters to this area after#  most moved away.";
                message[9] = "* I believe that deep down,#  savin' the farm was his true#  motivation, I do.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I think it's real flatterin',#  the accent Starlo puts on fer#  his character.";
                message[1] = "* He almost sounds like his ol'#  man, he does.";
                message[2] = "* In reality, my boys both got#  Crestina's voice, lucky fellas.";
                message[3] = "* Before they were born, she#  would always sing so#  purtty-like.";
                message[4] = "* I never hear it no more,#  though.";
                message[5] = "* Guess she lacks the confidence#  now. Ain't that sad?";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* The crops are lookin' mighty#  fine if I do say so.";
                message[1] = "* I would give ya some but they#  ain't quite ready to eat.";
                message[2] = "* If ye're around Oasis Valley#  this weekend, stop by the#  farmers market!";
            }
            
            break;
    }
}
