sprite_index = FadeOut;
audio_stop_sound(ReverseButterfly)
audio_stop_sound(SomFogo)
instance_destroy(Objruido)
audio_stop_sound(Ruido)
instance_destroy(ObjFogoS)
audio_listener_orientation(0,0,0,0,0,0)
audio_play_sound(ambiente,1,9999)
s_emit = false
