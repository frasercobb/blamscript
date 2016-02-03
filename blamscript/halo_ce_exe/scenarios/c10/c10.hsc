(global bool global_dialog_on false)

(global bool global_music_on false)

(global long global_delay_music
	(* 30.00 300.00))

(global long global_delay_music_alt
	(* 30.00 300.00))

(global bool debug false)

(global bool player_view_helmet false)

(global long crazy_marine_delay
	(* 30.00 2.00))

(global short continuous_save_counter 0)

(global short swamp_a_limiter 10)

(global short swamp_a_counter 0)

(global short int_a_limiter 10)

(global short int_a_counter 0)

(global bool control_door_a_wave true)

(global bool control_door_b_wave true)

(global bool control_door_c_wave true)

(global bool control_door_d_wave true)

(global bool control_door_e_wave true)

(global bool control_door_f_wave true)

(global bool control_door_g_wave true)

(global bool control_door_h_wave true)

(global long control_delay 60)

(global short control_limit 4)

(global short int_b_limiter 10)

(global short int_b_counter 0)

(global short swamp_b_player_locator 0)

(global long swamp_b_emitter_delay
	(* 30.00 25.00))

(global long sentinel_migration_delay
	(* 30.00 10.00))

(global short swamp_b_limiter 0)

(global short swamp_b_counter 0)

(global short swamp_b_infection_limiter 0)

(global bool swamp_b_ledge_a true)

(global bool swamp_b_ledge_b true)

(global bool swamp_b_ledge_c true)

(global bool swamp_b_ledge_d true)

(global bool swamp_b_ledge_e true)

(global bool swamp_b_ledge_f true)

(global bool swamp_b_flood_wave true)

(global short swamp_b_ledge_a_counter 0)

(global short swamp_b_ledge_b_counter 0)

(global short swamp_b_ledge_c_counter 0)

(global short swamp_b_ledge_d_counter 0)

(global short swamp_b_ledge_e_counter 0)

(global short swamp_b_ledge_f_counter 0)

(global short swamp_b_flood_counter 0)

(global short swamp_b_ledge_a_limit 2)

(global short swamp_b_ledge_b_limit 2)

(global short swamp_b_ledge_c_limit 2)

(global short swamp_b_ledge_d_limit 2)

(global short swamp_b_ledge_e_limit 2)

(global short swamp_b_ledge_f_limit 2)

(global short swamp_b_flood_limiter 3)

(global bool test_flee_halln false)

(global short tracker_bsp_index 0)

(global bool tracker_x50 false)

(global bool play_music_c10_01 false)

(global bool play_music_c10_01_alt false)

(global bool play_music_c10_02 false)

(global bool play_music_c10_02_alt false)

(global bool play_music_c10_03 false)

(global bool play_music_c10_03_alt false)

(global bool play_music_c10_04 false)

(global bool play_music_c10_04_alt false)

(global bool play_music_c10_05 false)

(global bool play_music_c10_05_alt false)

(global bool play_music_c10_06 false)

(global bool play_music_c10_06_alt false)

(global bool play_music_c10_07 false)

(global bool play_music_c10_07_alt false)

(global bool test_play_flash false)

(global bool test_ffw_flash false)

(script static unit player0
	(begin
		(unit
			(list_get
				(players) 0))))

(script static unit player1
	(begin
		(unit
			(list_get
				(players) 1))))

(script static short player_count
	(begin
		(list_count
			(players))))

(script static bool cinematic_skip_start
	(begin
		(cinematic_skip_start_internal)
		(game_save_totally_unsafe)
		(sleep_until
			(not
				(game_saving)) 1)
		(not
			(game_reverted))))

(script static void cinematic_skip_stop
	(begin
		(cinematic_skip_stop_internal)))

(script static void script_dialog_start
	(begin
		(sleep_until
			(not global_dialog_on))
		(set global_dialog_on true)
		(ai_dialogue_triggers false)))

(script static void script_dialog_stop
	(begin
		(ai_dialogue_triggers true)
		(sleep 30)
		(set global_dialog_on false)))

(script static void player_effect_impact
	(begin
		(player_effect_set_max_translation 0.05 0.05 0.08)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.40 1.00)
		(player_effect_start
			(real_random_range 0.70 0.90) 0.10)))

(script static void player_effect_explosion
	(begin
		(player_effect_set_max_translation 0.01 0.01 0.03)
		(player_effect_set_max_rotation 0.50 0.50 1.00)
		(player_effect_set_max_rumble 0.50 0.40)
		(player_effect_start
			(real_random_range 0.70 0.90) 0.10)))

(script static void player_effect_rumble
	(begin
		(player_effect_set_max_translation 0.01 0.00 0.02)
		(player_effect_set_max_rotation 0.10 0.10 0.20)
		(player_effect_set_max_rumble 0.50 0.30)
		(player_effect_start
			(real_random_range 0.70 0.90) 0.50)))

(script static void player_effect_vibration
	(begin
		(player_effect_set_max_translation 0.01 0.01 0.01)
		(player_effect_set_max_rotation 0.01 0.01 0.05)
		(player_effect_set_max_rumble 0.20 0.50)
		(player_effect_start
			(real_random_range 0.70 0.90) 1.00)))

(script static void c10_cinematic_placeholder
	(begin
		(cinematic_start)
		(sleep
			(* 30.00 2.50))
		(print insert cinematic here)
		(sleep
			(* 30.00 2.50))
		(cinematic_stop)))

(script static void cinematic_placeholder_endgame
	(begin
		(cinematic_start)
		(sleep
			(* 30.00 2.50))
		(print insert cinematic here)
		(sleep
			(* 30.00 2.50))))

