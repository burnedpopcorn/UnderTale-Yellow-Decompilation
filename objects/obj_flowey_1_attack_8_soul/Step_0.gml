var shard_number, i, shard;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        break;
    
    case 1:
        speed = 0;
        audio_play_sound(snd_soul_gameover_hit, 1, 0);
        sprite_index = spr_heart_white_split;
        image_index = 1;
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        shard_number = 6;
        
        for (i = 0; i <= shard_number; i++)
        {
            shard = instance_create_depth(x, y, -100, obj_flowey_1_attack_7_shard);
            shard.direction = 90 + (i * (360 / shard_number));
        }
        
        audio_play_sound(snd_soul_gameover_hit_break, 20, false);
        instance_destroy();
        break;
}
