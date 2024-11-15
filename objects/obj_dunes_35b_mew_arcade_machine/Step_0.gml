if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    active = true;
}

if (active)
{
    with (msg)
    {
        message[0] = "* (Spend 3G to play?)";
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (global.player_gold < 3)
            {
                message[1] = "* (Not enough G.)";
                other.active = false;
                exit;
            }
            
            global.player_gold -= 3;
            other.active = false;
            global.last_room_overworld = room;
            trn = instance_create(0, 0, obj_transition);
            
            with (trn)
            {
                newRoom = 179;
                xx = 0;
                yy = 0;
            }
            
            exit;
        }
        else if (outcome == 2)
        {
            other.active = false;
        }
    }
}
