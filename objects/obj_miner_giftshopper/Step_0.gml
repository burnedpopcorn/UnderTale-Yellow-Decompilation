event_inherited();

if (global.dunes_flag[24] != 0 && npc_flag == 1)
    npc_flag = 4;

if (interact && obj_pl.direction == 90 && !can_talk)
{
    can_talk = true;
    is_talking = 1;
    scr_text();
}

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* STEP RIIIIGHT UP!!";
                message[1] = "* WE GOT A BLOWOUT SALE GOING#  ON!!";
                message[2] = "* IT MAY LOOK LIKE WE'RE#  ALMOST SOLD OUT BUT QUITE#  THE CONTRARY!";
                message[3] = "* WE ONLY ORDERED ONE STOCK OF#  MUG!";
                message[4] = "* IT HAS BEEN ON THIS TRUSTY#  SHELF FOR THIRTEEN YEARS!";
                message[5] = "* DEMAND IS DEPRESSINGLY LOW SO#  TAKE ADVANTAGE OF THIS OFFER#  NOW!!";
                message[6] = "* ONLY 40G BUCKO!!";
                ch_msg = 6;
                ch[1] = "Buy";
                ch[2] = "Bye";
                
                if (outcome == 1)
                {
                    message[7] = "* Wait... seriously?";
                    message[8] = "* I MEAN, YES OF COURSE!!";
                    message[9] = "* AHA!! AHAHAHA!!!";
                    message[10] = "* GO FETCH IT OFF THE SHELF AND#  I'LL RING YOU UP!";
                    scr_cutscene_start();
                    other.clover_cup_cutscene = true;
                    other.can_talk = false;
                }
                
                if (outcome == 2)
                {
                    message[7] = "* DISAPPOINTED BUT NOT SURPRISED!";
                    other.can_talk = false;
                    other.npc_flag = 3;
                }
            }
            
            break;
        
        case 1:
        case 2:
            with (msg)
                message[0] = "* SINCE YOU BOUGHT THE MUG, I'LL#  HAVE TO SELL THE SHELVES#  THEMSELVES!!";
            
            if (npc_flag == 2)
                npc_flag = 4;
            
            can_talk = false;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* THE SALE IS OVER!";
                message[1] = "* YOU HAD YOUR CHANCE TO BUY THE#  PREMIUM MUG BUT REFUSED!";
                message[2] = "* LOOKS LIKE IT WON'T FIND A#  HOME ANYTIME SOON!";
                message[3] = "* SORRY, I DON'T MAKE THE RULES#  TO ECONOMICS!";
            }
            
            can_talk = false;
            break;
        
        case 4:
            with (msg)
            {
                message[0] = "* ...";
                message[1] = "* ...";
                message[2] = "* THERE IS NOTHING FOR YOU#  HERE.";
                message[3] = "* GOODBYE.";
            }
            
            can_talk = false;
            break;
    }
}

if (clover_cup_cutscene == true && !global.dialogue_open)
{
    if (global.party_member != -4 && instance_exists(global.party_member))
    {
        scr_follower_into_actor();
        actor_follower.npc_direction = "up";
        actor_follower.end_direction = "up";
        actor_follower.can_walk = false;
        actor_follower.x_dest[0] = 213;
        actor_follower.y_dest[0] = 110;
        actor_follower.axis_override = "x";
        instance_destroy(global.party_member);
    }
    
    if (!instance_exists(obj_player_npc))
    {
        clover_npc = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        clover_npc.x_dest[0] = 213;
        clover_npc.y_dest[0] = 97;
        clover_npc.axis_override = "x";
        clover_npc.can_walk = true;
    }
    
    if (clover_npc.npc_arrived == true)
    {
        clover_npc.image_alpha = 0;
        clover_npc.npc_arrived = false;
        clover_cup_cutscene = 2;
        obj_giftshop_mug.sprite_index = spr_mug_fall;
        obj_giftshop_mug.image_index = 0;
    }
}

if (clover_cup_cutscene == 2)
{
    if (floor(obj_giftshop_mug.image_index) == 20)
    {
        if (!audio_is_playing(snd_glass_break))
            audio_play_sound(snd_glass_break, 1, 0);
        
        audio_sound_gain(obj_radio.current_song, 0, 100);
    }
    
    if (obj_giftshop_mug.image_index >= (obj_giftshop_mug.image_number - 1))
    {
        obj_giftshop_mug.image_speed = 0;
        alarm[0] = 90;
        clover_cup_cutscene = 0;
    }
}

if (clover_cup_cutscene == 3)
{
    if (global.dialogue_open)
        exit;
    
    actor_follower.can_walk = true;
    
    if (actor_follower.npc_arrived)
    {
        instance_create(actor_follower.x, actor_follower.y, global.party_member);
        instance_destroy(actor_follower);
        scr_cutscene_end();
        clover_cup_cutscene = 0;
    }
}

if (music_reset == true)
{
    audio_sound_gain(obj_radio.current_song, 1, 300);
    music_reset = false;
}