(script dormant void dialog_initial_dropoff
	(begin
		(print pilot: we're here chief.)
		(print pilot: the last transmission from the captain's dropship was tracked to this location.)
		(print pilot: that was over 12 hours ago and since then no one's been able to raise captain keyes or his team.)))

(script dormant void dialog_pilot_patroling
	(begin
		(print pilot: i'll stay in the area just in case anything happens.)
		(print pilot: when you find the captain radio and i'll come pick up everyone.)))

(script dormant void dialog_pilot_nav_point
	(begin
		(print pilot: i'll mark the last known position of the captain's dropship on your motion sensor)))

(script dormant void dialog_pilot_good_luck
	(begin
		(print pilot: good luck sir.)))

(script static void dialog_repeating_message
	(begin
		(print [over the radio]... immediate assistance... can't raise him...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... attacked... something out there...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... swamp... not covenant...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... captain keyes... missing...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... forerunner structure in the swamp... heavy covenant presence...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... mayday... this is command dropship cerberus...)
		(sleep
			(* 30.00 2.00))
		(print [over the radio]... ... ...)
		(sleep
			(* 30.00 2.00))))

(script dormant void dialog_marine_a
	(begin
		(print marine: stay back!  you're one of them!  one of those monsters!)))

(script dormant void dialog_marine_b
	(begin
		(print marine: i said stay back!)))

(script dormant void dialog_marine_c
	(begin
		(print marine: (angry/scared) aaaaaah!!!!)))

(script dormant void dialog_marine_d
	(begin
		(print marine: get away!)))

(script dormant void dialog_marine_e
	(begin
		(print marine: find your own hiding place!)))

(script dormant void dialog_marine_f
	(begin
		(print marine: i'm smart!  i hid, not like the others… dead, worse than dead.)
		(print marine: those things hauled them off, still breathing… still screaming.)))

(script dormant void dialog_marine_g
	(begin
		(print marine: (hysterical) aaah!!! aaah!!! aaaaaah!!!)))

(script dormant void dialog_marine_h
	(begin
		(print marine: just leave me alone!)))

(script dormant void dialog_marine_i
	(begin
		(print marine: sarge, jenkins, bisenti… all of them!  those…things killed them all!)))

(script dormant void dialog_marine_j
	(begin
		(print marine: i don't want to go!)))

(script dormant void dialog_marine_k
	(begin
		(print marine: (crying) aaaaaah!!!!)))

(script dormant void dialog_marine_l
	(begin
		(print marine: no!)))

(script dormant void dialog_marine_m
	(begin
		(print marine: stay back you.  i won't end up like the others.  i won't let you take me!)))

(script dormant void dialog_pilot_found
	(begin
		(print pilot: chief is that you!?!  i lost your signal when you disappeared inside the structure.)
		(print pilot: what's going on down there?  i'm tracking movement all over the place!)))

(script dormant void dialog_cyborg_extraction
	(begin
		(print chief: i need extraction, i'll explain later.)))

(script dormant void dialog_pilot_no_can_do
	(begin
		(print pilot: i can't sir.)
		(print pilot: your somewhere under the swamp's canopy and i don't see any way through.)))

(script dormant void dialog_pilot_tower
	(begin
		(print pilot: there's a tower sticking up out of the fog a few hunder meters from your current location.)
		(print pilot: if you can climb above the canopy i can pick you up.)))

(script dormant void dialog_monitor_greetings
	(begin
		(print monitor: greetings!  i'm 342 guilty spark.)))

(script dormant void dialog_monitor_flood_a
	(begin
		(print monitor: it appears that someone has carelessly let loose the flood.)))

(script dormant void dialog_monitor_flood_b
	(begin
		(print monitor: the flood will try to leave halo if given the chance.)
		(print monitor: we need to stop them and i'll need your assistance.)))

(script dormant void dialog_monitor_leave
	(begin
		(print monitor: come with me.)))

(script dormant void dialog_pilot_lost_signal
	(begin
		(print pilot: chief!  i've lost your signal, where'd you go!?!  chief!  chief!)))

(script static void all_kill
	(begin
		(object_destroy keyes)
		(object_destroy johnson)
		(object_destroy mendoza)
		(object_destroy bisenti)
		(object_destroy jenkins)
		(object_destroy marine_1)
		(object_destroy marine_2)
		(object_destroy marine_3)
		(object_destroy_containing elite_corpse)))

(script static void all_create
	(begin
		(object_create keyes)
		(object_create johnson)
		(object_create mendoza)
		(object_create bisenti)
		(object_create jenkins)
		(object_create marine_1)
		(object_create marine_2)
		(object_create marine_3)
		(object_create_containing elite_corpse)
		(object_beautify chief true)
		(object_beautify keyes true)
		(object_beautify johnson true)
		(object_beautify mendoza true)
		(object_beautify bisenti true)
		(object_beautify jenkins true)
		(object_beautify marine_1 true)
		(object_beautify marine_2 true)
		(object_beautify marine_3 true)))

(script stub void emotions
	(begin
		(print merging cinema script failed)))

(script static void setup
	(begin
		(object_create_anew chief)
		(object_create_anew mendoza_dead)
		(object_create_anew jenkins_helmet)
		(object_create_anew shotgun)
		(object_create_anew lockpick)
		(object_create_anew_containing blood)
		(object_create_anew_containing ar_)
		(object_beautify mendoza_dead true)
		(object_teleport chief chief_base)
		(object_teleport mendoza_dead mendoza_base)
		(objects_attach control_door_a lockpick lockpick lockpick place)))

(script static void intro
	(begin
		(object_create_anew chief)
		(object_beautify chief true)
		(object_pvs_activate chief)
		(set rasterizer_near_clip_distance 0.01)
		(objects_attach chief right hand shotgun )
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_0710 true)
		(fade_in 1.00 1.00 1.00 15)
		(camera_set chief_door_1a 0)
		(camera_set chief_door_1b 90)
		(sleep 90)
		(camera_set chief_listen 0)
		(sleep 75)
		(camera_set chief_button_1 0)
		(sleep 60)
		(objects_detach chief shotgun)
		(object_destroy shotgun)
		(camera_set chief_button_2b 0)
		(camera_set chief_button_2a 75)
		(sleep 75)
		(object_create_anew shotgun)
		(objects_attach chief right hand shotgun )
		(camera_set chief_what_the 0)
		(camera_set what_the_1b 30)
		(sleep 60)
		(camera_set chief_turn_rev_1 0)
		(camera_set chief_turn_rev_2 60)
		(sleep 60)
		(camera_set chief_turn_rev_1 60)
		(sleep 50)
		(unit_stop_custom_animation chief)
		(unit_custom_animation_at_frame chief cinematics\animations\chief\x50\x50 x50_0710 false 350)
		(sleep 10)
		(camera_set chief_relax 0)
		(camera_set chief_relax_1b 60)
		(sleep 90)
		(camera_set chief_button_3 0)
		(camera_set shiny_red_button 60)
		(sleep
			(unit_get_custom_animation_time chief))
		(custom_animation mendoza_dead cinematics\animations\marines\x50\x50 x50_1010mendoza true)
		(object_pvs_activate mendoza_dead)
		(object_destroy chief)
		(camera_set mendoza_close 0)
		(device_set_position control_door_a 1.00)
		(camera_set mendoza_close_1b 45)
		(sleep 45)
		(object_create_anew chief)
		(object_create_anew shotgun)
		(objects_attach chief right hand shotgun )
		(object_beautify chief true)
		(object_pvs_activate chief)
		(unit_stop_custom_animation mendoza_dead)
		(unit_stop_custom_animation chief)
		(unit_custom_animation_at_frame chief cinematics\animations\chief\x50\x50 x50_1010 false 30)
		(unit_custom_animation_at_frame mendoza_dead cinematics\animations\marines\x50\x50 x50_1010mendoza false 30)
		(camera_set mendoza_catch_back 0)
		(camera_set sack_of_potatoes_1a 60)
		(sleep
			(-
				(unit_get_custom_animation_time chief) 15.00))
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_1210 false)
		(custom_animation mendoza_dead cinematics\animations\marines\x50\x50 x50_1210mendoza false)
		(camera_set mendoza_swing_1a 0)
		(camera_set mendoza_swing_1b 60)
		(sleep
			(unit_get_custom_animation_time chief))
		(unit_custom_animation_at_frame chief cinematics\animations\chief\x50\x50 x50_1310 false 50)
		(unit_custom_animation_at_frame mendoza_dead cinematics\animations\marines\x50\x50 x50_1310mendoza false 50)
		(camera_set chief_rush_1 0)
		(camera_set chief_rush_2 90)
		(sleep 60)
		(device_set_position control_door_a 0.00)
		(sleep
			(camera_time))
		(unit_stop_custom_animation chief)
		(unit_stop_custom_animation mendoza_dead)
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_1410 true)
		(custom_animation mendoza_dead cinematics\animations\marines\x50\x50 x50_1410mendoza true)
		(camera_set chief_reveal_1 0)
		(camera_set chief_reveal_2 120)
		(sleep 150)
		(camera_set mendoza_drop_1 0)
		(camera_set mendoza_drop_2 90)
		(sleep 90)
		(camera_set duck_walk_1b 0)
		(camera_set duck_walk_1c 90)
		(unit_stop_custom_animation chief)
		(object_destroy chief)
		(object_create_anew chief_crouch)
		(object_beautify chief_crouch true)
		(object_pvs_activate chief_crouch)
		(object_teleport chief_crouch chief_crouch_base)
		(recording_play chief_crouch chief_crouch_walk)
		(sleep
			(-
				(recording_time chief_crouch) 15.00))
		(object_destroy chief_crouch)
		(object_create_anew chief)
		(object_create_anew shotgun)
		(objects_attach chief right hand shotgun )
		(object_beautify chief true)
		(object_pvs_activate chief)
		(cinematic_set_near_clip_distance 0.01)
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_1910 false)
		(camera_set helmet_close 0)
		(sleep 70)
		(objects_detach chief shotgun)
		(objects_attach chief right hand jenkins_helmet right hand helmet)
		(sleep
			(unit_get_custom_animation_time chief))
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_2010 true)
		(sleep 90)
		(camera_set chip_inspect 0)
		(sleep 180)
		(camera_set helmet_closeup 0)
		(object_create_anew jenkins_chip)
		(objects_attach chief left hand jenkins_chip chip in hand)
		(sleep 90)
		(camera_set chip_rush_2 30)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 3 2 1.00 10.00 1.00)
		(fade_out 1.00 1.00 1.00 30)
		(sleep 15)
		(effect_new_on_object_marker cinematics\effects\cyborg chip insertion chief left hand)
		(sleep 15)
		(objects_detach chief jenkins_helmet)
		(object_pvs_activate none)
		(device_set_position control_door_a 0.00)
		(object_destroy lockpick)
		(cinematic_screen_effect_stop)
		(cinematic_set_near_clip_distance 0.06)
		(sound_class_set_gain vehicle_engine 0.00 0)))

(script static void pelican
	(begin
		(cinematic_set_title postmortem)
		(sleep 120)
		(cinematic_set_title jenkins)
		(sleep 120)
		(object_create_anew johnson)
		(object_create_anew mendoza)
		(object_create_anew bisenti)
		(object_create_anew jenkins)
		(object_create_anew marine_2)
		(object_create_anew x50_pelican_1)
		(camera_set_first_person jenkins)
		(object_pvs_activate jenkins)
		(recording_play jenkins jenkins_pelican)
		(object_teleport x50_pelican_1 x50_pelican_1_in)
		(recording_play x50_pelican_1 x50_pelican_1_in)
		(unit_enter_vehicle johnson x50_pelican_1 p-riderrb)
		(unit_enter_vehicle mendoza x50_pelican_1 p-riderlb)
		(unit_enter_vehicle bisenti x50_pelican_1 p-riderrm)
		(unit_enter_vehicle jenkins x50_pelican_1 p-riderlm)
		(unit_enter_vehicle marine_2 x50_pelican_1 p-riderrf)
		(ai_attach_free johnson characters\captain\captain)
		(ai_attach_free mendoza characters\captain\captain)
		(ai_attach_free bisenti characters\captain\captain)
		(ai_command_list_by_unit johnson look_at_mendoza)
		(ai_command_list_by_unit mendoza look_at_johnson)
		(ai_command_list_by_unit bisenti look_at_johnson)
		(set test_play_flash true)
		(sleep 90)
		(sound_looping_start sound\sinomatixx_music\x50_music02 none 0.70)
		(sound_class_set_gain ambient_machinery 1.00 60)
		(sound_class_set_gain ambient_nature 1.00 60)
		(sleep 90)
		(sound_impulse_start sound\dialog\x50\men01 mendoza 1.00)
		(print mendoza: hey sarge, why do we always have to listen to this old stuff?)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\men01) 60.00))
		(print mendoza done)
		(fade_in 0.00 0.00 0.00 30)
		(sound_class_set_gain vehicle_engine 0.60 3)
		(sleep
			(sound_impulse_time sound\dialog\x50\men01))
		(sound_impulse_start sound\dialog\x50\sgt01 johnson 1.00)
		(print johnson: watch yer mouth, boy! this 'stuff' is your history. it should remind you grunts what we're fighting to protect!)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt01))
		(print johnson done)
		(ai_command_list_by_unit mendoza look_at_jenkins)
		(sound_impulse_start sound\dialog\x50\men02 mendoza 1.00)
		(print mendoza: hey, if the covenant want to wipe out this particular part of my history, that's fine by me.)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\men02) 15.00))
		(print mendoza done)
		(ai_command_list_by_unit mendoza look_at_bisenti)
		(ai_command_list_by_unit bisenti look_at_mendoza)
		(sound_impulse_start sound\dialog\x50\bis01 bisenti 1.00)
		(print bisenti: yeah. better it than us.)
		(sleep
			(sound_impulse_time sound\dialog\x50\bis01))
		(print bisenti done)
		(ai_command_list_by_unit johnson look_at_bisenti)
		(ai_command_list_by_unit mendoza look_at_johnson)
		(ai_command_list_by_unit bisenti look_at_johnson)
		(sound_impulse_start sound\dialog\x50\sgt02 johnson 1.00)
		(print johnson: you ask 'em real nice next time you see 'em, bisenti. i'm sure they'll be happy to oblige.)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt02))
		(print johnson done)
		(sound_impulse_start sound\dialog\x50\pilot01 none 1.00)
		(print pilot: lz looks clean. i'm bringing us down.)
		(sleep
			(sound_impulse_time sound\dialog\x50\pilot01))
		(print pilot done)
		(sleep 90)
		(vehicle_hover x50_pelican_1 true)
		(sound_impulse_start sound\dialog\x50\sgt03 johnson 1.00)
		(print go, go, go!)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt03))
		(print johnson done)
		(sound_class_set_gain weapon_fire 0.00 0)
		(sound_class_set_gain projectile_detonation 0.00 0)
		(sound_class_set_gain projectile_impact 0.00 0)
		(sound_class_set_gain unit_footsteps 0.00 0)
		(sound_class_set_gain unit_dialog 0.00 0)
		(sound_class_set_gain ambient_nature 0.00 0)
		(sound_class_set_gain ambient_machinery 0.00 0)
		(sound_class_set_gain vehicle_engine 0.00 0)
		(sound_looping_stop sound\sinomatixx_music\x50_music02)))

(script static void door_setup
	(begin
		(object_create johnson)
		(object_create mendoza)
		(object_create bisenti)
		(object_create jenkins)
		(object_create marine_2)
		(object_teleport johnson johnson_ent)
		(object_teleport mendoza mendoza_ent)
		(object_teleport bisenti bisenti_ent)
		(object_teleport jenkins jenkins_ent)
		(object_teleport marine_2 marine_2_ent)))

(script static void door
	(begin
		(object_create_anew johnson)
		(object_create_anew mendoza)
		(object_create_anew bisenti)
		(object_create_anew jenkins)
		(object_create_anew marine_2)
		(object_destroy_containing blood)
		(object_destroy_containing ar_)
		(object_destroy_containing x50_rock)
		(object_teleport johnson johnson_ent)
		(object_teleport mendoza mendoza_ent)
		(object_teleport bisenti bisenti_ent)
		(object_teleport jenkins jenkins_ent)
		(object_teleport marine_2 marine_2_ent)
		(camera_set_first_person jenkins)
		(recording_play johnson johnson_door_run)
		(recording_play jenkins jenkins_ent_3)
		(recording_play mendoza mendoza_door_advance)
		(recording_play bisenti bisenti_door_guard)
		(recording_play marine_2 marine_2_door_advance)
		(sleep 80)
		(fade_in 0.00 0.00 0.00 30)
		(sound_class_set_gain weapon_fire 1.00 3)
		(sound_class_set_gain projectile_detonation 1.00 3)
		(sound_class_set_gain projectile_impact 1.00 3)
		(sound_class_set_gain unit_footsteps 1.00 3)
		(sound_class_set_gain unit_dialog 1.00 3)
		(sound_class_set_gain ambient_nature 1.00 3)
		(sound_class_set_gain ambient_machinery 1.00 3)
		(sound_class_set_gain vehicle_engine 1.00 3)
		(sleep 80)
		(sound_looping_start sound\sinomatixx_foley\x50_foley2 none 1.00)
		(sound_impulse_start sound\dialog\x50\sgt04 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt04))
		(sleep 150)
		(custom_animation johnson cinematics\animations\marines\x50\x50 x50_3210johnson true)
		(sound_impulse_start sound\dialog\x50\sgt04b johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt04b))
		(sleep 120)
		(sound_impulse_start sound\dialog\x50\sgt06 johnson 1.00)
		(sleep 60)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt06))
		(sound_impulse_start sound\dialog\x50\bis02 bisenti 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\bis02))
		(sleep 30)
		(sound_impulse_start sound\dialog\x50\sgt05 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt05))
		(sleep 60)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 15)
		(sound_class_set_gain weapon_fire 0.00 0)
		(sound_class_set_gain projectile_detonation 0.00 0)
		(sound_class_set_gain projectile_impact 0.00 0)
		(sound_class_set_gain unit_footsteps 0.00 0)
		(sound_class_set_gain unit_dialog 0.00 0)
		(sound_class_set_gain ambient_nature 0.00 0)
		(sound_class_set_gain ambient_machinery 0.00 0)
		(sound_class_set_gain vehicle_engine 0.00 0)
		(recording_kill jenkins)
		(recording_kill johnson)
		(recording_kill mendoza)
		(recording_kill bisenti)
		(recording_kill marine_1)))

(script static void check_setup
	(begin
		(object_teleport keyes keyes_check)
		(object_teleport johnson johnson_check)
		(object_teleport mendoza mendoza_check)
		(object_teleport bisenti bisenti_check)
		(object_teleport jenkins jenkins_check)
		(object_teleport marine_2 marine_2_check)))

(script static void check
	(begin
		(object_create_anew keyes)
		(object_create_anew marine_1)
		(object_create_anew marine_3)
		(object_create_anew_containing elite_corpse)
		(object_create_anew johnson)
		(object_create_anew mendoza)
		(object_create_anew bisenti)
		(object_create_anew jenkins)
		(object_create_anew marine_2)
		(object_teleport keyes keyes_check)
		(object_teleport marine_1 marine_1_check)
		(object_teleport marine_3 marine_3_check)
		(object_teleport marine_2 marine_2_check)
		(object_teleport johnson johnson_check)
		(object_teleport mendoza mendoza_check)
		(object_teleport bisenti bisenti_check)
		(object_teleport jenkins jenkins_check)
		(recording_play jenkins jenkins_check_3)
		(camera_set_first_person jenkins)
		(object_pvs_activate jenkins)
		(sleep 30)
		(recording_play marine_1 marine_1_check)
		(recording_play marine_3 marine_3_check)
		(sleep 30)
		(recording_play mendoza mendoza_check)
		(recording_play johnson johnson_check)
		(recording_play bisenti bisenti_check)
		(recording_play marine_2 marine_2_check)
		(unit_set_seat keyes alert)
		(recording_play keyes keyes_check_2)
		(sleep 60)
		(fade_in 0.00 0.00 0.00 15)
		(sound_class_set_gain weapon_fire 1.00 3)
		(sound_class_set_gain projectile_detonation 1.00 3)
		(sound_class_set_gain projectile_impact 1.00 3)
		(sound_class_set_gain unit_footsteps 1.00 3)
		(sound_class_set_gain unit_dialog 1.00 3)
		(sound_class_set_gain ambient_nature 1.00 3)
		(sound_class_set_gain ambient_machinery 1.00 3)
		(sound_class_set_gain vehicle_engine 1.00 3)
		(sound_impulse_start sound\dialog\x50\men05 mendoza 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\men05))
		(custom_animation mendoza cinematics\animations\marines\x50\x50 x50_3410mendoza true)
		(sound_impulse_start sound\dialog\x50\men06 mendoza 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\men06))
		(sound_impulse_start sound\dialog\x50\sgt09 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt09))
		(sound_impulse_start sound\dialog\x50\men07 mendoza 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\men07))
		(sleep 30)
		(sound_impulse_start sound\dialog\x50\key01 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\key01))
		(sound_impulse_start sound\dialog\x50\sgt10 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt10))
		(sound_impulse_start sound\dialog\x50\key02 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\key02))
		(sound_impulse_start sound\dialog\x50\men08 mendoza 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x50\men08))
		(sleep 15)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 15)
		(recording_kill jenkins)
		(recording_kill johnson)
		(recording_kill mendoza)
		(recording_kill bisenti)
		(recording_kill keyes)
		(recording_kill marine_1)
		(recording_kill marine_2)
		(recording_kill marine_3)
		(sound_class_set_gain weapon_fire 0.00 0)
		(sound_class_set_gain projectile_detonation 0.00 0)
		(sound_class_set_gain projectile_impact 0.00 0)
		(sound_class_set_gain unit_footsteps 0.00 0)
		(sound_class_set_gain unit_dialog 0.00 0)
		(sound_class_set_gain ambient_nature 0.00 0)
		(sound_class_set_gain ambient_machinery 0.00 0)
		(sound_class_set_gain vehicle_engine 0.00 0)))

(script static void lab_setup_1
	(begin
		(object_create control_door_a)
		(object_teleport keyes keyes_lab)
		(object_teleport johnson johnson_lab)
		(object_teleport mendoza mendoza_lab)
		(object_teleport bisenti bisenti_lab)
		(object_teleport jenkins jenkins_lab)
		(object_teleport marine_2 marine_2_lab)
		(object_teleport marine_1 marine_1_lab_1)
		(object_teleport marine_3 marine_3_lab_1)))

(script static void lab_setup_2
	(begin
		(object_teleport keyes keyes_lab_2)
		(object_teleport marine_1 marine_1_lab_2)
		(object_teleport marine_3 marine_3_lab_2)
		(object_teleport mendoza mendoza_flood)
		(object_teleport johnson johnson_flood)))

(script static void lab_setup_3
	(begin
		(object_teleport bisenti keyes_lab_2)
		(object_teleport marine_2 marine_1_lab_2)))

(script static void lab
	(begin
		(sound_class_set_gain unit_dialog 0.00 0)
		(sound_class_set_gain music 1.00 0)
		(object_destroy mendoza_dead)
		(object_destroy chief)
		(object_destroy jenkins_helmet)
		(object_destroy shotgun)
		(object_destroy jenkins_chip)
		(object_create_anew keyes)
		(object_create_anew johnson)
		(object_create_anew mendoza)
		(object_create_anew bisenti)
		(object_create_anew jenkins)
		(object_create_anew marine_2)
		(object_create_anew infection_1)
		(object_create_anew control_door_a)
		(object_teleport keyes keyes_lab)
		(object_teleport johnson johnson_lab)
		(object_teleport mendoza mendoza_lab)
		(object_teleport bisenti bisenti_lab)
		(object_teleport jenkins jenkins_lab)
		(object_teleport marine_2 marine_2_lab)
		(device_set_position control_door_a 0.00)
		(camera_set_first_person jenkins)
		(recording_play jenkins jenkins_lab_3)
		(object_pvs_activate jenkins)
		(sleep 60)
		(recording_play bisenti bisenti_lab_in)
		(recording_play mendoza mendoza_lab_in)
		(recording_play johnson johnson_lab_in)
		(recording_play marine_2 marine_2_lab_in)
		(recording_play marine_1 marine_1_lab_in)
		(recording_play marine_3 marine_3_lab_in)
		(sleep 30)
		(fade_in 0.00 0.00 0.00 30)
		(sound_class_set_gain weapon_fire 1.00 3)
		(sound_class_set_gain projectile_detonation 1.00 3)
		(sound_class_set_gain projectile_impact 1.00 3)
		(sound_class_set_gain unit_footsteps 1.00 3)
		(sound_class_set_gain unit_dialog 0.50 1)
		(sound_class_set_gain ambient_nature 1.00 3)
		(sound_class_set_gain ambient_machinery 1.00 3)
		(sound_class_set_gain vehicle_engine 1.00 3)
		(sound_impulse_start sound\dialog\x50\key03 keyes 1.00)
		(print keyes: alright then, let's get this door open.)
		(sleep
			(sound_impulse_time sound\dialog\x50\key03))
		(print done)
		(sound_impulse_start sound\dialog\x50\men09 mendoza 1.00)
		(print mendoza: i'll try, sir. but it looks like these covenant tried pretty hard to lock it down.)
		(sleep
			(sound_impulse_time sound\dialog\x50\men09))
		(print done)
		(sound_impulse_start sound\dialog\x50\key04 keyes 1.00)
		(print keyes: just do it, son.)
		(sleep
			(sound_impulse_time sound\dialog\x50\key04))
		(print done)
		(custom_animation mendoza cinematics\animations\marines\x50\x50 x50_3310bisenti true)
		(sound_impulse_start sound\sinomatixx_foley\x50_bisenti control_door_a 1.00)
		(wake door_open)
		(sound_impulse_start sound\dialog\x50\men10 mendoza 1.00)
		(print mendoza: yes, sir.)
		(sleep
			(sound_impulse_time sound\dialog\x50\men10))
		(print done)
		(object_create lockpick)
		(sleep 75)
		(objects_attach mendoza left hand lockpick left hand lockpick)
		(sleep 63)
		(objects_detach mendoza lockpick)
		(objects_attach control_door_a lockpick lockpick lockpick place)
		(sleep
			(unit_get_custom_animation_time mendoza))
		(print mendoza done)
		(sleep 500)
		(recording_kill mendoza)
		(recording_kill johnson)
		(recording_kill marine_3)
		(recording_kill marine_1)
		(print sleep done)
		(object_create_anew marine_1)
		(object_create_anew marine_3)
		(object_create_anew keyes_pistol)
		(object_teleport keyes_pistol keyes_lab_2)
		(object_teleport marine_1 marine_1_lab_2)
		(object_teleport marine_3 marine_3_lab_2)
		(object_teleport mendoza mendoza_flood)
		(object_teleport johnson johnson_flood)
		(recording_play keyes_pistol keyes_lab_2)
		(recording_play mendoza mendoza_lab_2)
		(recording_play johnson johnson_lab_2)
		(recording_play marine_3 marine_3_lab_2)
		(recording_play marine_1 marine_1_lab_2)
		(sound_impulse_start sound\dialog\x50\men11 mendoza 1.00)
		(print mendoza: i got a bad feeling about this.)
		(sleep
			(sound_impulse_time sound\dialog\x50\men11))
		(print done)
		(sound_impulse_start sound\dialog\x50\sgt11 johnson 1.00)
		(print johnson: you always got a bad feeling about something, boy.)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\sgt11) 30.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\mar101 none 1.00)
		(custom_animation johnson cinematics\animations\marines\x50\x50 x50_3810johnson true)
		(print marine 1: sarge? captain? <static> can you hear me?)
		(sleep
			(sound_impulse_time sound\dialog\x50\mar101))
		(print done)
		(sound_impulse_start sound\dialog\x50\key05 keyes 1.00)
		(print keyes: what's going on soldier?)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\key05) 30.00))
		(print done)
		(object_teleport bisenti bisenti_flood)
		(object_teleport marine_2 marine_2_flood)
		(sound_impulse_start sound\dialog\x50\mar102 none 1.00)
		(print marine 1: we got contacts! lots of them! but they're not <static> just tearing through us!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\mar102) 30.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\sgt13 johnson 1.00)
		(print johnson: corporal, do you copy? over? )
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt13))
		(print done)
		(sleep 60)
		(sound_looping_start sound\sinomatixx_foley\x50_foley3 none 1.00)
		(sound_impulse_start sound\dialog\x50\sgt14 johnson 1.00)
		(print johnson: mendoza, get your ass up to 2nd squad's position, and find out what the hell is going on.)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\sgt14) 30.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\men12 mendoza 1.00)
		(print mendoza: but, sir--)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\men12) 15.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\sgt15 johnson 1.00)
		(print johnson: i don't have time for your lip, soldier. i gave you an order!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\sgt15) 30.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\men13 mendoza 1.00)
		(print mendoza: but, sarge, listen!)
		(sleep
			(sound_impulse_time sound\dialog\x50\men13))
		(print done)
		(sleep 30)
		(sound_impulse_start sound\dialog\x50\key06 keyes 1.00)
		(print keyes: what is that?)
		(sleep
			(sound_impulse_time sound\dialog\x50\key06))
		(print done)
		(wake control_infection)
		(sound_impulse_start sound\dialog\x50\sgt16 johnson 1.00)
		(print johnson: where's that coming from, mendoza?)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\sgt16) 30.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\men14 mendoza 1.00)
		(print mendoza: everywhere! i don't--)
		(sleep
			(sound_impulse_time sound\dialog\x50\men14))
		(print done)
		(device_set_position control_door_bashed_f 1.00)
		(sound_impulse_start sound\dialog\x50\men15 mendoza 1.00)
		(print mendoza: there! mira!)
		(sleep
			(sound_impulse_time sound\dialog\x50\men15))
		(print done)
		(custom_animation mendoza characters\marine\marine stand rifle warn%1 true)
		(sleep 30)
		(custom_animation infection_1 cinematics\animations\flood_infection\x50\x50 x50_4110flood true)
		(custom_animation marine_2 cinematics\animations\marines\x50_normal\x50_normal x50_4110mar2 true)
		(sleep 60)
		(sound_impulse_start sound\dialog\x50\mar201 marine_2 1.00)
		(print marine 2: gaah!)
		(sleep 40)
		(custom_animation bisenti cinematics\animations\marines\x50\x50 x50_4110bisenti true)
		(sound_impulse_start sound\dialog\x50\mar202 marine_2 1.00)
		(print marine 2: get it out! get-it-out!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\mar202) 60.00))
		(print done)
		(sound_impulse_start sound\dialog\x50\bis04 bisenti 1.00)
		(print bisenti: hold still! hold still!)
		(sleep
			(sound_impulse_time sound\dialog\x50\bis04))
		(sound_impulse_start sound\dialog\x50\sgt17 johnson 1.00)
		(print johnson: let 'em have it!)
		(sleep 30)
		(sound_impulse_start sound\dialog\x50\bis06 bisenti 1.00)
		(print bisenti: aaargh!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\bis06) 30.00))
		(sleep
			(unit_get_custom_animation_time bisenti))
		(sound_impulse_start sound\dialog\x50\key07 keyes 1.00)
		(print keyes: sargeant, we're surrounded!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\key07) 30.00))
		(sound_impulse_start sound\dialog\x50\sgt18 johnson 1.00)
		(print johnson: god damn it, jenkins! fire your weapon!)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt18))
		(sound_impulse_start sound\dialog\x50\men16 mendoza 1.00)
		(print mendoza: there are too many of 'em!)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\men16) 30.00))
		(sound_impulse_start sound\dialog\x50\sgt19 johnson 1.00)
		(print johnson: don't even think about it, marine!)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt19))
		(sleep 60)
		(object_cannot_take_damage jenkins)
		(object_cannot_take_damage johnson)
		(object_cannot_take_damage keyes_pistol) lab
		(custom_animation mendoza cinematics\animations\marines\x50\x50 x50_4110mendoza false)
		(sleep 30)
		(sound_impulse_start sound\dialog\x50\men17 mendoza 1.00)
		(print mendoza: aw, this is loco!)
		(sleep
			(sound_impulse_time sound\dialog\x50\men17))
		(wake the_horror)
		(sound_impulse_start sound\dialog\x50\key08 keyes 1.00)
		(print keyes: get back here, marine! that's an order!)
		(sleep
			(unit_get_custom_animation_time mendoza))
		(object_destroy mendoza)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x50\key08) 15.00))
		(sound_impulse_start sound\dialog\x50\sgt20 johnson 1.00)
		(print johnson: jenkins!)
		(sleep
			(sound_impulse_time sound\dialog\x50\sgt20))
		(sleep 30)
		(fade_out 0.00 0.00 0.00 0)
		(print jenkins dead)
		(ai_erase infection)
		(object_destroy lockpick)
		(object_destroy infection_jenkins)
		(object_destroy mendoza_dead)
		(object_destroy chief)
		(object_destroy jenkins_helmet)
		(object_destroy shotgun)
		(object_destroy jenkins_chip)
		(object_destroy keyes)
		(object_destroy marine_1)
		(object_destroy marine_3)
		(object_destroy johnson)
		(object_destroy mendoza)
		(object_destroy bisenti)
		(object_destroy jenkins)
		(object_destroy marine_2)
		(object_destroy infection_1)
		(object_destroy_containing jenkins_infection)
		(cinematic_screen_effect_stop)
		(sound_class_set_gain unit_dialog 0.00 0)
		(sound_class_set_gain weapon_fire 0.00 0)
		(sound_class_set_gain projectile_detonation 0.00 0)
		(sound_class_set_gain projectile_impact 0.00 0)
		(sound_class_set_gain unit_footsteps 0.00 0)
		(sound_class_set_gain ambient_nature 0.00 0)
		(sound_class_set_gain ambient_machinery 0.00 0)))

