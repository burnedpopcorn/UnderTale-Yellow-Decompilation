if (live_call())
    return global.live_result;

audio_emitter_free(emitter1);
instance_destroy();
