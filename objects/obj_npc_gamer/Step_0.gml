event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                color = true;
                col_modif[0] = c_blue;
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* What's up- I mean howdy, human.";
                message[1] = "* Don't tell North Star about#  this, but I have a secret.";
                message[2] = "* When everyone is busy or#  sleeping, I sneak out.";
                message[3] = "* I go down the Cafe Dune to...#  GAME.";
                message[4] = "* The arcade is totally rad, you#  dig?";
                message[5] = "* I'm a gamer at heart but a#  cowboy at skin.";
                message_col[5][0] = "        gamer                                 ";
                message[6] = "* I even struggle to keep my#  accent on.";
                message[7] = "* You should try being a gamer,#  human.";
                message[8] = "* Maybe you could top my Mew Mew#  score?";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I heard one of the arcade#  machines used to be named \"Luck#  Man.\"";
                message[1] = "* They changed it because...#  Well I'm sure you know why.\t";
                message[2] = "* Monsters kept scribbling the#  word \"bad\" in front of \"luck#  man\"!!!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Do you think they'll ever#  invent another videogame?";
                message[1] = "* Kind of a missed opportunity to#  only make three.";
            }
            
            break;
    }
}