(script static void flood
	(begin
		(custom_animation infection_1 cinematics\animations\flood_infection\x50\x50 x50_4110flood true)
		(custom_animation marine_2 cinematics\animations\marines\x50_normal\x50_normal x50_4110mar2 true)
		(custom_animation bisenti cinematics\animations\marines\x50\x50 x50_4110bisenti true)
		(sleep 100)
		(object_teleport bisenti bisenti_flood)))

(script static void mendoza_unlock
	(begin
		(custom_animation mendoza cinematics\animations\marines\x50\x50 x50_3310bisenti true)))

(script static void mendoza_flee
	(begin
		(custom_animation mendoza cinematics\animations\marines\x50\x50 x50_4110mendoza true)
		(custom_animation keyes cinematics\animations\marines\x50\x50 x50_4110captain true)))

(script static void final
	(begin
		(sound_looping_start sound\sinomatixx_music\x50_music03 none 1.00)
		(cinematic_set_near_clip_distance 0.01)
		(object_create_anew chief)
		(object_create_anew jenkins_chip)
		(object_create_anew shotgun)
		(objects_attach chief right hand shotgun )
		(object_beautify chief true)
		(object_pvs_activate chief)
		(object_teleport chief player0_playon_base)
		(objects_attach chief left hand jenkins_chip chip in hand)
		(camera_set chief_final_1a 0)
		(camera_set chief_final_1b 60)
		(sound_impulse_start sound\sinomatixx_foley\x50_throw_chip none 1.00)
		(custom_animation chief cinematics\animations\chief\x50\x50 x50_4710 true)
		(fade_in 1.00 1.00 1.00 15)
		(sound_class_set_gain weapon_fire 1.00 3)
		(sound_class_set_gain projectile_detonation 1.00 3)
		(sound_class_set_gain projectile_impact 1.00 3)
		(sound_class_set_gain unit_footsteps 1.00 3)
		(sound_class_set_gain unit_dialog 1.00 3)
		(sound_class_set_gain ambient_nature 1.00 3)
		(sound_class_set_gain ambient_machinery 1.00 3)
		(sound_class_set_gain vehicle_engine 1.00 3)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 3 2 10.00 0.25 1.00)
		(sleep 150)
		(objects_detach chief jenkins_chip)
		(object_destroy jenkins_chip)
		(camera_set final_2a 0)
		(camera_set final_2b 120)
		(sleep
			(-
				(unit_get_custom_animation_time chief) 15.00))
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(object_destroy chief)
		(object_destroy shotgun)
		(object_destroy mendoza_dead)
		(cinematic_set_near_clip_distance 0.06)))

