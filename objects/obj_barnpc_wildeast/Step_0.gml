event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.snowdin_flag[18] >= 1)
    {
        global.snowdin_flag[18] = 2;
        
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    message[0] = "* 'Ay, it's you again!";
                    message[1] = "* Nice to see a face around 'ere#  that's seen places other than#  this desert, heh heh.";
                    message[2] = "* I live 'round these parts, but#  it's not always like... this...";
                    message[3] = "* The Wild East is changin';#  something's in the air.";
                    message[4] = "* North Star and his gang are#  doin' their best I suppose.";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    message[0] = "* Speakin' of North Star, he's#  got you roped into his crew,#  huh.";
                    message[1] = "* Don't be too intimidated,#  they're all a bunch of softies#  at heart!";
                    message[2] = "* Maybe not that Ed guy though...#  Something tells me not to cross#  him, heh heh...";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
                with (msg)
                {
                    message[0] = "* I'm thinkin' of taking a trip#  to Waterfall.";
                    message[1] = "* You should stop by that place#  if ya get the chance!";
                    message[2] = "* Prettier than here, fer'sure.";
                }
                
                break;
        }
    }
    else
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    message[0] = "* You must be that new kid in the#  paper, eh?";
                    message[1] = "* Trust me, the Wild East ain't#  always this... active...";
                    message[2] = "* North Star must just be excited#  to add another member to his#  posse!";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    message[0] = "* If you plan on leavin' here,#  don't expect it to be easy.";
                    message[1] = "* When North Star gets his mind#  set on something, he sees it#  through.";
                    message[2] = "* So embrace yer position. I'm#  sure only good things can come#  from it!";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
                with (msg)
                    message[0] = "* I'm gonna head out of town,#  don't get into too much trouble,#  heh heh.";
                
                break;
        }
    }
}
