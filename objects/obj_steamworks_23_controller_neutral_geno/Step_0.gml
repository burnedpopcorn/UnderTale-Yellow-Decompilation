if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 595)
        {
            instance_create(580, 215, obj_flowey_npc);
            obj_flowey_npc.action_sprite = true;
            obj_flowey_npc.sprite_index = spr_floweyrise;
            obj_flowey_npc.image_speed = 0.2;
            obj_determination.image_alpha = 0;
            obj_pl.direction = 90;
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.action_sprite = false;
            obj_flowey_npc.npc_direction = "down";
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_wait(0.75);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            if (global.route == 1 && global.geno_complete[3] == false)
            {
                talker[0] = 3194;
                message[0] = "* Howdy!";
                message[1] = "* I know I usually let you#  handle imminent threats#  but...";
                message[2] = "* ...You really looked#  cornered back there!";
                message[3] = "* My friendliness pellets#  sure come in handy in#  tight spots!";
                message[4] = "* Anyway, you must be#  totally out of breath#  after that.";
                message[5] = "* You should take it easy#  for a while, pal!";
                message[6] = "* Grab a snack, hydrate,#  won't bother me!";
                message[7] = "* Need to be in tip-top#  shape for what's coming!";
                prt[0] = 348;
                prt[1] = 347;
                prt[2] = 357;
                prt[3] = 348;
                prt[4] = 348;
                prt[5] = 348;
                prt[6] = 347;
                prt[7] = 3251;
            }
            else
            {
                talker[0] = 3194;
                message[0] = "* ...";
                message[1] = "* Can I be real with you?";
                message[2] = "* I'm gonna be real with#  you.";
                message[3] = "* I get it. Stomping#  around, full of anger,#  boredom...";
                message[4] = "* Laying waste to#  everything in your path#  - we all have hobbies.";
                message[5] = "* But, heh, come on...";
                message[6] = "* How is this forwarding#  your cause?";
                message[7] = "* These aren't monsters.";
                message[8] = "* As far as I'm concerned#  they're barely even#  conscious.";
                message[9] = "* We don't have time for#  this little joyride of#  yours.";
                message[10] = "* In my opinion, of#  course!";
                message[11] = "* ...";
                message[12] = "* ...";
                message[13] = "* Fine, we can talk later#  I guess.";
                prt[0] = 353;
                prt[1] = 352;
                prt[2] = 352;
                prt[3] = 353;
                prt[4] = 352;
                prt[5] = 357;
                prt[6] = 352;
                prt[7] = 353;
                prt[8] = 352;
                prt[9] = 3692;
                prt[10] = 348;
                prt[11] = 347;
                prt[12] = 352;
                prt[13] = 3122;
            }
        }
        
        break;
    
    case 4:
        cutscene_npc_action_sprite(3194, 245, 0.2, true);
        break;
    
    case 5:
        instance_destroy(obj_flowey_npc);
        global.sworks_flag[15] = 1;
        obj_determination.image_alpha = 1;
        cutscene_end();
        break;
}