(script static void x50
	(begin
		(fade_out 1.00 1.00 1.00 30)
		(sound_looping_start sound\sinomatixx_foley\x50_foley1 none 1.00)
		(sleep 20)
		(sound_looping_start sound\sinomatixx_music\x50_music01 none 1.00)
		(sound_class_set_gain ambient 0.50 0)
		(sleep 30)
		(switch_bsp 2)
		(object_teleport x50 player0_int_base)
		(object_teleport x50 player1_int_base)
		(unit_suspended x50 true)
		(unit_suspended x50 true)
		(camera_control true)
		(cinematic_start) x50 x50
		(fade_out 0.00 0.00 0.00 0)
		(switch_bsp 0)
		(object_teleport x50 player0_ext_base)
		(object_teleport x50 player1_ext_base)
		(cinematic_screen_effect_stop)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_video 2 2.00)
		(set weather false)
		(sound_class_set_gain device_door 0.00 0) x50
		(fade_out 0.00 0.00 0.00 0)
		(set test_play_flash false)
		(set test_ffw_flash true)
		(sound_impulse_start sound\sinomatixx_foley\x50_ffw_play none 1.00)
		(sleep 120)
		(set test_ffw_flash false)
		(set test_play_flash true)
		(sleep 30)
		(set weather true)
		(sound_class_set_gain device_door 1.00 0) x50
		(switch_bsp 2)
		(object_teleport x50 player0_int_base)
		(object_teleport x50 player1_int_base)
		(set test_play_flash false)
		(set test_ffw_flash true)
		(sound_impulse_start sound\sinomatixx_foley\x50_ffw_play none 1.00)
		(sleep 120)
		(set test_ffw_flash false)
		(set test_play_flash true)
		(sleep 30)
		(cinematic_screen_effect_stop)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_video 1 2.00) x50
		(fade_out 0.00 0.00 0.00 0)
		(set test_play_flash false)
		(set test_ffw_flash true)
		(sound_impulse_start sound\sinomatixx_foley\x50_ffw_play none 1.00)
		(sleep 120)
		(set test_ffw_flash false)
		(set test_play_flash true)
		(sleep 30)
		(cinematic_screen_effect_stop)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_video 1 2.00) x50
		(device_set_position control_door_a 0.00)
		(set test_play_flash false)
		(sleep 30)
		(cinematic_set_title halt)
		(cinematic_set_title incapacitation_red)
		(sleep 150)
		(cinematic_set_title terminated)
		(sleep 90)
		(cinematic_screen_effect_stop)
		(cinematic_show_letterbox true) x50
		(unit_suspended x50 false)
		(unit_suspended x50 false)
		(object_destroy chief)
		(object_destroy keyes_pistol)
		(object_destroy keyes)
		(object_destroy johnson)
		(object_destroy mendoza)
		(object_destroy mendoza_dead)
		(object_destroy jenkins)
		(object_destroy bisenti)
		(object_destroy marine_1)
		(object_destroy marine_2)
		(object_destroy marine_3)
		(object_create_anew_containing blood)
		(object_create_anew_containing ar_)
		(object_pvs_activate none)
		(sleep 30)
		(camera_control false)))

(script static void destroy_door_a
	(begin
		(object_destroy control_door_a)))

(script static void cutscene_extraction
	(begin
		(wake extraction_music)
		(fade_out 1.00 1.00 1.00 15)
		(camera_control true)
		(cinematic_start)
		(switch_bsp 5)
		(object_teleport cutscene_extraction player0_extract_base)
		(object_teleport cutscene_extraction player1_extract_base)
		(unit_suspended cutscene_extraction true)
		(unit_suspended cutscene_extraction true)
		(sleep 15)
		(object_create_anew chief_extraction)
		(object_create_anew monitor_cine)
		(object_create_anew rifle)
		(object_beautify chief true)
		(object_pvs_activate monitor_cine)
		(object_set_scale chief 0.10 0)
		(objects_attach chief_extraction right hand rifle )
		(object_teleport monitor_cine monitor_teleport_base)
		(camera_set chief_teleport_1a 0)
		(camera_set chief_teleport_1b 60)
		(fade_in 1.00 1.00 1.00 15)
		(object_create_anew chief_teleport_short)
		(device_set_position chief_teleport_short 1.00)
		(sleep 15)
		(object_teleport chief_extraction chief_teleport_base)
		(object_set_scale chief 1.00 15)
		(ai_attach_free monitor_cine characters\monitor\monitor)
		(ai_command_list_by_unit monitor_cine look_at_chief)
		(custom_animation chief_extraction cinematics\animations\chief\level_specific\c10\c10 c10seemonitor false)
		(sleep 90)
		(camera_set monitor_close_1a 0)
		(camera_set monitor_close_1b 180)
		(sound_impulse_start sound\dialog\c10\c10_extract_010_monitor monitor_cine 1.00)
		(print monitor: greetings. i am the monitor of installation zero four. i am 342 guilty spark.)
		(sleep
			(-
				(sound_impulse_time sound\dialog\c10\c10_extract_010_monitor) 30.00))
		(object_teleport chief_extraction chief_stand_base)
		(custom_animation chief_extraction cinematics\animations\chief\level_specific\c10\c10 c10inspectmonitor false)
		(sleep
			(sound_impulse_time sound\dialog\c10\c10_extract_010_monitor))
		(camera_set chief_rev_1a 0)
		(camera_set chief_rev_1b 200)
		(sleep 30)
		(sound_impulse_start sound\dialog\c10\c10_extract_020_monitor monitor_cine 1.00)
		(print monitor: unfortunate. someone has released the flood. it will be necessary for us to activate the installation's containment measures. please come with me.)
		(sleep
			(sound_impulse_time sound\dialog\c10\c10_extract_020_monitor))
		(sleep 30)
		(camera_set nature_of_flood_1a 0)
		(camera_set nature_of_flood_1b 180)
		(sound_impulse_start sound\dialog\c10\c10_extract_030_monitor monitor_cine 1.00)
		(print monitor: it is the nature of the flood to spread. my function is to prevent it from leaving this installation, but i require your assistance.)
		(sleep
			(sound_impulse_time sound\dialog\c10\c10_extract_030_monitor))
		(sound_impulse_start sound\dialog\c10\c10_extract_040_monitor monitor_cine 1.00)
		(print monitor: come. this way.)
		(sleep
			(sound_impulse_time sound\dialog\c10\c10_extract_040_monitor))
		(camera_set two_shot_1a 0)
		(camera_set two_shot_1b 60)
		(unit_stop_custom_animation chief)
		(object_create_anew chief_teleport)
		(device_set_position chief_teleport 1.00)
		(sleep 30)
		(object_set_scale chief_extraction 0.10 15)
		(object_set_scale rifle 0.10 15)
		(sleep 15)
		(object_destroy chief_extraction)
		(object_destroy rifle)
		(sleep
			(camera_time))
		(object_create_anew monitor_teleport)
		(device_set_position monitor_teleport 1.00)
		(object_set_scale monitor_cine 0.10 15)
		(camera_set dead_air_1a 0)
		(camera_set dead_air_1b 300)
		(sleep 15)
		(object_destroy chief_extraction)
		(object_destroy monitor_cine)
		(sleep 60)
		(sound_impulse_start sound\dialog\c10\c10_extract_050_pilot none 1.00)
		(print pilot: [radio] chief!  i've lost your signal, where'd you go!?! chief! chief!)
		(sleep 185)
		(fade_out 0.00 0.00 0.00 30)
		(sleep 45)))

(script continuous void flicker_bridge
	(begin
		(sleep_until
			(=
				(structure_bsp_index) 3) 1)
		(device_set_position bridge_c 0.00)
		(sleep
			(random_range 15 75))
		(device_set_position bridge_c
			(real_random_range 0.50 1.00))
		(sleep
			(random_range 15 75))))

(script continuous void bsp_biped_recycler
	(begin
		(sleep_until
			(!=
				(structure_bsp_index) tracker_bsp_index) 1)
		(if tracker_x50
			(begin
				(sleep 1))
			(if
				(=
					(structure_bsp_index) 0)
				(begin
					(begin
						(if
							(!= tracker_bsp_index 1)
							(ai_erase_all))
						(garbage_collect_now)
						(object_destroy_containing biped)
						(object_create_anew_containing bsp0_biped)
						(object_destroy_containing device)
						(object_create_anew_containing bsp0_device)
						(set tracker_bsp_index 0)))
				(if
					(=
						(structure_bsp_index) 1)
					(begin
						(begin
							(garbage_collect_now)
							(object_destroy_containing biped)
							(object_create_anew_containing bsp1_biped)
							(object_destroy_containing device)
							(object_create_anew_containing bsp1_device)
							(set tracker_bsp_index 1)))
					(if
						(=
							(structure_bsp_index) 2)
						(begin
							(begin
								(if
									(!= tracker_bsp_index 1)
									(ai_erase_all))
								(garbage_collect_now)
								(object_destroy_containing biped)
								(object_create_anew_containing bsp2_biped)
								(object_destroy_containing device)
								(object_create_anew_containing bsp2_device)
								(set tracker_bsp_index 2)))
						(if
							(=
								(structure_bsp_index) 3)
							(begin
								(begin
									(if
										(!= tracker_bsp_index 4)
										(ai_erase_all))
									(garbage_collect_now)
									(object_destroy_containing biped)
									(object_create_anew_containing bsp3_biped)
									(object_destroy_containing device)
									(object_create_anew_containing bsp3_device)
									(set tracker_bsp_index 3)))
							(if
								(=
									(structure_bsp_index) 4)
								(begin
									(begin
										(if
											(!= tracker_bsp_index 3)
											(ai_erase_all))
										(garbage_collect_now)
										(object_destroy_containing biped)
										(object_create_anew_containing bsp4_biped)
										(object_destroy_containing device)
										(object_create_anew_containing bsp4_device)
										(set tracker_bsp_index 4)))
								(if
									(=
										(structure_bsp_index) 5)
									(begin
										(begin
											(ai_erase_all)
											(garbage_collect_now)
											(object_destroy_containing biped)
											(object_create_anew_containing bsp5_biped)
											(object_destroy_containing device)
											(object_create_anew_containing bsp5_device)
											(set tracker_bsp_index 5)))
									(if true
										(begin
											(object_destroy_containing biped))))))))))
		(sleep 15)))

(script startup void music_c10_01
	(begin
		(sleep_until play_music_c10_01)
		(print levels\c10\music\c10_01)
		(sound_looping_start levels\c10\music\c10_01 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_01) play_music_c10_01_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_01_alt
			(sound_looping_set_alternate levels\c10\music\c10_01 true))
		(sleep_until
			(not play_music_c10_01) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_01)))

(script startup void music_c10_02
	(begin
		(sleep_until play_music_c10_02)
		(print levels\c10\music\c10_02)
		(sound_looping_start levels\c10\music\c10_02 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_02) play_music_c10_02_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_02_alt
			(sound_looping_set_alternate levels\c10\music\c10_02 true))
		(sleep_until
			(not play_music_c10_02) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_02)))

(script startup void music_c10_03
	(begin
		(sleep_until play_music_c10_03)
		(print levels\c10\music\c10_03)
		(sound_looping_start levels\c10\music\c10_03 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_03) play_music_c10_03_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_03_alt
			(sound_looping_set_alternate levels\c10\music\c10_03 true))
		(sleep_until
			(not play_music_c10_03) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_03)))

