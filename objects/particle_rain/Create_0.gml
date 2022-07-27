

xStart = camera_get_view_x(view_camera[1] );
yStart = camera_get_view_y(view_camera[1] );

CameraWidth = camera_get_view_width(view_camera[1]);


emitterRain = part_emitter_create(Particles_Setup.abacate);

part_emitter_region(Particles_Setup.abacate, emitterRain, xStart - 800, xStart + CameraWidth + 800, yStart - 50, yStart - 50, ps_shape_rectangle,ps_distr_linear)
part_emitter_stream(Particles_Setup.abacate, emitterRain, Particles_Setup.particleType_Rain, 30);

