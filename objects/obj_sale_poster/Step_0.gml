if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (There's a note attached#  to the cactus.)";
        message[1] = "* 50% OFF ON ALL OF#  OUR PRODUCT-!";
    }
    
    waiter = 1;
}

if (waiter == 1 && !global.dialogue_open)
{
    global.cutscene = true;
    alarm[0] = 35;
    waiter = 0;
}