(script startup void music_c10_04
	(begin
		(sleep_until play_music_c10_04)
		(print levels\c10\music\c10_04)
		(sound_looping_start levels\c10\music\c10_04 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_04) play_music_c10_04_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_04_alt
			(sound_looping_set_alternate levels\c10\music\c10_04 true))
		(sleep_until
			(not play_music_c10_04) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_04)))

(script startup void music_c10_05
	(begin
		(sleep_until play_music_c10_05)
		(print levels\c10\music\c10_05)
		(sound_looping_start levels\c10\music\c10_05 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_05) play_music_c10_05_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_05_alt
			(sound_looping_set_alternate levels\c10\music\c10_05 true))
		(sleep_until
			(not play_music_c10_05) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_05)))

(script startup void music_c10_06
	(begin
		(sleep_until play_music_c10_06)
		(print levels\c10\music\c10_06)
		(sound_looping_start levels\c10\music\c10_06 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_06) play_music_c10_06_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_06_alt
			(sound_looping_set_alternate levels\c10\music\c10_06 true))
		(sleep_until
			(not play_music_c10_06) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_06)))

(script startup void music_c10_07
	(begin
		(sleep_until play_music_c10_07)
		(print levels\c10\music\c10_07)
		(sound_looping_start levels\c10\music\c10_07 none 1.00)
		(sleep_until
			(or
				(not play_music_c10_07) play_music_c10_07_alt) 1
			(/ global_delay_music 2.00))
		(if play_music_c10_07_alt
			(sound_looping_set_alternate levels\c10\music\c10_07 true))
		(sleep_until
			(not play_music_c10_07) 1
			(/ global_delay_music 2.00))
		(sound_looping_stop levels\c10\music\c10_07)))

(script dormant void obj_find
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_find)
		(hud_set_objective_text obj_find)
		(sleep 150)
		(show_hud_help_text false)
		(game_save_no_timeout)))

(script dormant void obj_escape
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_escape)
		(hud_set_objective_text obj_escape)
		(sleep 150)
		(show_hud_help_text false)
		(game_save_no_timeout)))

(script dormant void obj_tower
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_tower)
		(hud_set_objective_text obj_tower)
		(sleep 150)
		(show_hud_help_text false)
		(game_save_no_timeout)))

(script dormant void chapter_lost
	(begin
		(sleep_until
			(game_safe_to_save))
		(show_hud false)
		(cinematic_show_letterbox true)
		(sleep 30)
		(cinematic_set_title chapter_lost)
		(sleep 150)
		(cinematic_show_letterbox false)
		(show_hud true)
		(game_save_no_timeout)))

(script dormant void chapter_flood
	(begin
		(show_hud false)
		(cinematic_show_letterbox true)
		(sleep 30)
		(cinematic_set_title chapter_flood)
		(sleep 150)
		(cinematic_stop)
		(show_hud true)
		(game_save_no_timeout)))

(script dormant void chapter_friends
	(begin
		(show_hud false)
		(cinematic_show_letterbox true)
		(sleep 30)
		(cinematic_set_title chapter_friends)))

(script static void clean
	(begin
		(ai_erase_all)
		(ai_reconnect)
		(garbage_collect_now)))

(script dormant void insertion
	(begin
		(fade_out 0.00 0.00 0.00 0)
		(cinematic_start)
		(show_hud false)
		(camera_control true)
		(object_destroy insertion_pelican)
		(object_create insertion_pelican)
		(object_teleport insertion_pelican insertion_flag)
		(sleep 1)
		(unit_enter_vehicle insertion insertion_pelican p-riderlf)
		(unit_enter_vehicle insertion insertion_pelican p-riderrf)
		(unit_set_enterable_by_player insertion_pelican false)
		(objects_predict insertion_pelican)
		(ai_place swamp_a_covenant/grunts_insertion)
		(ai_place swamp_a_covenant/jackals_insertion)
		(objects_predict
			(ai_actors swamp_a_covenant))
		(ai_disregard
			(players) true)
		(camera_set insertion_1 0)
		(sleep 5)
		(recording_play_and_hover insertion_pelican insertion_pelican_in)
		(sound_looping_start sound\sinomatixx_music\c10_insertion_music none 1.00)
		(fade_in 0.00 0.00 0.00 60)
		(camera_set insertion_2 400)
		(sleep 200)
		(camera_set insertion_3 400)
		(sleep 200)
		(cinematic_set_title chapter_lost)
		(sleep 60)
		(ai_conversation insertion)
		(sleep 150)
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(camera_control false)
		(ai_erase swamp_a_marines)
		(ai_erase swamp_a_covenant)
		(sleep 15)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(cinematic_stop)
		(show_hud true)
		(sleep
			(recording_time insertion_pelican))
		(unit_exit_vehicle insertion)
		(unit_exit_vehicle insertion)
		(ai_disregard
			(players) false)
		(game_save_totally_unsafe)
		(sleep_until
			(>
				(ai_conversation_status insertion) 4) 12
			(* 30.00 12.00))
		(sleep 30)
		(object_create pelican_radio)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican insertion_pelican_out)))

(script continuous void swamp_b_save
	(begin
		(sleep_until
			(volume_test_objects swamp_b_trigger_b
				(players)))
		(game_save)))

(script dormant void inc_log
	(begin
		(sleep_until
			(volume_test_objects inc_log
				(players)))
		(ai_place inc_swamp/log_incident)
		(unit_impervious
			(ai_actors inc_swamp/log_incident) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/log_incident))))

(script dormant void inc7
	(begin
		(sleep_until
			(volume_test_objects inc5
				(players)))
		(ai_place inc_swamp/inc7)
		(unit_impervious
			(ai_actors inc_swamp/inc7) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/inc7))))

(script dormant void inc6
	(begin
		(sleep_until
			(volume_test_objects inc6
				(players)))
		(ai_place inc_swamp/inc6)
		(unit_impervious
			(ai_actors inc_swamp/inc6) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/inc6))))

(script dormant void inc5
	(begin
		(sleep_until
			(or
				(volume_test_objects inc5
					(players))
				(volume_test_objects inc5b
					(players))))
		(ai_place inc_swamp/inc5)
		(unit_impervious
			(ai_actors inc_swamp/inc5) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/inc5))))

(script dormant void inc4
	(begin
		(sleep_until
			(volume_test_objects inc4
				(players)))
		(ai_place inc_swamp/inc4)
		(unit_impervious
			(ai_actors inc_swamp/inc4) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/inc4))))

(script dormant void inc3
	(begin
		(sleep_until
			(volume_test_objects inc3
				(players)))
		(ai_place inc_swamp/inc3)
		(unit_impervious
			(ai_actors inc_swamp/inc3) true)
		(object_cannot_take_damage
			(ai_actors inc_swamp/inc3))))

(script dormant void enc_swamp2
	(begin
		(sleep_until
			(volume_test_objects enc_swamp2
				(players)))
		(game_save_no_timeout)
		(set play_music_c10_01 false)
		(ai_place enc_swamp2/squada)
		(sleep 15)
		(object_create entrance_asr_2)
		(sleep 15)
		(object_create entrance_asr_4)
		(sleep 20)
		(object_create entrance_asr_5)
		(sleep 45)
		(effect_new weapons\frag grenade\effects\explosion enc_swamp2_turret)
		(effect_new effects\explosions\large explosion no objects enc_swamp2_turret)
		(ai_place enc_swamp2/squadc)
		(ai_place enc_swamp2/lift_jackal)
		(sleep 45)
		(object_destroy entrance_asr_2)
		(sleep 15)
		(object_destroy entrance_asr_4)
		(sleep 10)
		(object_destroy entrance_asr_5)))

(script dormant void enc_swamp1
	(begin
		(sleep_until
			(or
				(volume_test_objects pelican_radio
					(players))
				(volume_test_objects enc_swamp1
					(players))) 1)
		(game_save_no_timeout)
		(set play_music_c10_01 true)
		(ai_place enc_swamp1/squada)
		(objects_predict
			(ai_actors enc_swamp1))
		(ai_magically_see_players enc_swamp1)
		(effect_new weapons\frag grenade\effects\explosion enc_swamp1_rocket_booster)
		(sleep 15)
		(ai_place enc_swamp1/rocketeers)
		(effect_new weapons\frag grenade\effects\explosion enc_swamp1_rocket_booster)
		(effect_new effects\explosions\medium explosion no objects enc_swamp1_rocket_booster2)
		(effect_new effects\explosions\medium explosion no objects enc_swamp1_rocket_booster3)
		(sleep_until
			(volume_test_objects enc_swamp1
				(players)) 1)
		(game_save_no_timeout)
		(ai_maneuver enc_swamp1/squada)
		(ai_place enc_swamp1/tree_jackal)))

(script static void kill_tysons_crap
	(begin
		(sleep -1 enc_swamp1)
		(sleep -1 enc_swamp2)
		(sleep -1 inc_log)
		(sleep -1 inc3)
		(sleep -1 inc4)
		(sleep -1 inc5)
		(sleep -1 inc6)
		(sleep -1 inc7)))

(script dormant void ini_see_flood_a
	(begin
		(sleep_until
			(objects_can_see_flag
				(players) swamp_a_flood_a 30.00))
		(ai_place swamp_a_flood/flood_a)
		(object_cannot_take_damage
			(ai_actors swamp_a_flood))
		(unit_impervious
			(ai_actors swamp_a_flood) true)))

(script dormant void ini_see_flood_b
	(begin
		(sleep_until
			(and
				(volume_test_objects_all swamp_a_flood_trigger_a
					(players))
				(objects_can_see_flag
					(players) swamp_a_flood_b 20.00)))
		(ai_place swamp_a_flood/flood_b)
		(object_cannot_take_damage
			(ai_actors swamp_a_flood))
		(unit_impervious
			(ai_actors swamp_a_flood) true)))

(script dormant void ini_see_flood_c
	(begin
		(sleep_until
			(and
				(volume_test_objects_all swamp_a_flood_trigger_a
					(players))
				(objects_can_see_flag
					(players) swamp_a_flood_c 20.00)))
		(ai_place swamp_a_flood/flood_c)
		(object_cannot_take_damage
			(ai_actors swamp_a_flood))
		(unit_impervious
			(ai_actors swamp_a_flood) true)))

(script dormant void ini_see_flood_d
	(begin
		(sleep_until
			(objects_can_see_flag
				(players) swamp_a_flood_d 30.00))
		(ai_place swamp_a_flood/flood_d)
		(object_cannot_take_damage
			(ai_actors swamp_a_flood))
		(unit_impervious
			(ai_actors swamp_a_flood) true)))

(script dormant void enc_int_a_lift_a_cov
	(begin
		(ai_place int_a_covenant/grunts_lift_left)
		(ai_place int_a_covenant/grunts_lift_right)))

(script dormant void enc_int_a_bay_a_cov
	(begin
		(ai_place int_a_covenant/grunts_bay_a_floor)
		(ai_place int_a_covenant/jackals_bay_a_floor)
		(ai_place int_a_covenant/grunts_bay_a_top)
		(ai_place int_a_covenant/jackals_bay_a_top)))

(script dormant void enc_int_a_lab_a_cov
	(begin
		(ai_place int_a_covenant/grunts_lab_a)
		(ai_place int_a_covenant/jackals_lab_a)
		(ai_place int_a_covenant/grunts_lab_a_bot)
		(ai_place int_a_covenant/jackals_lab_a_bot)))

(script dormant void enc_int_a_ante_a_cov
	(begin
		(ai_place int_a_covenant/ante_a)))

(script dormant void enc_int_a_bay_a_flood
	(begin
		(ai_place int_a_flood/bay_a_bottom_1)
		(ai_place int_a_flood/bay_a_bottom_2)
		(ai_place int_a_infection/bay_a)))

(script dormant void enc_int_a_lab_a_flood
	(begin
		(ai_place int_a_flood/lab_a_bottom)
		(ai_place int_a_infection/lab_a)))

(script dormant void enc_int_a_ante_a_flood
	(begin
		(ai_place int_a_flood/ante_a)
		(ai_place int_a_infection/ante_a)))

(script dormant void enc_int_a_lift_a_flood
	(begin
		(ai_place int_a_flood/lift_a)
		(ai_place int_a_infection/lift_a)))

(script dormant void enc_int_a_tinylab_c_flood
	(begin
		(ai_place int_a_flood/tinylab_c)
		(ai_place int_a_infection/tinylab_c)))

(script dormant void enc_int_a_tinylab_d_flood
	(begin
		(ai_place int_a_flood/tinylab_d)
		(ai_place int_a_infection/tinylab_d)))

(script dormant void enc_int_a_lift_b_flood
	(begin
		(ai_place int_a_flood/lift_b)
		(ai_place int_a_infection/lift_b)))

(script dormant void ini_int_a_lift_a_cov
	(begin
		(wake enc_int_a_lift_a_cov)))

(script dormant void ini_int_a_bay_a_cov
	(begin
		(wake enc_int_a_bay_a_cov)
		(sleep
			(* 30.00 4.00))))

(script dormant void ini_int_a_lift_a_destroy
	(begin
		(object_destroy lift_a)
		(object_destroy lift_a_cont_b)
		(object_create lift_a_falling)
		(object_create lift_a_falling_control)
		(sleep_until
			(!=
				(device_get_position lift_a_falling) 0.00))
		(set play_music_c10_04 true)
		(sleep_until
			(=
				(device_get_position lift_a_falling) 1.00))
		(sleep
			(* 15.00 30.00))
		(set play_music_c10_04 false)))

