shader_set(shader_Heat);

shader_set_uniform_f(uniTime, current_time);

draw_surface(application_surface, 0,0 );

shader_reset();

