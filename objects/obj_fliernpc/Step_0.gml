script_execute(scr_depth, 0, 0, 0, 0, 0);

if (instance_exists(obj_dialogue) && talk == true)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        sprite_index = spr_fliernpcfly;
    else
        sprite_index = spr_fliernpctalk;
}

if (!instance_exists(obj_dialogue))
    sprite_index = spr_fliernpcfly;

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true)
{
    scr_text();
    talk = 1;
    
    switch (global.sideNpc[0])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Oh hey! I was just thinking...";
                message[1] = "* I really have to show you#  this house I'm checking out!";
                message[2] = "* It's on a beach just#  outside of the Ruins. ";
                message[3] = "* Hey, what's with that look?#* I'm following your advice#  and being myself. ";
                message[4] = "* I'll just be myself in#  a really cool beach house! ";
            }
            
            global.sideNpc[0] = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* You gotta get out and#  live a little once in#  a while. ";
                message[1] = "* If you stay in one place#  too long it feels like things#  start to loop. ";
                message[2] = "* It can drive you a little#  crazy. ";
            }
            
            global.sideNpc[0] = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I'm totally gonna learn all#  the hip dance moves out there!";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
    talk = false;
