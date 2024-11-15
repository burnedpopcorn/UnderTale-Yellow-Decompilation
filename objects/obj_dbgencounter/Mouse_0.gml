global.testnumber = number;

with (obj_dbgencounter)
{
    if (number != global.testnumber)
        instance_destroy();
}

global.scriptedEnemy = true;
global.randomEnemy = number;
image_alpha = 0;
room_goto(rm_battle);
