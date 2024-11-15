script_execute(scr_depth, 0, 0, 0, 0, 0);
obj_pl.state = scr_frozen_state;

if (global.route != 3)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Howdy!";
            message[1] = "* Congratulations on being#  rid of those old ruins#  for good!";
            message[2] = "* You couldn't even go#  back if you wanted#  to now!";
            message[3] = "* Isn't the thought of#  fresh air exciting?";
            message[4] = "* Well, don't get ahead#  of yourself.";
            message[5] = "* You're still in the#  Underground.";
            message[6] = "* We won't be anywhere#  near your fancy Surface#  air for a while!";
            message[7] = "* Now, let's get moving#  before my petals freeze.";
            message[8] = "* Hop to it, bud!";
            prt[0] = 348;
            prt[1] = 357;
            prt[2] = 347;
            prt[3] = 352;
            prt[4] = 348;
            prt[5] = 348;
            prt[6] = 348;
            prt[7] = 348;
            prt[8] = 348;
        }
        
        waiter = 2;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        timer = 30;
        waiter = 3;
    }
    
    if (waiter == 4)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Actually, what was your#  name again?";
            message[1] = "* It isn't bud.";
            message[2] = "* It's... Gun... hat...?";
            prt[0] = 348;
            prt[1] = 352;
            prt[2] = 348;
            ch_msg = 2;
            ch[1] = "It's\nClover";
            ch[2] = "That's\nRight";
            
            if (outcome == 1 && message_current == 2)
            {
                message[3] = "* Clover.";
                prt[3] = 347;
                other.choice = 2;
                other.waiter = 6;
            }
            else if (outcome == 2 && message_current == 2)
            {
                message[3] = "* It is?";
                prt[3] = 352;
                other.choice = 1;
                other.waiter = 6;
            }
        }
    }
    
    if (waiter == 6 && !instance_exists(obj_dialogue))
    {
        if (timer == -1)
            timer = 30;
    }
    
    if (waiter == 7)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            if (other.choice == 1)
            {
                sndfnt = 96;
                message[0] = "* Well, Gun-hat.#  Enough talk.";
                message[1] = "* See ya.";
                prt[0] = 352;
                prt[1] = 348;
                global.snowdin_flag[15] = 2;
            }
            else if (other.choice == 2)
            {
                sndfnt = 96;
                message[0] = "* Nice name there.";
                message[1] = "* I thought I was the#  only flower around here.";
                message[2] = "* Well then, 'Clover.'#  Let's get a move on.";
                message[3] = "* I'll see you up ahead,#  hopefully somewhere#  warmer.";
                prt[0] = 347;
                prt[1] = 348;
                prt[2] = 348;
                prt[3] = 347;
                global.snowdin_flag[15] = 1;
            }
        }
        
        waiter = 8;
    }
}
else if (global.route == 3)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Howdy!";
            message[1] = "* Enjoying the scenery?";
            message[2] = "* Before you continue, I#  just wanted to let you#  know.";
            message[3] = "* No one from out here#  really goes in the#  Ruins.";
            message[4] = "* Now that we're out here,#  well, how should I put#  it?";
            message[5] = "* No one will ever notice#  a few missing monsters#  and a little extra dust.";
            message[6] = "* All your actions up#  'til now, they're as#  good as sealed away.";
            message[7] = "* Our little secret.";
            message[8] = "* So, if you want, you#  could change everything#  right now.";
            message[9] = "* Run around the rest of#  the Underground like#  nothing happened.";
            message[10] = "* Just remember, killing#  some lonely ruins#  residents was one thing.";
            message[11] = "* But you're outside now#  pal.";
            message[12] = "* There's no erasing#  anymore, so think#  carefully.";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 347;
            prt[3] = 348;
            prt[4] = 348;
            prt[5] = 348;
            prt[6] = 348;
            prt[7] = 349;
            prt[8] = 348;
            prt[9] = 347;
            prt[10] = 348;
            prt[11] = 348;
            prt[12] = 348;
        }
        
        timer = 30;
        waiter++;
    }
    
    if (waiter == 2 && !global.dialogue_open)
    {
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Or don't, 'cause that#  sounds boring.";
            message[1] = "* Whatever you pick, I'm#  rootin' for ya, pal!";
            prt[0] = 349;
            prt[1] = 348;
        }
        
        if (!global.dialogue_open)
            waiter = 8;
    }
}

if (waiter == 8 && !instance_exists(obj_dialogue))
{
    image_index = 0;
    sprite_index = spr_floweyleave;
    image_speed = 0.2;
    waiter = 9;
}

if (waiter == 9 && image_index >= (image_number - 1))
{
    instance_destroy();
    instance_create(x, y, obj_determination);
    scr_cutscene_end();
    global.snowdin_flag[0] = 1;
}

if (global.route == 3)
    exit;

if (timer > 0)
{
    timer--;
}
else if (timer == 0)
{
    if (waiter == 6)
        waiter = 7;
    else
        waiter = 4;
    
    timer = -1;
}

if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
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
