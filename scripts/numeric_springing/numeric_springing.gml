function numeric_springing(argument0, argument1, argument2, argument3, argument4, argument5)
{
    var _x, _v, _x_t, _damping, _ang_freq, _t, _delta, _delta_x, _delta_v, _ret;
    
    _x = argument0;
    _v = argument1 * (room_speed / argument5);
    _x_t = argument2;
    _damping = argument3;
    _ang_freq = (2 * pi) * argument4;
    _t = argument5 / room_speed;
    _delta = 1 + (2 * _t * _damping * _ang_freq) + (power(_t, 2) * power(_ang_freq, 2));
    _delta_x = ((1 + (2 * _t * _damping * _ang_freq)) * _x) + (_t * _v) + (power(_t, 2) * power(_ang_freq, 2) * _x_t);
    _delta_v = _v + (_t * power(_ang_freq, 2) * (_x_t - _x));
    _ret[1] = _delta_v / _delta / (room_speed / argument5);
    _ret[0] = _delta_x / _delta;
    return _ret;
}
