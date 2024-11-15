event_inherited();

if (interact)
    waiter = 1;

if (waiter)
{
    if (npc_flag == 0)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (You spot a discarded bag of#  Popato Chisps under the#  bench.)\t";
            message[1] = "* (Take it?)";
            
            if (outcome == 1)
            {
                if (scr_item("Popato Chisps"))
                {
                    message[2] = "* (You got Popato Chisps!)";
                    other.npc_flag = 1;
                    other.waiter = 0;
                }
                else
                {
                    message[2] = "* (Not enough space.)";
                    other.waiter = 0;
                }
            }
            else if (outcome == 2)
            {
                other.waiter = 0;
            }
        }
    }
    else
    {
        scr_text();
        
        with (msg)
            message[0] = "* (A sturdy park bench.)";
        
        waiter = 0;
    }
}
