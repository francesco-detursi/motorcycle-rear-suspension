! ARCHIVE MODEL: RearSuspension_Optimised_Rigid.cmd
! Import into an empty Adams/View session. No automatic simulation.
! CMD Version:2
! Version 2 enables expanded acceptable characters for object names.
! If unspecified, set to 1 or set to an invalid value, Adams View assumes traditional naming requirements.
!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 1000.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = Rear_Susp
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Rear_Susp.steel  &
   adams_id = 3  &
   density = 7.801E-06  &
   youngs_modulus = 2.07E+05  &
   poissons_ratio = 0.29
!
material create  &
   material_name = .Rear_Susp.aluminum  &
   adams_id = 2  &
   density = 2.74E-06  &
   youngs_modulus = 7.1705E+04  &
   poissons_ratio = 0.33
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_25  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_27  &
   adams_id = 27  &
   location = 30.0, -110.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_37  &
   adams_id = 37  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_43  &
   adams_id = 43  &
   location = 70.0, 130.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_44  &
   adams_id = 44  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.ground.MARKER_45  &
   adams_id = 45  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Rear_Susp.ground  &
   material_type = .Rear_Susp.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .Rear_Susp.ground.P_whc  &
   location = 512.1000315663, -90.2970523868, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_whc  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.P_swar_b  &
   location = 150.1110699893, -86.6666666667, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_swar_b  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.P_beam_t  &
   location = 110.0, -240.0, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_beam_t  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.P_tr_ch  &
   location = 30.0, -110.0, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_tr_ch  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.P_cyl_ch  &
   location = 70.0, 130.0, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_cyl_ch  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.P_swar_ch  &
   location = 0.0, 0.0, 0.0
!
point attributes  &
   point_name = .Rear_Susp.ground.P_swar_ch  &
   name_visibility = on
!
point create  &
   point_name = .Rear_Susp.ground.punto_ausiliario1  &
   location = 512.1000315663, 500.0, 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Rear_Susp.ground  &
   name_visibility = off
!
!---------------------------------- swingarm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
part create rigid_body name_and_position  &
   part_name = .Rear_Susp.swingarm  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.swingarm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.swingarm.MARKER_1  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_2  &
   adams_id = 2  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.swingarm.MARKER_2  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_3  &
   adams_id = 3  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.swingarm.MARKER_3  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.swingarm.cm  &
   adams_id = 20  &
   location = 236.1488547845, -59.1577243699, 0.0  &
   orientation = 261.42590117d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .Rear_Susp.swingarm.cm  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_24  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_39  &
   adams_id = 39  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_35  &
   adams_id = 35  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.swingarm.MARKER_47  &
   adams_id = 47  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Rear_Susp.swingarm  &
   material_type = .Rear_Susp.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .Rear_Susp.swingarm.PLATE_8  &
   marker_name = .Rear_Susp.swingarm.MARKER_1, .Rear_Susp.swingarm.MARKER_2,  &
                 .Rear_Susp.swingarm.MARKER_3  &
   width = 30.0  &
   radius = 13.5
!
part attributes  &
   part_name = .Rear_Susp.swingarm  &
   color = BLUE  &
   name_visibility = off
!
!---------------------------------- triangle ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
part create rigid_body name_and_position  &
   part_name = .Rear_Susp.triangle  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.triangle
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_4  &
   adams_id = 4  &
   location = 30.0, -110.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.triangle.MARKER_4  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_5  &
   adams_id = 5  &
   location = 120.1110699893, -71.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.triangle.MARKER_5  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_6  &
   adams_id = 6  &
   location = 110.0, -240.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.triangle.MARKER_6  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.triangle.cm  &
   adams_id = 21  &
   location = 87.9807659075, -143.8884462133, 0.0  &
   orientation = 188.8746367977d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .Rear_Susp.triangle.cm  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_26  &
   adams_id = 26  &
   location = 30.0, -110.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_41  &
   adams_id = 41  &
   location = 110.0, -240.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.triangle.MARKER_42  &
   adams_id = 42  &
   location = 120.1110699893, -71.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Rear_Susp.triangle  &
   material_type = .Rear_Susp.steel
!
! ****** Points for current part ******
!
point create  &
   point_name = .Rear_Susp.triangle.P_cyl_tr  &
   location = 120.1110699893, -71.6666666667, 0.0
!
point attributes  &
   point_name = .Rear_Susp.triangle.P_cyl_tr  &
   name_visibility = on
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .Rear_Susp.triangle.PLATE_9  &
   marker_name = .Rear_Susp.triangle.MARKER_4, .Rear_Susp.triangle.MARKER_5,  &
                 .Rear_Susp.triangle.MARKER_6  &
   width = 30.0  &
   radius = 13.5
