if (!instance_exists(obj_npc_hermit))
{
    instance_destroy();
    exit;
}

depth = obj_npc_hermit.depth - 1;
