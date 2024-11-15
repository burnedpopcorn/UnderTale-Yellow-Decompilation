var inactive_card;

inactive_card = irandom_range(1, 8);

with (obj_attack_ace_dealing_cards)
{
    if (card_id != inactive_card)
        event_perform(ev_alarm, 0);
}

if (attack_number <= 0)
    instance_destroy();

attack_number--;