!
part attributes  &
   part_name = .Rear_Susp.triangle  &
   color = GREEN  &
   name_visibility = off
!
!------------------------------------ beam ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
part create rigid_body name_and_position  &
   part_name = .Rear_Susp.beam  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.beam
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Rear_Susp.beam.MARKER_7  &
   adams_id = 7  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 255.3402740353d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.beam.MARKER_7  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.beam.MARKER_8  &
   adams_id = 8  &
   location = 110.0, -240.0, 0.0  &
   orientation = 255.3402740353d, 180.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.beam.MARKER_8  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.beam.cm  &
   adams_id = 22  &
   location = 130.0555349947, -163.3333333333, 0.0  &
   orientation = 165.3402740353d, 89.9999999875d, 90.000000072d
!
marker attributes  &
   marker_name = .Rear_Susp.beam.cm  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.beam.MARKER_38  &
   adams_id = 38  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.beam.MARKER_40  &
   adams_id = 40  &
   location = 110.0, -240.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.beam.MARKER_46  &
   adams_id = 46  &
   location = 150.1110699893, -86.6666666667, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Rear_Susp.beam  &
   material_type = .Rear_Susp.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Rear_Susp.beam.LINK_10  &
   i_marker = .Rear_Susp.beam.MARKER_7  &
   j_marker = .Rear_Susp.beam.MARKER_8  &
   width = 30.0  &
   depth = 10.0
!
part attributes  &
   part_name = .Rear_Susp.beam  &
   color = ORANGE  &
   name_visibility = off
!
!----------------------------------- wheel ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
part create rigid_body name_and_position  &
   part_name = .Rear_Susp.wheel  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.wheel
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Rear_Susp.wheel.MARKER_11  &
   adams_id = 11  &
   location = 512.1000315663, -90.2970523868, 100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Rear_Susp.wheel.MARKER_11  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.wheel.cm  &
   adams_id = 23  &
   location = 512.1000315663, -90.2970523868, 100.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .Rear_Susp.wheel.cm  &
   visibility = off
!
marker create  &
   marker_name = .Rear_Susp.wheel.MARKER_34  &
   adams_id = 34  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Rear_Susp.wheel.MARKER_36  &
   adams_id = 36  &
   location = 512.1000315663, -90.2970523868, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Rear_Susp.wheel  &
   mass = 12.0  &
   center_of_mass_marker = .Rear_Susp.wheel.cm  &
   ixx = 7.5E+05  &
   iyy = 4.0E+05  &
   izz = 4.0E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape torus  &
   adams_id = 13  &
   torus_name = .Rear_Susp.wheel.TORUS_13  &
   center_marker = .Rear_Susp.wheel.MARKER_11  &
   angle_extent = 360.0  &
   major_radius = 230.0  &
   minor_radius = 70.0  &
   side_count_for_perimeter = 20  &
   segment_count = 20
!
part attributes  &
   part_name = .Rear_Susp.wheel  &
   color = BLACK  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .Rear_Susp.rev_swingarm_ground  &
   adams_id = 1  &
   i_marker_name = .Rear_Susp.swingarm.MARKER_24  &
   j_marker_name = .Rear_Susp.ground.MARKER_25
!
constraint attributes  &
   constraint_name = .Rear_Susp.rev_swingarm_ground  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Rear_Susp.rev_triangle_ground  &
   adams_id = 2  &
   i_marker_name = .Rear_Susp.triangle.MARKER_26  &
   j_marker_name = .Rear_Susp.ground.MARKER_27
!
constraint attributes  &
   constraint_name = .Rear_Susp.rev_triangle_ground  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .Rear_Susp.cylind_beam_swingarm  &
   adams_id = 7  &
   i_marker_name = .Rear_Susp.beam.MARKER_38  &
   j_marker_name = .Rear_Susp.swingarm.MARKER_39
!
constraint attributes  &
   constraint_name = .Rear_Susp.cylind_beam_swingarm  &
   active = off  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .Rear_Susp.sph_beam_triangle  &
   adams_id = 8  &
   i_marker_name = .Rear_Susp.beam.MARKER_40  &
   j_marker_name = .Rear_Susp.triangle.MARKER_41
!
constraint attributes  &
   constraint_name = .Rear_Susp.sph_beam_triangle  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Rear_Susp.rev_wheel_swingarm  &
   adams_id = 6  &
   i_marker_name = .Rear_Susp.wheel.MARKER_34  &
   j_marker_name = .Rear_Susp.swingarm.MARKER_35