(script dormant void ini_int_a_hall_b
	(begin
		(sleep_until
			(volume_test_objects hall_b_bottom_trigger
				(players)))
		(wake enc_int_a_tinylab_c_flood)
		(wake enc_int_a_tinylab_d_flood)))

(script dormant void ini_int_a_lift_a
	(begin
		(sleep_until
			(volume_test_objects lift_a_flood_trigger
				(players)))
		(wake enc_int_a_lift_a_flood)
		(sleep_until
			(=
				(ai_living_count int_a_flood/lift_a) 0))
		(game_save_no_timeout)))

(script dormant void enc_infection_ini
	(begin
		(ai_place int_b_infection/control_ini)))

(script dormant void enc_control_a
	(begin
		(device_set_position control_door_bashed_a 1.00)))

(script dormant void enc_int_b_bay_b_flood
	(begin
		(ai_place int_b_cov)
		(ai_place int_b_flood/bay_b_bottom_1)
		(ai_place int_b_flood/bay_b_bottom_2)))

(script dormant void enc_int_b_lab_b_flood
	(begin
		(ai_place int_b_flood/lab_b_bottom)
		(ai_place int_b_infection_2/lab_b)))

(script dormant void enc_int_b_ante_b_flood
	(begin
		(ai_place int_b_flood/ante_b)
		(ai_place int_b_infection_2/ante_b)))

(script dormant void enc_int_b_tinylab_g_flood
	(begin
		(ai_place int_b_flood/tinylab_g)
		(ai_place int_b_infection_2/tinylab_g)))

(script dormant void enc_int_b_tinylab_h_flood
	(begin
		(ai_place int_b_flood/tinylab_h)
		(ai_place int_b_infection_2/tinylab_h)))

(script dormant void ini_int_a_lift_b
	(begin
		(sleep_until
			(volume_test_objects lift_b_flood_trigger
				(players)))
		(wake enc_int_a_lift_b_flood)
		(sleep_until
			(=
				(ai_living_count int_a_flood/lift_b) 0))
		(game_save_no_timeout)))

(script static void ini_x50_preclean
	(begin
		(ai_erase int_b_covenant/grunts_lab_b_bot)
		(ai_erase int_b_covenant/grunts_lab_b_top)
		(ai_erase int_b_covenant/jackals_lab_b_bot)
		(ai_erase int_b_covenant/jackals_lab_b_top)
		(object_destroy crashed_dropship)
		(object_destroy pelican_radio)
		(object_destroy x50_rock)))

(script dormant void ini_lifta_replacement
	(begin
		(object_destroy post_lifta_door_1)
		(object_create post_lifta_bashed_1)
		(device_set_position_immediate post_lifta_bashed_1 0.40)
		(object_destroy post_lifta_door_2)
		(object_create post_lifta_bashed_2)
		(device_set_position_immediate post_lifta_bashed_2 0.60)))

(script dormant void ini_post_helmet_replace
	(begin
		(object_create post_helmet_ar1)
		(object_create post_helmet_ar2)
		(object_create post_helmet_ar3)
		(object_create post_helmet_ar4)
		(object_create post_helmet_pl1)
		(object_destroy post_helmet_door_1)
		(object_create post_helmet_bashed_1)
		(device_set_position_immediate post_helmet_bashed_1 0.50)
		(object_destroy post_helmet_door_2)
		(object_create post_helmet_bashed_2)
		(device_set_position_immediate post_helmet_bashed_2 0.60)
		(object_destroy post_helmet_door_3)
		(object_create post_helmet_bashed_3)
		(if
			(or
				(game_is_cooperative)
				(=
					(game_difficulty_get) impossible))
			(device_set_position_immediate post_helmet_bashed_3 0.40)
			(device_set_position_immediate post_helmet_bashed_3 1.00))
		(device_set_power post_lifta_door_1 1.00)
		(object_destroy post_lifta_light_1a)
		(object_destroy post_lifta_light_1b)
		(object_create post_lifta_light_1c)
		(object_create post_lifta_light_1d)
		(device_set_power post_lifta_door_2 1.00)
		(object_destroy post_lifta_light_2a)
		(object_destroy post_lifta_light_2b)
		(object_create post_lifta_light_2c)
		(object_create post_lifta_light_2d)
		(device_set_power post_helmet_door_4 1.00)
		(object_destroy post_helmet_light_4a)
		(object_destroy post_helmet_light_4b)
		(object_create post_helmet_light_4c)
		(object_create post_helmet_light_4d)
		(device_set_power post_helmet_door_5 1.00)
		(object_destroy post_helmet_light_5a)
		(object_destroy post_helmet_light_5b)
		(object_create post_helmet_light_5c)
		(object_create post_helmet_light_5d)))

(script dormant void ini_int_b_bay_b_breakin
	(begin
		(sleep_until
			(volume_test_objects hall_d_bash_trigger
				(players)))
		(ai_place int_b_flood/hall_d)))

(script dormant void ini_int_b_lab_b
	(begin
		(sleep_until
			(or
				(volume_test_objects hall_d_top_trigger
					(players))
				(volume_test_objects hall_d_bottom_trigger
					(players))))
		(wake enc_int_b_lab_b_flood)
		(sleep_until
			(=
				(ai_living_count int_c_flood/lab_b) 0))
		(game_save_no_timeout)))

(script dormant void ini_int_b_lab_b_cov
	(begin
		(sleep_until
			(or
				(volume_test_objects hall_d_top_trigger
					(players))
				(volume_test_objects hall_d_bottom_trigger
					(players))))
		(ai_place int_b_covenant/grunts_lab_b_bot)
		(ai_place int_b_covenant/jackals_lab_b_bot)))

(script dormant void ini_int_b_hall_d
	(begin
		(sleep_until
			(volume_test_objects hall_d_bottom_trigger
				(players)))
		(wake enc_int_b_tinylab_g_flood)
		(wake enc_int_b_tinylab_h_flood)))

(script dormant void ini_crazy_marine
	(begin
		(object_create marine_suicidal)
		(ai_attach marine_suicidal int_b_crazy_marine/crazy_marine)
		(unit_set_maximum_vitality marine_suicidal 1.00 0.00)
		(unit_set_current_vitality marine_suicidal 1.00 0.00)
		(sleep_until
			(volume_test_objects hall_d_bottom_trigger
				(players)))
		(game_save_no_timeout)
		(sleep_until
			(or
				(volume_test_objects suicidal_trigger
					(players))
				(objects_can_see_object
					(players) marine_suicidal 15.00)) 1)
		(sleep_until
			(volume_test_objects suicidal_trigger
				(players)) 1 90)
		(sleep 60)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_050_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_050_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_050_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_060_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_060_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_060_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_070_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_070_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_070_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_080_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_080_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_080_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_090_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_090_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_090_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_100_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_100_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_100_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_110_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_110_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_110_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_120_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_120_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_120_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_130_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_130_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_130_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_140_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_140_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_140_crazymarine)
		(if
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0)
			(sleep -1))
		(sound_impulse_start sound\dialog\c10\c10_150_crazymarine marine_suicidal 1.00)
		(sleep_until
			(=
				(ai_living_count int_b_crazy_marine/crazy_marine) 0) 1
			(sound_impulse_time sound\dialog\c10\c10_150_crazymarine))
		(sound_impulse_stop sound\dialog\c10\c10_150_crazymarine)))

(script dormant void enc_int_c_bay_a_flood
	(begin
		(ai_place int_c_flood/bay_a)
		(ai_place int_c_infection/bay_a)))

(script dormant void enc_int_c_bay_a_jumpers
	(begin
		(ai_place int_c_flood/bay_a_jumpers)))

(script dormant void enc_int_c_lift_b_flood
	(begin
		(ai_place int_c_flood/lift_b)
		(ai_place int_c_infection/lift_b)))

(script dormant void enc_int_c_lab_a_flood
	(begin
		(ai_place int_c_flood/lab_a)
		(ai_place int_c_infection/lab_a)))

(script dormant void enc_int_c_lab_b_flood
	(begin
		(ai_place int_c_flood/lab_b)
		(ai_place int_c_infection/lab_b)))

(script dormant void enc_int_c_tinylab_a_flood
	(begin
		(ai_place int_c_flood/tinylab_a)
		(ai_place int_c_infection/tinylab_a)))

(script dormant void enc_int_c_tinylab_b_flood
	(begin
		(ai_place int_c_flood/tinylab_b)
		(ai_place int_c_infection/tinylab_b)))

(script dormant void enc_int_c_tinylab_c_flood
	(begin
		(ai_place int_c_flood/tinylab_c)
		(ai_place int_c_infection/tinylab_c)))

(script dormant void enc_int_c_tinylab_d_flood
	(begin
		(ai_place int_c_flood/tinylab_d)
		(ai_place int_c_infection/tinylab_d)))

(script dormant void enc_int_c_hall_a_flood
	(begin
		(ai_place int_c_infection/hall_a)))

(script dormant void enc_int_c_hall_b_flood
	(begin
		(ai_place int_c_infection/hall_b)))

(script dormant void ini_int_c_marines_1
	(begin
		(ai_place int_c_marines/bay_a)
		(sleep 90)
		(units_set_current_vitality
			(ai_actors int_c_marines/bay_a) 0.50 0.00)
		(sleep 60)
		(sleep 85)
		(ai_place int_c_flood/bay_a_chasers)
		(sleep 30)
		(ai_place int_c_infection/bay_a_chasers)))

(script dormant void ini_int_c_lab_a
	(begin
		(sleep_until
			(or
				(volume_test_objects int_b_hall_a_trigger
					(players))
				(volume_test_objects int_b_hall_a_trigger_b
					(players))))
		(game_save_no_timeout)
		(wake enc_int_c_lab_a_flood)))

(script dormant void ini_int_c_hall_a_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_a_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_c_tinylab_a_flood)
		(wake enc_int_c_tinylab_b_flood)
		(ai_magically_see_players int_c_infection/tinylab_a)
		(ai_magically_see_players int_c_infection/tinylab_b)
		(ai_magically_see_players int_c_flood/tinylab_a)
		(ai_magically_see_players int_c_flood/tinylab_b)))

(script dormant void ini_int_c_hall_b_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_b_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_c_tinylab_c_flood)
		(wake enc_int_c_tinylab_d_flood)
		(ai_magically_see_players int_c_infection/tinylab_c)
		(ai_magically_see_players int_c_infection/tinylab_d)
		(ai_magically_see_players int_c_flood/tinylab_c)
		(ai_magically_see_players int_c_flood/tinylab_d)))

(script dormant void enc_int_d_bay_b_flood
	(begin
		(ai_place int_d_flood/bay_b)
		(ai_place int_d_infection/bay_b)))

(script dormant void enc_int_d_bay_c_flood
	(begin
		(ai_place int_d_flood/bay_c)
		(ai_place int_d_infection/bay_c)))

(script dormant void enc_int_d_lift_c_flood
	(begin
		(ai_place int_d_flood/lift_c)
		(ai_place int_d_infection/lift_c)))

(script dormant void enc_int_d_lift_d_flood
	(begin
		(ai_place int_d_flood/lift_d)
		(ai_place int_d_infection/lift_d)))

(script dormant void enc_int_d_lab_d_flood
	(begin
		(ai_place int_d_flood/lab_d)
		(ai_place int_d_infection/lab_d)))

(script dormant void enc_int_d_tinylab_g_flood
	(begin
		(ai_place int_d_flood/tinylab_g)
		(ai_place int_d_infection/tinylab_g)))

(script dormant void enc_int_d_tinylab_h_flood
	(begin
		(ai_place int_d_flood/tinylab_h)
		(ai_place int_d_infection/tinylab_h)))

(script dormant void enc_int_d_tinylab_i_flood
	(begin
		(ai_place int_d_flood/tinylab_i)
		(ai_place int_d_infection/tinylab_i)))

(script dormant void enc_int_d_tinylab_j_flood
	(begin
		(ai_place int_d_flood/tinylab_j)
		(ai_place int_d_infection/tinylab_j)))

(script dormant void enc_int_d_tinylab_k_flood
	(begin
		(ai_place int_d_flood/tinylab_k)
		(ai_place int_d_infection/tinylab_k)))

(script dormant void enc_int_d_tinylab_l_flood
	(begin
		(ai_place int_d_flood/tinylab_l)
		(ai_place int_d_infection/tinylab_l)))

(script dormant void enc_int_d_tinylab_m_flood
	(begin
		(ai_place int_d_flood/tinylab_m)
		(ai_place int_d_infection/tinylab_m)))

(script dormant void enc_int_d_tinylab_n_flood
	(begin
		(ai_place int_d_flood/tinylab_n)
		(ai_place int_d_infection/tinylab_n)))

(script dormant void enc_int_d_tinylab_o_flood
	(begin
		(ai_place int_d_flood/tinylab_o)
		(ai_place int_d_infection/tinylab_o)))

(script dormant void enc_int_d_hall_d_flood
	(begin
		(ai_place int_d_infection/hall_d)))

(script dormant void enc_int_d_hall_e_flood
	(begin
		(ai_place int_d_infection/hall_e)))

(script dormant void enc_int_d_hall_f_flood
	(begin
		(ai_place int_d_infection/hall_f)))

(script dormant void enc_int_d_hall_g_flood
	(begin
		(ai_place int_d_infection/hall_g)))

(script dormant void enc_int_d_lift_d_rush
	(begin
		(ai_place int_d_flood/lift_d_rush)))

