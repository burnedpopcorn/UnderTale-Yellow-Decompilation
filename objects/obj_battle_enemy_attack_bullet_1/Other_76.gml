if (live_call())
    return global.live_result;

if (layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id)
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "bullet_drop":
            audio_play_sound(snd_ceroba_bullet_drop, 1, 0);
            instance_destroy();
            var bullet = instance_create_depth(x, y - 92, -110, obj_battle_enemy_attack_bullet_2);
            bullet.target_x = target_x;
            bullet.target_y = target_y;
            bullet.turn_rate = turn_rate;
            break;
    }
}
