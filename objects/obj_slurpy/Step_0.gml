depth = -y;

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (global.snowdin_flag[3] == 0)
    {
        scr_text();
        talk = 1;
        
        if (global.geno_complete[2] || global.route == 3)
        {
            with (msg)
            {
                message[0] = "* I thaw ethweone dwunning away#  throm thomething.";
                message[1] = "* I thwant to thollow them...#  but I can't.";
                message[2] = "* I'm scayed...";
            }
            
            exit;
        }
        
        with (msg)
        {
            portrait = false;
            message[0] = "* Hey! You!";
            message[1] = "* Can you hep ne ofth thith pole?";
            message[2] = "* I'ff been hewe fo two howas now.";
            message[3] = "* Thwee dogs came up and#  dauwd me to lick it.";
            message[4] = "* Due to the cold weatha,#  I'm now thtuck!";
            message[5] = "* Ny nom told me to be back#  in dime for lunth too.";
            message[6] = "* Pweasth hep.";
            other.slurpy_menu_open = true;
            global.snowdin_flag[3] = 1;
        }
    }
    else
    {
        slurpy_menu_open = true;
    }
}

if (!global.dialogue_open && slurpy_menu_open == true)
{
    instance_create(x, y, obj_item_use_menu);
    scr_cutscene_start();
    slurpy_menu_open = false;
}

if (waiter == 1 && !global.dialogue_open)
{
    instance_create(x + 6, y - 5, part_smoke_slurpy);
    audio_play_sound(snd_puzzle_icemelt, 20, 0);
    waiter = 2;
    timer = 30;
}

if (waiter == 4 && !instance_exists(obj_dialogue))
{
    if (place_free(x, y - 10))
    {
        vspeed = -3;
        sprite_index = spr_slurpy_up_yellow;
    }
    else
    {
        hspeed = -3;
        sprite_index = spr_slurpy_left_yellow;
    }
    
    image_speed = 0.2;
    waiter = 5;
}

if (waiter == 5)
{
    with (msg)
    {
        if (message_current == 1)
            other.talk = true;
        
        message[1] = "* Hey, hwat er you, crathy?";
        message[2] = "* Thath thin iv thteaming!";
        message[3] = "* I need thomething hot, but not#  THAT hot!";
    }
    
    if (!global.dialogue_open)
    {
        scr_cutscene_end();
        waiter = 0;
    }
}

if (timer > 0)
{
    timer--;
}
else if (timer != -1)
{
    if (waiter == 2)
    {
        sprite_index = spr_slurpy_retract_yellow;
        instance_create(x, y, obj_lamppost);
        image_speed = 0.2;
        waiter = 3;
        timer = -1;
    }
    else if (waiter == 3)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            message[0] = "* At last! I am liberated!";
            message[1] = "* I cannot thank you enough!#  You are a wonderful samaritan!";
            message[2] = "* Here, a token of my gratitude.";
            message[3] = "* (You got a Silver Scarf.)";
            message[4] = "* Knitted by my auntie with#  abundant passion!";
            message[5] = "* May it warm your skin, and#  your SOUL good fellow!";
            message[6] = "* Now, I must get home post-haste!#  Mother is bound to be#  perturbed already!";
            message[7] = "* Farewell!";
            
            if (message_current == 3)
            {
                if (!scr_item_exists_check("Silver Scarf"))
                {
                    scr_item_remove("Lukewarm Coffee");
                    scr_item("Silver Scarf");
                    other.talk = false;
                }
            }
            else if (message_current == 4)
            {
                other.timer = -1;
                other.talk = true;
                other.waiter = 4;
            }
            else
            {
                other.talk = true;
            }
        }
    }
}

if (instance_exists(obj_dialogue) && talk == true)
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

if (global.item_used_overworld != undefined)
{
    scr_text();
    
    with (msg)
    {
        switch (global.item_used_overworld)
        {
            case "Lukewarm Coffee":
                message[0] = "* (You pour the warm coffee#  onto the pole. The ice starts#  to melt.)";
                other.waiter = 1;
                scr_item_remove("Lukewarm Coffee");
                break;
            
            case "Hndw Coffee":
                other.talk = false;
                message[0] = "* (You take out the cup of#  coffee.)";
                other.waiter = 5;
                break;
            
            default:
                message[0] = "* Naybe thome waum cawfee will#  fwee ny poor tongue.";
                other.talk = true;
                other.waiter = 0;
                global.cutscene = false;
                break;
        }
    }
    
    if (!global.dialogue_open)
        global.item_used_overworld = undefined;
}