(script dormant void ini_int_d_hall_d_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_d_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_d_tinylab_g_flood)
		(wake enc_int_d_tinylab_h_flood)
		(ai_magically_see_players int_d_infection/tinylab_g)
		(ai_magically_see_players int_d_infection/tinylab_h)
		(ai_magically_see_players int_d_flood/tinylab_g)
		(ai_magically_see_players int_d_flood/tinylab_h)))

(script dormant void ini_int_d_lift_c
	(begin
		(sleep_until
			(or
				(volume_test_objects int_b_hall_e_trigger
					(players))
				(volume_test_objects int_b_hall_e_trigger_b
					(players))))
		(game_save_no_timeout)
		(wake enc_int_d_lift_c_flood)))

(script dormant void ini_int_d_hall_e_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_e_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_d_tinylab_i_flood)
		(wake enc_int_d_tinylab_j_flood)
		(wake enc_int_d_tinylab_k_flood)
		(ai_magically_see_players int_d_infection/tinylab_i)
		(ai_magically_see_players int_d_infection/tinylab_j)
		(ai_magically_see_players int_d_infection/tinylab_k)
		(ai_magically_see_players int_d_flood/tinylab_i)
		(ai_magically_see_players int_d_flood/tinylab_j)
		(ai_magically_see_players int_d_flood/tinylab_k)))

(script dormant void ini_int_d_hall_f_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_f_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_d_tinylab_l_flood)
		(wake enc_int_d_tinylab_m_flood)
		(ai_magically_see_players int_d_infection/tinylab_l)
		(ai_magically_see_players int_d_infection/tinylab_m)
		(ai_magically_see_players int_d_flood/tinylab_l)
		(ai_magically_see_players int_d_flood/tinylab_m)))

(script dormant void ini_int_d_hall_g_labs
	(begin
		(sleep_until
			(volume_test_objects int_b_hall_g_trigger
				(players)) 10)
		(game_save_no_timeout)
		(wake enc_int_d_tinylab_n_flood)
		(wake enc_int_d_tinylab_o_flood)
		(ai_magically_see_players int_d_infection/tinylab_n)
		(ai_magically_see_players int_d_infection/tinylab_o)
		(ai_magically_see_players int_d_flood/tinylab_n)
		(ai_magically_see_players int_d_flood/tinylab_o)))

(script dormant void enc_swamp_b_flood_gauntlet
	(begin
		(ai_place swamp_b_flood_2/gauntlet_floor)
		(ai_place swamp_b_flood_2/gauntlet_left)
		(ai_place swamp_b_flood_2/gauntlet_right)
		(ai_place swamp_b_flood_2/gauntlet_infection)))

(script dormant void enc_swamp_b_flood_tower
	(begin
		(ai_place swamp_b_flood_2/tower_floor)))

(script dormant void enc_swamp_b_flood_ini
	(begin
		(ai_place swamp_b_flood/flood_initial)
		(ai_place swamp_b_infection/infection_initial)))

(script dormant void enc_swamp_b_sentinels
	(begin
		(ai_place swamp_b_sentinels/sentinels_ini)
		(ai_place swamp_b_monitor/monitor_ini)
		(sleep
			(* 30.00 3.00))
		(ai_migrate swamp_b_sentinels swamp_b_sentinels/sentinels_a)
		(ai_migrate swamp_b_monitor swamp_b_monitor/monitor_a)
		(ai_try_to_fight swamp_b_sentinels swamp_b_flood)
		(ai_try_to_fight swamp_b_monitor swamp_b_flood)
		(sleep 1)
		(ai_follow_target_players swamp_b_sentinels/sentinels_a)
		(ai_follow_target_players swamp_b_monitor/monitor_a)))

(script static void enc_swamp_b_volume_a1
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_a)
				(if debug
					(print placing flood a))
				(ai_place swamp_b_flood/flood_m)
				(if debug
					(print placing flood m))
				(ai_place swamp_b_flood/flood_n)
				(if debug
					(print placing flood n))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_a1)
				(if debug
					(print placing a1 infection))))
		(set swamp_b_player_locator 1)))

(script static void enc_swamp_b_volume_a2
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_b)
				(if debug
					(print placing flood b))
				(ai_place swamp_b_flood/flood_m)
				(if debug
					(print placing flood m))
				(ai_place swamp_b_flood/flood_n)
				(if debug
					(print placing flood n))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_a2)
				(if debug
					(print placing a2 infection))))
		(set swamp_b_player_locator 2)))

(script static void enc_swamp_b_volume_b
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_c)
				(if debug
					(print placing flood c))
				(ai_place swamp_b_flood/flood_b)
				(if debug
					(print placing flood b))
				(ai_place swamp_b_flood/flood_l)
				(if debug
					(print placing flood l))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_b)
				(if debug
					(print placing b infection))))
		(set swamp_b_player_locator 3)))

(script static void enc_swamp_b_volume_c
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_d)
				(if debug
					(print placing flood d))
				(ai_place swamp_b_flood/flood_e)
				(if debug
					(print placing flood e))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_d
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_p_c)
						(if debug
							(print placing flood p_c))))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_f
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_r_c)
						(if debug
							(print placing flood r_c))))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_c)
				(if debug
					(print placing c infection))))
		(set swamp_b_player_locator 4)))

(script static void enc_swamp_b_volume_d
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_f)
				(if debug
					(print placing flood f))
				(ai_place swamp_b_flood/flood_g)
				(if debug
					(print placing flood g))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_c
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_o_d)
						(if debug
							(print placing flood o_d))))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_e
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_q_d)
						(if debug
							(print placing flood q_d))))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_d)
				(if debug
					(print placing d infection))))
		(set swamp_b_player_locator 5)))

(script static void enc_swamp_b_volume_e
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_h)
				(if debug
					(print placing flood h))
				(ai_place swamp_b_flood/flood_i)
				(if debug
					(print placing flood i))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_d
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_p_e)
						(if debug
							(print placing flood p_e))))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_f
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_r_e)
						(if debug
							(print placing flood r_e))))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_e)
				(if debug
					(print placing e infection))))
		(set swamp_b_player_locator 6)))

(script static void enc_swamp_b_volume_f
	(begin
		(if
			(<=
				(ai_living_count swamp_b_flood) swamp_b_limiter)
			(begin
				(ai_place swamp_b_flood/flood_j)
				(if debug
					(print placing flood j))
				(ai_place swamp_b_flood/flood_k)
				(if debug
					(print placing flood k))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_c
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_o_f)
						(if debug
							(print placing flood o_f))))
				(if
					(= false
						(volume_test_objects swamp_b_trigger_e
							(players)))
					(begin
						(ai_place swamp_b_flood/flood_q_f)
						(if debug
							(print placing flood q_f))))))
		(if
			(<=
				(ai_living_count swamp_b_infection) swamp_b_infection_limiter)
			(begin
				(ai_place swamp_b_infection/infection_f)
				(if debug
					(print placing f infection))))
		(set swamp_b_player_locator 7)))

(script dormant void ini_swamp_b_marines
	(begin
		(ai_place swamp_b_marines/lift_meat)
		(ai_place swamp_b_infection/lift)
		(ai_conversation swamp_b)
		(sleep_until
			(or
				(volume_test_objects gogogo_trigger
					(players))
				(>
					(ai_conversation_status swamp_b) 4)) 1)
		(set play_music_c10_07 true)
		(ai_migrate swamp_b_marines swamp_b_marines/b)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a1
				(players)) 1 120)
		(ai_migrate swamp_b_marines swamp_b_marines/c)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a1
				(players)) 1)
		(ai_migrate swamp_b_marines swamp_b_marines/d)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/g)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/h)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/f)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/i)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/i)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)) 1)
		(ai_migrate swamp_b_marines swamp_b_marines/j)
		(sleep_until
			(volume_test_objects swamp_b_trigger_b
				(players)) 1 150)
		(ai_migrate swamp_b_marines swamp_b_marines/k)
		(sleep_until
			(volume_test_objects swamp_b_trigger_b
				(players)) 1)
		(ai_migrate swamp_b_marines swamp_b_marines/l)
		(sleep_until
			(volume_test_objects swamp_b_trigger_c
				(players)) 1)
		(ai_migrate swamp_b_marines swamp_b_marines/l)
		(ai_follow_target_players swamp_b_marines/l)))

(script static void ini_swamp_b_from_a1
	(begin
		(if
			(volume_test_objects swamp_b_trigger_a2
				(players))
			(begin ini_swamp_b_from_a1)
			(if true
				(begin ini_swamp_b_from_a1)))))

(script static void ini_swamp_b_from_a2
	(begin
		(if
			(volume_test_objects swamp_b_trigger_a1
				(players))
			(begin ini_swamp_b_from_a2)
			(if
				(volume_test_objects swamp_b_trigger_c
					(players))
				(begin ini_swamp_b_from_a2)
				(if true
					(begin ini_swamp_b_from_a2))))))

(script static void ini_swamp_b_from_b
	(begin
		(if
			(volume_test_objects swamp_b_trigger_a2
				(players))
			(begin ini_swamp_b_from_b)
			(if
				(volume_test_objects swamp_b_trigger_c
					(players))
				(begin ini_swamp_b_from_b)
				(if true
					(begin ini_swamp_b_from_b))))))

(script static void ini_swamp_b_from_c
	(begin
		(if
			(volume_test_objects swamp_b_trigger_b
				(players))
			(begin ini_swamp_b_from_c)
			(if
				(volume_test_objects swamp_b_trigger_d
					(players))
				(begin ini_swamp_b_from_c)
				(if
					(volume_test_objects swamp_b_trigger_f
						(players))
					(begin ini_swamp_b_from_c)
					(if true
						(begin ini_swamp_b_from_c)))))))

(script static void ini_swamp_b_from_d
	(begin
		(if
			(volume_test_objects swamp_b_trigger_c
				(players))
			(begin ini_swamp_b_from_d)
			(if
				(volume_test_objects swamp_b_trigger_e
					(players))
				(begin ini_swamp_b_from_d)
				(if true
					(begin ini_swamp_b_from_d))))))

(script static void ini_swamp_b_from_e
	(begin
		(if
			(volume_test_objects swamp_b_trigger_d
				(players))
			(begin ini_swamp_b_from_e)
			(if
				(volume_test_objects swamp_b_trigger_f
					(players))
				(begin ini_swamp_b_from_e)
				(if true
					(begin ini_swamp_b_from_e))))))

(script static void ini_swamp_b_from_f
	(begin
		(if
			(volume_test_objects swamp_b_trigger_c
				(players))
			(begin ini_swamp_b_from_f)
			(if
				(volume_test_objects swamp_b_trigger_e
					(players))
				(begin ini_swamp_b_from_f)
				(if true
					(begin ini_swamp_b_from_f))))))

