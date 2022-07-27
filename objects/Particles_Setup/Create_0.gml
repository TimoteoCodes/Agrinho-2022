abacate = part_system_create_layer("PEDRINYAYA", 0);


#region CHUVA

particleType_Rain = part_type_create();
part_type_sprite(particleType_Rain, spr_Particle_Rain_Hard, 0,0,1 );
part_type_size(particleType_Rain, 2,2, 0,0);

part_type_gravity(particleType_Rain, 0.05, 250);





#endregion