!
constraint attributes  &
   constraint_name = .Rear_Susp.rev_wheel_swingarm  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create element_like bushing  &
   bushing_name = .Rear_Susp.cedevolezza_beam_swingarm  &
   adams_id = 1  &
   i_marker_name = .Rear_Susp.beam.MARKER_46  &
   j_marker_name = .Rear_Susp.swingarm.MARKER_47  &
   damping = 1.0, 3.0, 0.0  &
   stiffness = 100.0, 300.0, 0.0  &
   force_preload = 0.0, 0.0, 0.0  &
   tdamping = 10.0, 10.0, 0.0  &
   tstiffness = 1.0E+04, 1.0E+04, 0.0  &
   torque_preload = 0.0, 0.0, 0.0
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Rear_Susp.DV_K  &
   units = "no_units"  &
   range = 67.5, 82.5  &
   use_allowed_values = no  &
   real_value = 82.5
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Rear_Susp.kinematic_sim  &
   commands =   &
              "simulation single_run transient type=kinematic initial_static=no end_time=2.0 number_of_steps=200 model_name=.Rear_Susp"
!
simulation script create  &
   sim_script_name = .Rear_Susp.prima_opt_kinematic_sim  &
   commands =   &
              "simulation single_run transient type=kinematic initial_static=no end_time=2.0 number_of_steps=200 model_name=.Rear_Susp"
!
simulation script create  &
   sim_script_name = .Rear_Susp.post_prima_opt_sim  &
   commands =   &
              "simulation single_run transient type=kinematic initial_static=no end_time=2.0 number_of_steps=200 model_name=.Rear_Susp"
!
simulation script create  &
   sim_script_name = .Rear_Susp.second_opt_sim  &
   commands =   &
              "simulation single_run transient type=kinematic initial_static=no end_time=2.0 number_of_steps=200 model_name=.Rear_Susp"
!
simulation script create  &
   sim_script_name = .Rear_Susp.cedevolezze_dynamic_sim  &
   commands =   &
              "simulation single_run transient type=dynamic initial_static=no end_time=2.0 number_of_steps=500 model_name=.Rear_Susp"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Rear_Susp.blocco_rotazione_wheel  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .Rear_Susp.tras_vert_wheel  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .Rear_Susp.molla_triangle_ground  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Rear_Susp.molla_triangle_ground  &
   color = RED
!
ude create instance  &
   instance_name = .Rear_Susp.general_motion_1  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.i_marker  &
   object_value = (.Rear_Susp.wheel.MARKER_34)
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.j_marker  &
   object_value = (.Rear_Susp.swingarm.MARKER_35)
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.constraint  &
   object_value = (.Rear_Susp.rev_wheel_swingarm)
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.blocco_rotazione_wheel.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Rear_Susp.blocco_rotazione_wheel
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.i_marker  &
   object_value = .Rear_Susp.wheel.MARKER_36
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.j_marker  &
   object_value = .Rear_Susp.ground.MARKER_37
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.constraint  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t2_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t2_func  &
   string_value = "100*SIN(2*PI*time)"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.tras_vert_wheel.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Rear_Susp.tras_vert_wheel
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.i_marker  &
   object_value = (.Rear_Susp.triangle.MARKER_42)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.j_marker  &
   object_value = (.Rear_Susp.ground.MARKER_43)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.stiffness_coefficient  &
   real_value = (.Rear_Susp.DV_K)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.damping_coefficient  &
   real_value = (.Rear_Susp.DV_K / 100)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.preload  &
   real_value = (.Rear_Susp.DV_K)
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Rear_Susp.molla_triangle_ground.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Rear_Susp.molla_triangle_ground
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.i_marker  &
   object_value = (.Rear_Susp.beam.MARKER_38)
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.j_marker  &
   object_value = (.Rear_Susp.swingarm.MARKER_39)
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.constraint  &
   object_value = (.Rear_Susp.cylind_beam_swingarm)
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Rear_Susp.general_motion_1.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .Rear_Susp.general_motion_1
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9806.65  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .Rear_Susp.gravity  &
   visibility = off
!
!----------------------------- Analysis settings ------------------------------!
!
!
output_control set output  &
   model_name = Rear_Susp  &
   reqsave = off  &
   grsave = off
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .Rear_Susp.reazione_swingarm_ground  &
   from_first = yes  &
   object = .Rear_Susp.rev_swingarm_ground  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.reazione_swingarm_ground  &
   color = WHITE
!
measure create object  &
   measure_name = .Rear_Susp.reazione_triangle_ground  &
   from_first = yes  &
   object = .Rear_Susp.rev_triangle_ground  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.reazione_triangle_ground  &
   color = WHITE