(script continuous void ini_swamp_b_flood_emitter
	(begin
		(if
			(= 1 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 2 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 3 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 4 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 5 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 6 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if
			(= 7 swamp_b_player_locator) ini_swamp_b_flood_emitter)
		(if debug
			(inspect swamp_b_player_locator))
		(sleep swamp_b_emitter_delay)))

(script continuous void ini_flood_prefer_sentinels
	(begin
		(ai_try_to_fight swamp_b_flood swamp_b_sentinels)
		(ai_try_to_fight_player swamp_b_infection)))

(script dormant void mission_swamp_a
	(begin
		(wake obj_find)
		(wake enc_swamp1)
		(wake enc_swamp2)
		(wake inc_log)
		(wake inc3)
		(wake inc4)
		(wake inc5)
		(wake inc6)
		(wake inc7)
		(sleep_until
			(volume_test_objects enc_swamp2
				(players)) 1)
		(sleep_until
			(volume_test_objects int_a_trigger_3
				(players)) 1)
		(device_set_position lift_a 0.00)
		(sleep_until
			(=
				(device_get_position lift_a) 0.00) 1)
		(game_save_no_timeout)
		(sleep_until
			(volume_test_objects int_a_trigger
				(players)) 1) mission_swamp_a
		(sleep_until
			(volume_test_objects lift_a_flood_trigger
				(players)) 1)))

(script dormant void mission_int_a
	(begin
		(ai_place lifta_bottom)
		(game_save_no_timeout)
		(sleep_until
			(volume_test_objects lift_a_flood_trigger
				(players)) 1)
		(ai_place halla_bottom)
		(ai_maneuver lifta_bottom)
		(sleep_until
			(or
				(volume_test_objects hall_b_top_trigger
					(players))
				(volume_test_objects hall_b_bottom_trigger
					(players))))
		(ai_place laba_bottom)
		(game_save_no_timeout)
		(sleep_until
			(or
				(volume_test_objects hall_d_top_trigger
					(players))
				(volume_test_objects hall_d_bottom_trigger
					(players))))
		(ai_place laba_infection)
		(wake ini_crazy_marine)
		(game_save_no_timeout)
		(sleep_until
			(volume_test_objects hall_d_top_trigger
				(players)) 10)
		(ai_place halln_flee)
		(sleep_until
			(volume_test_objects hall_d_bash_trigger
				(players)) 10)
		(game_save_no_timeout)))

(script dormant void mission_control
	(begin
		(sleep_until
			(volume_test_objects bayb_trigger
				(players)) 1)
		(set play_music_c10_02 true)
		(sleep_until
			(volume_test_objects control_lab_trigger
				(players)) 1)
		(set play_music_c10_02 false)
		(player_enable_input false) mission_control
		(ai_erase int_b_infection/control_ini)
		(cinematic_start)
		(set tracker_x50 true)
		(object_destroy_containing biped)
		(ai_erase_all)
		(garbage_collect_now)
		(if mission_control mission_control) mission_control
		(set tracker_x50 false)
		(object_create_anew_containing blood)
		(object_create post_x50_marine)
		(object_teleport mission_control player0_playon_c10)
		(object_teleport mission_control player1_playon_c10)
		(cinematic_stop)
		(wake chapter_flood)
		(switch_bsp 2)
		(player_enable_input true)
		(game_save_no_timeout)
		(wake ini_int_a_lift_a_destroy) mission_control
		(object_create control_door_bashed_a)
		(wake ini_post_helmet_replace)
		(sleep 15)
		(fade_in 1.00 1.00 1.00 15)
		(object_create control_rustle_1)
		(sleep 3)
		(object_create control_rustle_2)
		(sleep 3)
		(object_create control_rustle_3)
		(sleep 3)
		(object_create control_rustle_4)
		(sleep 450)
		(ai_place int_b_infection/control_d)
		(ai_place int_b_infection/control_d)
		(device_set_position control_door_bashed_d 1.00)
		(ai_magically_see_players int_b_infection)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 20) 1)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 10) 1
			(* 15.00 30.00))
		(ai_place int_b_infection/control_b)
		(ai_place int_b_infection/control_b)
		(sleep 15)
		(device_set_position control_door_bashed_g 1.00)
		(ai_magically_see_players int_b_infection)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 20) 1)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 10) 1
			(* 15.00 30.00))
		(set play_music_c10_03 true)
		(ai_place int_b_infection/control_e)
		(ai_place int_b_infection/control_e)
		(ai_place int_b_infection/control_e)
		(sleep 10)
		(device_set_position control_door_bashed_c 1.00)
		(ai_magically_see_players int_b_infection)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 20) 1)
		(sleep_until
			(<
				(ai_living_count int_b_infection) 10) 1
			(* 15.00 30.00))
		(set play_music_c10_03_alt true)
		(sleep 150)
		(ai_place int_b_infection/control_a)
		(ai_place int_b_infection/control_a)
		(ai_place int_b_flood/control_a)
		(sleep 10)
		(device_set_position control_door_bashed_a 1.00)
		(ai_magically_see_players int_b_infection)
		(ai_magically_see_players int_b_flood)
		(object_destroy control_rustle_1)
		(sleep 3)
		(object_destroy control_rustle_2)
		(sleep 3)
		(object_destroy control_rustle_3)
		(sleep 3)
		(object_destroy control_rustle_4)
		(sleep_until
			(not
				(volume_test_objects_all control_check_trigger
					(players))) 10)
		(game_save_no_timeout)
		(wake obj_escape)
		(wake enc_int_b_ante_b_flood)
		(sleep_until
			(volume_test_objects bayb_trigger
				(players)) 1)
		(set play_music_c10_03 false)
		(set play_music_c10_03_alt false)
		(game_save_no_timeout)
		(wake enc_int_b_bay_b_flood)
		(sleep 30)
		(wake ini_int_b_lab_b)
		(sleep 30)
		(wake ini_int_b_hall_d)
		(sleep_until
			(or
				(volume_test_objects hall_c_top_trigger
					(players))
				(volume_test_objects hall_c_bottom_trigger
					(players))))
		(wake enc_int_a_lab_a_flood)
		(wake ini_int_a_hall_b)
		(sleep_until
			(or
				(volume_test_objects hall_b_top_trigger
					(players))
				(volume_test_objects hall_b_bottom_trigger
					(players))))
		(wake enc_int_a_bay_a_flood)
		(wake ini_int_a_lift_a)
		(ai_place halla_top)
		(ai_magically_see_encounter int_a_flood/bay_a_bottom_1 halla_top)
		(ai_magically_see_encounter halla_top int_a_flood/bay_a_bottom_1)
		(sleep_until
			(volume_test_objects int_a_ante_a_trigger
				(players)))
		(wake enc_int_a_ante_a_cov)
		(sleep_until
			(volume_test_objects lift_b_flood_trigger
				(players)))
		(game_save_no_timeout)
		(wake ini_int_a_lift_b)
		(sleep_until
			(!=
				(device_get_position lift_b) 0.00))
		(set play_music_c10_05 true)
		(sleep_until
			(volume_test_objects int_b_hall_a_trigger_b
				(players)) 1)
		(set play_music_c10_05 false)))

(script dormant void mission_int_b
	(begin
		(game_save_no_timeout)
		(objects_predict
			(ai_actors int_c_marines))
		(sleep 30)
		(wake enc_int_c_lift_b_flood)
		(wake enc_int_c_bay_a_flood)
		(wake enc_int_c_hall_a_flood)
		(sleep_until
			(volume_test_objects int_b_bay_a_trigger
				(players)) 15)
		(game_save_no_timeout)
		(wake enc_int_c_bay_a_jumpers)
		(wake ini_int_c_marines_1)
		(sleep 30)
		(wake ini_int_c_lab_a)
		(wake ini_int_c_hall_a_labs)
		(wake ini_int_c_hall_b_labs)
		(sleep_until
			(or
				(volume_test_objects int_b_hall_b_trigger
					(players))
				(volume_test_objects int_b_hall_b_trigger_b
					(players))))
		(game_save_no_timeout)
		(wake enc_int_c_lab_b_flood)
		(sleep_until
			(or
				(volume_test_objects int_b_hall_c_trigger
					(players))
				(volume_test_objects int_b_hall_c_trigger_b
					(players))))
		(game_save_no_timeout)
		(wake enc_int_d_hall_d_flood)
		(wake enc_int_d_hall_e_flood)
		(wake enc_int_d_bay_b_flood)
		(sleep 30)
		(wake ini_int_d_lift_c)
		(wake ini_int_d_hall_d_labs)
		(wake ini_int_d_hall_e_labs)
		(sleep 30)
		(wake ini_int_d_hall_f_labs)
		(sleep_until
			(or
				(volume_test_objects int_b_hall_f_trigger
					(players))
				(volume_test_objects int_b_hall_f_trigger_b
					(players))))
		(game_save_no_timeout)
		(wake enc_int_d_lab_d_flood)
		(sleep 30)
		(wake ini_int_d_hall_g_labs)
		(sleep_until
			(or
				(volume_test_objects int_b_hall_g_trigger
					(players))
				(volume_test_objects int_b_hall_g_trigger_b
					(players))))
		(if
			(not
				(game_is_cooperative))
			(begin
				(object_destroy last_door_a)
				(object_create last_bashed_a)
				(device_set_position_immediate last_bashed_a 0.40)))
		(game_save_no_timeout)
		(wake enc_int_d_bay_c_flood)
		(set play_music_c10_06 true)
		(sleep 30)
		(sleep_until
			(=
				(device_get_position bridge_e) 1.00))
		(game_save_no_timeout)
		(ai_place int_d_flood/lift_d_rush)
		(set play_music_c10_06_alt true)
		(sleep_until
			(volume_test_objects int_b_lift_d_trigger
				(players)) 1)
		(game_save_no_timeout)
		(ai_magically_see_players int_d_flood/lift_d_rush)
		(wake enc_int_d_lift_d_flood)
		(sleep_until
			(!=
				(device_get_position lift_d) 1.00) 1)
		(game_save_no_timeout)
		(set play_music_c10_06 false)))

(script dormant void mission_swamp_b
	(begin
		(wake enc_swamp_b_flood_ini)
		(wake swamp_b_save)
		(wake ini_swamp_b_marines)
		(game_save_no_timeout)
		(ai_conversation swamp_b_pilot)
		(sleep_until
			(volume_test_objects swamp_b_trigger_a1
				(players)))
		(game_save_no_timeout)
		(wake ini_swamp_b_flood_emitter)
		(set swamp_b_player_locator 1)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(set swamp_b_limiter 1)
				(set swamp_b_infection_limiter 6))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(set swamp_b_limiter 1)
					(set swamp_b_infection_limiter 3))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(set swamp_b_limiter 2)
						(set swamp_b_infection_limiter 0)))))
		(sleep_until
			(volume_test_objects swamp_b_trigger_a2
				(players)))
		(ai_magically_see_players swamp_b_flood)
		(ai_magically_see_players swamp_b_infection)
		(sleep_until
			(volume_test_objects swamp_b_trigger_b
				(players)))
		(wake enc_swamp_b_flood_gauntlet)
		(ai_attack swamp_b_flood/flood_initial)
		(sleep_until
			(volume_test_objects swamp_b_trigger_c
				(players)))
		(wake enc_swamp_b_flood_tower)
		(sleep_until
			(volume_test_objects monitor_trigger
				(players)))
		(wake enc_swamp_b_sentinels)
		(sleep
			(* 30.00 2.00))
		(ai_place swamp_b_flood/last_wave)
		(ai_magically_see_players swamp_b_flood)
		(ai_magically_see_encounter swamp_b_sentinels swamp_b_flood)
		(sleep 150)
		(set play_music_c10_07 false)
		(sleep_until
			(or
				(not
					(or
						(volume_test_objects swamp_b_trigger_f
							(players))
						(volume_test_objects swamp_b_trigger_c
							(players))
						(volume_test_objects swamp_b_trigger_d
							(players))
						(volume_test_objects swamp_b_trigger_e
							(players))))
				(=
					(ai_living_count swamp_b_sentinels) 0)
				(<
					(ai_living_count swamp_b_flood/last_wave) 2)
				(<
					(unit_get_health mission_swamp_b) 0.25)) 1
			(* 90.00 30.00))
		(if
			(or
				(!=
					(game_difficulty_get) normal)
				(game_is_cooperative))
			(sleep_until
				(or
					(=
						(ai_living_count swamp_b_sentinels) 0)
					(<
						(ai_living_count swamp_b_flood/last_wave) 2))))
		(sleep
			(* 8.00 30.00))
		(ai_disregard
			(players) true)
		(wake chapter_friends)
		(if mission_swamp_b mission_swamp_b) mission_swamp_b
		(game_won)))

(script dormant void kill_all_continuous
	(begin
		(sleep -1 ini_swamp_b_flood_emitter)
		(sleep -1 ini_flood_prefer_sentinels)
		(sleep -1 swamp_b_save)))

(script startup void mission_c10
	(begin
		(wake kill_all_continuous)
		(fade_out 0.00 0.00 0.00 0)
		(ai_allegiance player sentinel)
		(ai_allegiance human sentinel)
		(ai_allegiance player human)
		(ai_allegiance player flood)
		(if
			(or
				(game_is_cooperative)
				(=
					(game_difficulty_get) impossible))
			(begin
				(object_destroy_containing shotgun)
				(object_create_containing arc10)))
		(if
			(and
				(not
					(game_is_cooperative))
				(=
					(game_difficulty_get_real) easy))
			(object_create_containing easy))
		(wake insertion)
		(wake mission_swamp_a)
		(sleep_until
			(volume_test_objects int_a_trigger
				(players)) 5)
		(ai_allegiance_remove player flood)
		(wake mission_int_a)
		(wake mission_control)
		(sleep_until
			(volume_test_objects int_b_trigger
				(players)) 5)
		(wake mission_int_b)
		(sleep_until
			(volume_test_objects killitall
				(players)) 1)
		(ai_erase_all)
		(sleep_until
			(=
				(structure_bsp_index) 5) 1)
		(sleep 10)
		(wake mission_swamp_b)))

(script continuous void play_flash
	(begin
		(sleep_until test_ffw_flash 1)
		(cinematic_set_title ffw)
		(sleep 60)))

(script continuous void ffw_flash
	(begin
		(sleep_until test_play_flash 1)
		(cinematic_set_title play)
		(sleep 60)
		(sound_impulse_start sound\sinomatixx_foley\x50_ffw none 1.00)))

(script dormant void control_infection
	(begin
		(ai_place infection/control_room_f)
		(sleep 1)
		(ai_set_blind infection true)
		(ai_set_deaf infection true)
		(sleep 90)
		(ai_place infection/control_room_f)
		(sleep 90)
		(ai_place infection/control_room_f)
		(sleep 90)
		(ai_place infection/back_r)
		(ai_place infection/back_l)))

(script static void infection_awake
	(begin
		(ai_set_blind infection false)
		(ai_set_deaf infection false)))

(script dormant void door_open
	(begin
		(sleep 234)
		(device_set_position control_door_a 1.00)))

(script dormant void the_horror
	(begin
		(object_create_anew_containing jenkins_infection)
		(ai_attach_free jenkins_infection_1a characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1b characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1c characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1d characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1e characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1f characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1g characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1h characters\flood_infection\flood_infection)
		(ai_attach_free jenkins_infection_1i characters\flood_infection\flood_infection)
		(object_teleport jenkins_infection_1a infection_jenkins_1a)
		(object_teleport jenkins_infection_1b infection_jenkins_1b)
		(object_teleport jenkins_infection_1c infection_jenkins_1c)
		(object_teleport jenkins_infection_1d infection_jenkins_1d)
		(object_teleport jenkins_infection_1e infection_jenkins_1e)
		(object_teleport jenkins_infection_1f infection_jenkins_1f)
		(object_teleport jenkins_infection_1g infection_jenkins_1g)
		(object_teleport jenkins_infection_1h infection_jenkins_1h)
		(object_teleport jenkins_infection_1i infection_jenkins_1i)))

(script dormant void extraction_music
	(begin
		(sleep 150)
		(sound_looping_start sound\sinomatixx_music\c10_extraction_music none 1.00)))
