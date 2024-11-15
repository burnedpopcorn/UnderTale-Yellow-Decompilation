if (keyboard_multicheck_pressed(0) && scr_interact() == true && interact_count == 0)
{
    is_talking = true;
    interact_count = 1;
    exit;
}

if (interact_count == 1)
{
    scr_text();
    
    if (npc_flag == 1)
    {
        with (msg)
        {
            message[0] = "* Let me feel sorry for myself,#  please.";
            message[1] = "* I will not let it go.";
        }
        
        interact_count = 0;
        exit;
    }
    
    with (msg)
    {
        message[0] = "* What do ya want?";
        ch_msg = 0;
        ch[1] = "What's\nwrong?";
        ch[2] = "Nothing";
        
        if (outcome == 1)
        {
            message[1] = "* I'll tell ya what's wrong!";
            other.interact_count = 2;
        }
        
        if (outcome == 2)
        {
            message[1] = "* Then leave me be, will ya?";
            message[2] = "* ...";
            other.interact_count = 0;
        }
    }
}

if (interact_count == 2 && !global.dialogue_open)
{
    scr_cutscene_start();
    sprite_index = spr_npc_producer_turn;
    image_speed = 0.3;
    
    if (image_index >= (image_number - 1))
    {
        sprite_index = spr_npc_producer_turn_talk;
        image_speed = 0;
        timer = 10;
        interact_count += 1;
    }
}

if (interact_count == 3)
{
    if (!scr_timer())
        exit;
    
    scr_text();
    
    with (msg)
    {
        message[0] = "* My life's a wreck!";
        message[1] = "* Wasted, woeful, washed up!";
        message[2] = "* I was supposed to make it big!";
        message[3] = "* I was gonna be a big time#  producer!";
        message[4] = "* Ya know, show business!";
        message[5] = "* I couldn't tell ya where it#  went wrong.";
        message[6] = "* I studied hard, I graduated#  middle school, what else do ya#  need?";
        message[7] = "* Snuck my way into gig booking#  at a joint in Hotland with#  potential in my eyes.";
        message[8] = "* One day, this robot fella#  rolled up to me and asked if#  I've ever produced an artist.";
        message[9] = "* Now, I'm a great producer. Make#  hot beats on my computer every#  weekend.";
        message[10] = "* I had the talent, but I lacked#  the vision.";
        message[11] = "* I told that one-wheeled#  television they wouldn't make#  it in the industry.";
        message[12] = "* What an IDIOT I was!";
        message[13] = "* They soon garnered a following#  and totally exploded!";
        message[14] = "* ...Not literally... maybe.";
        message[15] = "* Look, kid, I'll tell ya this:";
        message[16] = "* Sometimes, it's like we don't#  control our lives.";
        message[17] = "* Fate has a cruel way of#  teachin' us lessons.";
        message[18] = "* Have a little foresight and try#  not to grow arrogant like I did.";
        message[19] = "* Don't you forget that.";
    }
    
    if (!global.dialogue_open)
    {
        interact_count += 1;
        sprite_index = spr_npc_producer_turn;
        image_index = 5;
        image_speed = -0.3;
    }
}

if (interact_count == 4)
{
    if ((image_index + image_speed) <= 0)
    {
        sprite_index = spr_npc_producer;
        image_speed = 0;
        npc_flag += 1;
        interact_count = 0;
        is_talking = false;
        scr_cutscene_end();
    }
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);

if (sprite_index != spr_npc_producer && sprite_index != spr_npc_producer_turn_talk)
    exit;

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
    image_speed = 0;
    is_talking = false;
}