!
measure create object  &
   measure_name = .Rear_Susp.reazione_swingarm_wheel  &
   from_first = no  &
   object = .Rear_Susp.rev_wheel_swingarm  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.reazione_swingarm_wheel  &
   color = WHITE
!
measure create object  &
   measure_name = .Rear_Susp.reazione_beam_swingarm  &
   from_first = yes  &
   object = .Rear_Susp.cylind_beam_swingarm  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.reazione_beam_swingarm  &
   active = off  &
   color = WHITE
!
measure create object  &
   measure_name = .Rear_Susp.reazione_beam_triangle  &
   from_first = yes  &
   object = .Rear_Susp.sph_beam_triangle  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.reazione_beam_triangle  &
   color = WHITE
!
measure create object  &
   measure_name = .Rear_Susp.bushing_beam_swingarm  &
   from_first = yes  &
   object = .Rear_Susp.cedevolezza_beam_swingarm  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.bushing_beam_swingarm  &
   color = WHITE
!
measure create point  &
   measure_name = .Rear_Susp.tra_Y_wheel  &
   point = .Rear_Susp.wheel.cm  &
   characteristic = translational_displacement  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.tra_Y_wheel  &
   color = WHITE
!
measure create point  &
   measure_name = .Rear_Susp.vel_Y_wheel  &
   point = .Rear_Susp.wheel.cm  &
   characteristic = translational_velocity  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.vel_Y_wheel  &
   color = WHITE
!
measure create point  &
   measure_name = .Rear_Susp.acc_Y_wheel  &
   point = .Rear_Susp.wheel.cm  &
   characteristic = translational_acceleration  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .Rear_Susp.acc_Y_wheel  &
   color = WHITE
!
measure create computed  &
   measure_name = .Rear_Susp.forza_molla  &
   text_of_expression = "0"  &
   units = "force"  &
   create_measure_display = no
!
entity attributes  &
   entity_name = .Rear_Susp.forza_molla  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Rear_Susp.x_mono  &
   units = "length"  &
   range = 30.0, 70.0  &
   use_allowed_values = no  &
   real_value = 70.0
!
variable create  &
   variable_name = .Rear_Susp.y_mono  &
   units = "length"  &
   range = 130.0, 160.0  &
   use_allowed_values = no  &
   real_value = 130.0
!
variable create  &
   variable_name = .Rear_Susp.x_triangle  &
   units = "length"  &
   range = -30.0, 30.0  &
   use_allowed_values = no  &
   real_value = 30.0
!
variable create  &
   variable_name = .Rear_Susp.y_triangle  &
   units = "length"  &
   range = -160.0, -110.0  &
   use_allowed_values = no  &
   real_value = -110.0
!
variable create  &
   variable_name = .Rear_Susp.G0  &
   units = "angle"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -10.0
!
variable create  &
   variable_name = .Rear_Susp.sw_l  &
   units = "length"  &
   range = 480.0, 540.0  &
   use_allowed_values = no  &
   real_value = 520.0
!
variable create  &
   variable_name = .Rear_Susp.sw_a  &
   units = "angle"  &
   range = 20.0, 40.0  &
   use_allowed_values = no  &
   real_value = 20.0
!
variable create  &
   variable_name = .Rear_Susp.L2  &
   units = "length"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 173.3333333333
!
variable create  &
   variable_name = .Rear_Susp.x_beam  &
   units = "length"  &
   range = 100.0, 120.0  &
   use_allowed_values = no  &
   real_value = 110.0
!
variable create  &
   variable_name = .Rear_Susp.y_beam  &
   units = "no_units"  &
   range = -250.0, -240.0  &
   use_allowed_values = no  &
   real_value = -240.0
!
variable create  &
   variable_name = .Rear_Susp.delta_tx  &
   units = "length"  &
   range = 10.0, 30.0  &
   use_allowed_values = no  &
   real_value = 30.0
!
variable create  &
   variable_name = .Rear_Susp.delta_ty  &
   units = "length"  &
   range = 5.0, 15.0  &
   use_allowed_values = no  &
   real_value = 15.0
!
!--------------------- Adams View Optimization Objective ----------------------!
!
!
optimize objective create  &
   objective_name = .Rear_Susp.max_forza_molla  &
   measure_name = .Rear_Susp.forza_molla  &
   output_characteristic = absolute_maximum
!
optimize objective create  &
   objective_name = .Rear_Susp.max_reazione_beam_swingarm  &
   measure_name = .Rear_Susp.reazione_beam_swingarm  &
   output_characteristic = absolute_maximum
