if (waiter == 1)
{
    sprite_index = flowey_niceside;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    obj_floweydialogue.message[0] = "Well... That was#something.";
    waiter = 2;
}

if (waiter == 2 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_nice;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
    {
        message[0] = "You're a lot#stronger than I#gave you credit#for!";
        message[1] = "Those monsters never#stood a chance#against your skill.";
    }
    
    waiter = 3;
}

if (waiter == 3 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_plain;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
    {
        message[0] = "...";
        message[1] = "What's with that#face?";
    }
    
    waiter = 4;
}

if (waiter == 4 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_smirk;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
        message[0] = "Don't even think#about killing me#too.";
    
    waiter = 5;
}

if (waiter == 5 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_nice;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
    {
        message[0] = "Remember, I'm the#one keeping you#alive.";
        message[1] = "Your life is#in my hands.";
        message[2] = "Don't worry, I#won't judge you#for your actions.";
    }
    
    waiter = 6;
}

if (waiter == 6 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_niceside;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
        message[0] = "Friends don't judge#each other, right?";
    
    waiter = 7;
}

if (waiter == 7 && !instance_exists(obj_floweydialogue))
{
    sprite_index = flowey_nice;
    
    if (!instance_exists(obj_floweydialogue))
        instance_create(x, y, obj_floweydialogue);
    
    with (obj_floweydialogue)
    {
        message[0] = "I have your#back and you've#got mine.";
        message[1] = "So let's get#out of here,#okay pal?";
    }
    
    waiter = 8;
}

if (waiter == 8 && !instance_exists(obj_floweydialogue))
{
    if (!instance_exists(obj_transition))
    {
        trn = instance_create(x, y, obj_transition);
        trn.newRoom = global.lastroom;
        trn.xx = global.player_x;
        trn.yy = global.player_y;
    }
}

if (sprite_index == spr_floweyenter)
    exit;

if (instance_exists(obj_floweydialogue))
{
    if (obj_floweydialogue.cutoff == string_length(obj_floweydialogue.message[obj_floweydialogue.message_current]) || obj_floweydialogue.animateTalk == false)
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
}
