var heart = obj_heart_battle_fighting_red;
attack_state = 1;
direction = point_direction(x, y, heart.x, heart.y);
speed = -charge_speed;
audio_play_sound(snd_ceroba_swoosh, 1, 0);