!
!---------------------------- Function definitions ----------------------------!
!
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Rear_Susp.blocco_rotazione_wheel
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Rear_Susp.tras_vert_wheel
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Rear_Susp.molla_triangle_ground
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Rear_Susp.general_motion_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
point modify  &
   point_name = .Rear_Susp.ground.P_swar_b  &
   location =   &
      (.Rear_Susp.L2 * COS(.Rear_Susp.G0 - .Rear_Susp.sw_a)),  &
      (.Rear_Susp.L2 * SIN(.Rear_Susp.G0 - .Rear_Susp.sw_a)),  &
      0.0
!
point modify  &
   point_name = .Rear_Susp.ground.P_beam_t  &
   location =   &
      (.Rear_Susp.x_beam),  &
      (.Rear_Susp.y_beam),  &
      0.0
!
point modify  &
   point_name = .Rear_Susp.ground.P_tr_ch  &
   location =   &
      (.Rear_Susp.x_triangle),  &
      (.Rear_Susp.y_triangle),  &
      0.0
!
point modify  &
   point_name = .Rear_Susp.ground.P_cyl_ch  &
   location =   &
      (.Rear_Susp.x_mono),  &
      (.Rear_Susp.y_mono),  &
      0.0
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_25  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_ch))
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_27  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_tr_ch))
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_37  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_43  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_cyl_ch))
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_44  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))
!
marker modify  &
   marker_name = .Rear_Susp.ground.MARKER_45  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))
!
material modify  &
   material_name = .Rear_Susp.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
material modify  &
   material_name = .Rear_Susp.aluminum  &
   density = (2740.0(kg/meter**3))  &
   youngs_modulus = (7.1705E+10(Newton/meter**2))
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_1  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_ch))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_2  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_24  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_ch))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_35  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_39  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.swingarm.MARKER_47  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   relative_to = .Rear_Susp.swingarm
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_4  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_tr_ch))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_5  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.triangle.P_cyl_tr))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_6  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_beam_t))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
point modify  &
   point_name = .Rear_Susp.triangle.P_cyl_tr  &
   location =   &
      (-.Rear_Susp.delta_tx + .Rear_Susp.L2 * COS(.Rear_Susp.G0 - .Rear_Susp.sw_a)),  &
      (.Rear_Susp.delta_ty + .Rear_Susp.L2 * SIN(.Rear_Susp.G0 - .Rear_Susp.sw_a)),  &
      0.0  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_26  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_tr_ch))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_41  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_beam_t))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.triangle.MARKER_42  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.triangle.P_cyl_tr))  &
   relative_to = .Rear_Susp.triangle
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.beam.MARKER_7  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Rear_Susp.ground.P_swar_b, .Rear_Susp.ground.P_beam_t, "X"))  &
   relative_to = .Rear_Susp.beam
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.beam.MARKER_8  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_beam_t))  &
   orientation =   &
      (ORI_ALONG_AXIS(.Rear_Susp.ground.P_swar_b, .Rear_Susp.ground.P_beam_t, "X"))  &
   relative_to = .Rear_Susp.beam
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.beam.MARKER_38  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   relative_to = .Rear_Susp.beam
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.beam.MARKER_40  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_beam_t))  &
   relative_to = .Rear_Susp.beam
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.beam.MARKER_46  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_swar_b))  &
   relative_to = .Rear_Susp.beam
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.wheel.MARKER_11  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 100}, .Rear_Susp.ground.P_whc))  &
   relative_to = .Rear_Susp.wheel
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.wheel.MARKER_34  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))  &
   relative_to = .Rear_Susp.wheel
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
marker modify  &
   marker_name = .Rear_Susp.wheel.MARKER_36  &
   location =   &
      (LOC_RELATIVE_TO({0, 0, 0}, .Rear_Susp.ground.P_whc))  &
   relative_to = .Rear_Susp.wheel
!
defaults coordinate_system  &
   default_coordinate_system = .Rear_Susp.ground
!
variable modify  &
   variable_name = .Rear_Susp.L2  &
   real_value = (.Rear_Susp.sw_l / 3)
!
measure modify computed  &
   measure_name = .Rear_Susp.forza_molla  &
   text_of_expression =   &
      "(.Rear_Susp.molla_triangle_ground.force)"
!
!
model display  &
   model_name = Rear_Susp

!
constraint attributes constraint_name=.Rear_Susp.cylind_beam_swingarm active=on
force attributes force_name=.Rear_Susp.cedevolezza_beam_swingarm active=off
data_element attributes data_element_name=.Rear_Susp.reazione_beam_swingarm active=on
data_element attributes data_element_name=.Rear_Susp.bushing_beam_swingarm active=off
