function __background_set(argument0, argument1, argument2)
{
    var __prop, __bind, __val, __backinfo, __res;
    
    __prop = argument0;
    __bind = argument1;
    __val = argument2;
    __backinfo = __background_get_element(__bind);
    __background_set_internal(__prop, __bind, __val, __backinfo);
    __res = __background_get_internal(__prop, __bind, __backinfo);
    return __res;
}
