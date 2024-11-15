var geno_snowdin;

geno_snowdin = false;

if (global.geno_complete[2])
    geno_snowdin = true;

if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    is_talking = true;
    waiter = 1;
}

if (waiter == 1)
{
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        
        if (global.route == 3 && geno_snowdin == false)
        {
            message[0] = "* The atmosphere seems colder#  than expected around here.";
            message[1] = "* Maybe this trip wasn't a good#  idea...";
        }
        else
        {
            switch (global.snowdin_flag[1])
            {
                case 0:
                    message[0] = "* Hello friend!";
                    message[1] = "* My husband and I have been#  exploring the Underground.";
                    message[2] = "* Many secrets lie throughout#  these lands.";
                    message[3] = "* It makes for a great and exotic#  honeymoon.";
                    message[4] = "* ...";
                    message[5] = "* Unfortunately, we're a bit lost#  at the moment.";
                    message[6] = "* He says he knows where we are,#  but I think he's just#  embarrassed.";
                    message[7] = "* Any idea where we could#  get a map?";
                    global.snowdin_flag[1] = 1;
                    other.waiter = 0;
                    break;
                
                case 1:
                    if (scr_item_exists_check("Snowdin Map"))
                    {
                        if (message_current == 0 || message_current == 10)
                            other.is_talking = false;
                        
                        if (message_current == 1)
                            other.is_talking = true;
                        
                        if (message_current == 10)
                        {
                            scr_item_remove("Snowdin Map");
                            scr_item("Matches");
                            global.snowdin_flag[1] = 2;
                            other.is_talking = false;
                            other.waiter = 0;
                        }
                        
                        message[0] = "* (You take out the map.)";
                        message[1] = "* A map? Splendid! ";
                        message[2] = "* Did you make this just#  for us?";
                        message[3] = "* I wish I had something#  as heartfelt to give#  in return...";
                        message[4] = "* Would you like some#  extra matches?";
                        message[5] = "* I've been holding onto them in#  case we needed a fire.";
                        message[6] = "* We won't need one anymore.";
                        message[7] = "* Our love will keep us warm!";
                        message[8] = "* Sorry, that's a little#  cliche, isn't it.";
                        message[9] = "* Well, I wish you the best.#  Don't use all those#  matches in one place. ";
                        message[10] = "* (Received some Matches!)";
                    }
                    else
                    {
                        message[0] = "* Next stop on our trip is#  supposed to be Waterfall.";
                        message[1] = "* I hear there are glittering#  stones in the ceiling.";
                        message[2] = "* It should be breath-taking#  and romantic.";
                        message[3] = "* ...If we ever find it, that#  is...";
                    }
                    
                    break;
                
                case 2:
                    message[0] = "* This blocked off cave looks#  absolutely stunning.";
                    message[1] = "* I hope they clear the#  way soon. I can't wait#  to get moving again.";
                    break;
            }
        }
    }
}

if (instance_exists(obj_dialogue) && is_talking == true)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}
else
{
    is_talking = false;
}

if (!global.dialogue_open && waiter == 1)
    waiter = 0;
