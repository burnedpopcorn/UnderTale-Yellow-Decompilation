function numeric_springing(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var _x = arg0;
    var _v = arg1 * (room_speed / arg5);
    var _x_t = arg2;
    var _damping = arg3;
    var _ang_freq = (2 * pi) * arg4;
    var _t = arg5 / room_speed;
    var _delta = 1 + (2 * _t * _damping * _ang_freq) + (power(_t, 2) * power(_ang_freq, 2));
    var _delta_x = ((1 + (2 * _t * _damping * _ang_freq)) * _x) + (_t * _v) + (power(_t, 2) * power(_ang_freq, 2) * _x_t);
    var _delta_v = _v + (_t * power(_ang_freq, 2) * (_x_t - _x));
    var _ret;
    _ret[1] = _delta_v / _delta / (room_speed / arg5);
    _ret[0] = _delta_x / _delta;
    return _ret;
}
