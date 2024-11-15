if (scr_interact() && keyboard_multicheck_pressed(0) && !interacted_with)
{
    scene = 0;
    interacted_with = true;
    scr_cutscene_start();
}

if (interacted_with)
{
    if (scene == 0)
    {
        scr_text();
        
        with (msg)
        {
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (The shelf is lined with#  several books, some educational,#  some recreational.)";
            message[1] = "* (A book titled \"Gemstone Fever\"#  catches your eye.)";
            message[2] = "* (Read it?)";
            
            if (outcome == 1)
            {
                instance_destroy();
                other.scene = 1;
                exit;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.interacted_with = false;
                scr_cutscene_end();
            }
        }
    }
    
    if (scene == 1)
    {
        scr_text();
        
        with (msg)
        {
            col_modif[0] = 65535;
            col_modif[1] = 16711680;
            col_modif[2] = 65280;
            col_modif[3] = 16711935;
            color = true;
            message[0] = "* The Underground has been the#  home to thousands of gemstones,";
            message[1] = "* Yet only four types have been#  discovered.";
            message[2] = "* The Swelterstone - Hue, Yellow";
            message_col[2][0] = "  The Swelterstone              ";
            message[3] = "* This stone emits immense heat,#  sum depending on its size.";
            message[4] = "* It is also the brightest stone,#  frequently used to illuminate#  various Underground locations.";
            message[5] = "* The Glacialstone - Hue, Blue";
            message_col[5][1] = "  The Glacialstone";
            message[6] = "* Opposite of the Swelterstone;#  emmits a frigid temperature.";
            message[7] = "* This stone is abundant in#  cooler areas such as Snowdin#  and Waterfall.";
            message[8] = "* The Aromaticstone - Hue, Green";
            message_col[8][2] = "  The Aromaticstone";
            message[9] = "* This rare stone smells like#  apples. That is all.";
            message[10] = "* The Pinkstone  - Hue, in#  the name.";
            message_col[10][3] = "  The Pinkstone";
            message[11] = "* No trait for this stone has#  been discovered as of#  publication.";
            message[12] = "* (You sift through the book and#  catch a couple more facts.)";
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 10;
        }
    }
    
    if (scene == 2)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* With the temperature stones#  having higher quantities in#  certain areas,";
            message[1] = "* They can be a large factor in#  determining their location's#  climate.";
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 10;
        }
    }
    
    if (scene == 3)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* Gemstones do not have much#  monetary worth within the#  Underground Economy.";
            message[1] = "* Instead, they are often#  utilized for their traits,#  jewelry, or other decoration.";
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 10;
        }
    }
    
    if (scene == 4)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* The largest gemstone to be#  discovered is located in the#  Dunes.";
            message[1] = "* It is approximated to be as big#  as 10,000 hardhats!";
            message[2] = "* (You close the book and put it#  back.)";
            message[3] = "* (You are now dizzy with#  gemstone fever.)";
        }
        
        if (!global.dialogue_open)
        {
            scr_cutscene_end();
            interacted_with = false;
        }
    }
}
