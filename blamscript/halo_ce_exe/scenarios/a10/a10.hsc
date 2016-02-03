(global bool global_dialog_on false)

(global bool global_music_on false)

(global long global_delay_music
	(* 30.00 300.00))

(global long global_delay_music_alt
	(* 30.00 300.00))

(global short global_random 0)

(global short global_random_rumble 0)

(global short global_random_bridge 0)

(global short global_bridge_scale 0)

(global bool global_first_run true)

(global long delay_blink
	(* 30.00 3.00))

(global long delay_dawdle
	(* 30.00 10.00))

(global long delay_tutorial
	(* 30.00 15.00))

(global long delay_prompt
	(* 30.00 10.00))

(global long delay_witness
	(* 30.00 5.00))

(global long delay_wait
	(* 30.00 10.00))

(global long delay_late
	(* 30.00 45.00))

(global long delay_lost
	(* 30.00 60.00))

(global bool test_looking_red false)

(global bool test_looking_yellow false)

(global short test_looking_cycle 0)

(global bool test_center_panel false)

(global bool test_left_panel false)

(global bool test_right_panel false)

(global bool test_up_panel false)

(global bool test_down_panel false)

(global bool test_looking_choose false)

(global bool test_bridge_active false)

(global bool mark_bridge_cutscene false)

(global bool mark_bridge_cutscene_start false)

(global bool global_rumble false)

(global bool global_intercom false)

(global long delay_rumble_short
	(* 30.00 15.00))

(global long delay_rumble_medium
	(* 30.00 30.00))

(global long delay_rumble_long
	(* 30.00 60.00))

(global bool mark_bsp0 false)

(global bool mark_bsp1 false)

(global bool mark_bsp2 false)

(global bool mark_bsp3 false)

(global bool mark_bsp4 false)

(global bool mark_bsp5 false)

(global bool mark_fast_setup false)

(global bool mark_tutorial_setup false)

(global bool mark_tutorial_introduction false)

(global bool mark_tutorial_looking false)

(global bool mark_tutorial_hud_health false)

(global bool mark_tutorial_action false)

(global bool mark_tutorial_moving_1 false)

(global bool mark_tutorial_looking_targeted false)

(global bool mark_tutorial_looking_choose false)

(global bool mark_tutorial_moving_2 false)

(global bool mark_tutorial_hud_shield false)

(global bool mark_tutorial_asst_kill false)

(global bool mark_tutorial_moving_jump false)

(global bool mark_tutorial_moving_crouch false)

(global bool mark_tutorial_light false)

(global bool mark_cryo_explosion false)

(global bool mark_containment_1 false)

(global bool mark_weapon false)

(global bool mark_shoot false)

(global bool mark_lifepod_blasts false)

(global bool mark_launch_1 false)

(global bool mark_launch_3 false)

(global bool global_meg_egg false)

(global bool test_moving_jump false)

(global bool test_moving_crouch false)

(global bool test_light false)

(global bool test_motiontracker false)

(global bool test_lifepod_blasts false)

(global bool global_test_melee false)

(global short bridge_living_count 0)

(global bool play_music_a10_01 false)

(global bool play_music_a10_01_alt false)

(global bool play_music_a10_02 false)

(global bool play_music_a10_02_alt false)

(global bool play_music_a10_03 false)

(global bool play_music_a10_03_alt false)

(global bool play_music_a10_04 false)

(global bool play_music_a10_04_alt false)

(global bool play_music_a10_05 false)

(global bool play_music_a10_05_alt false)

(global bool play_music_a10_06 false)

(global bool play_music_a10_06_alt false)

(global bool play_music_a10_07 false)

(global bool play_music_a10_07_alt false)

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

(script static void x10
	(begin
		(sound_class_set_gain device_machinery 0.00 0)
		(fade_out 0.00 0.00 0.00 0)
		(object_teleport x10 player0_x10_base)
		(object_teleport x10 player1_x10_base)
		(unit_suspended x10 true)
		(unit_suspended x10 true)
		(switch_bsp 7)
		(object_type_predict levels\a10\devices\space_battle\space_battle)
		(object_type_predict vehicles\fighterbomber\fighterbomber)
		(object_type_predict characters\captain\captain)
		(object_type_predict characters\cortana\cortana)
		(object_type_predict levels\a10\devices\chairs\chair pilot\chair pilot)
		(object_type_predict levels\a10\devices\chairs\chair pod\chair pod)
		(sound_looping_start sound\sinomatixx\x10_music01 none 1.00)
		(cinematic_start)
		(camera_control true)
		(sleep 60) x10 x10
		(fade_out 0.00 0.00 0.00 0)
		(switch_bsp 1) x10
		(switch_bsp 8)
		(cinematic_set_near_clip_distance 0.06)
		(if
			(= easy
				(game_difficulty_get_real))
			(begin x10))
		(if
			(= normal
				(game_difficulty_get_real))
			(begin x10))
		(if
			(= hard
				(game_difficulty_get_real))
			(begin x10))
		(if
			(= impossible
				(game_difficulty_get_real))
			(begin x10)) x10 x10 x10))

(script static void halo_setup
	(begin
		(object_destroy x20_halo)
		(object_create x20_halo)))

(script static void x20
	(begin
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(fade_out 1.00 1.00 1.00 0)
		(sleep 30)
		(object_destroy chief)
		(cinematic_start)
		(camera_control true)
		(switch_bsp 1) x20 x20 x20 x20
		(objects_detach chief cortana_chip)
		(object_destroy cortana_chip)
		(sound_impulse_start sound\dialog\a10\a10_flavor_340_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_flavor_340_cortana))
		(sound_impulse_start sound\dialog\a10\a10_flavor_350_chief none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_flavor_350_chief))
		(cinematic_stop)
		(camera_control false)
		(object_destroy chief)
		(object_destroy keyes)
		(object_destroy dave)
		(object_destroy pilot_chair)
		(cinematic_screen_effect_stop)
		(sound_class_set_gain music 1.00 0)
		(cinematic_set_near_clip_distance 0.06)))

(script stub void x20_post
	(begin
		(print joe's cool ass cinematic)))

(script static void x30
	(begin
		(object_destroy_all)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(fade_out 1.00 1.00 1.00 0)
		(cinematic_start)
		(camera_control true)
		(object_teleport x30 player0_x30_base)
		(object_teleport x30 player1_x30_base)
		(unit_suspended x30 true)
		(unit_suspended x30 true)
		(switch_bsp 6) x30 x30 x30
		(fade_out 0.00 0.00 0.00 0)
		(switch_bsp 7) x30
		(fade_in 0.00 0.00 0.00 0) x30 x30 x30 x30 x30 x30 x30 x30
		(cinematic_screen_effect_stop)
		(sleep 210)))

(script dormant void music_a10_01
	(begin
		(sleep_until play_music_a10_01 1)
		(sound_looping_start levels\a10\music\a10_01 none 1.00)
		(print levels\a10\music\a10_01)
		(sleep_until
			(or play_music_a10_01_alt
				(not play_music_a10_01)) 1 global_delay_music)
		(if play_music_a10_01_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_01 true)
				(sleep_until
					(not play_music_a10_01) 1 global_delay_music)
				(set play_music_a10_01_alt false)))
		(set play_music_a10_01 false)
		(sound_looping_stop levels\a10\music\a10_01)))

(script dormant void music_a10_03
	(begin
		(sleep_until play_music_a10_03 1)
		(sound_looping_start levels\a10\music\a10_03 none 1.00)
		(print levels\a10\music\a10_03)
		(sleep_until
			(or play_music_a10_03_alt
				(not play_music_a10_03)) 1 global_delay_music)
		(if play_music_a10_03_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_03 true)
				(sleep_until
					(not play_music_a10_03) 1 global_delay_music)
				(set play_music_a10_03_alt false)))
		(set play_music_a10_03 false)
		(sound_looping_stop levels\a10\music\a10_03)))

(script dormant void music_a10_04
	(begin
		(sleep_until play_music_a10_04 1)
		(sound_looping_start levels\a10\music\a10_04 none 1.00)
		(print levels\a10\music\a10_03)
		(sleep_until
			(or play_music_a10_04_alt
				(not play_music_a10_04)) 1 global_delay_music)
		(if play_music_a10_04_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_04 true)
				(sleep_until
					(not play_music_a10_04) 1 global_delay_music)
				(set play_music_a10_04_alt false)))
		(set play_music_a10_04 false)
		(sound_looping_stop levels\a10\music\a10_04)))

(script dormant void music_a10_05
	(begin
		(sleep_until play_music_a10_05 1)
		(sound_looping_start levels\a10\music\a10_05 none 1.00)
		(print levels\a10\music\a10_05)
		(sleep_until
			(or play_music_a10_05_alt
				(not play_music_a10_05)) 1 global_delay_music)
		(if play_music_a10_05_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_05 true)
				(sleep_until
					(not play_music_a10_05) 1 global_delay_music)
				(set play_music_a10_05_alt false)))
		(set play_music_a10_05 false)
		(sound_looping_stop levels\a10\music\a10_05)))

(script dormant void music_a10_06
	(begin
		(sleep_until play_music_a10_06 1)
		(sound_looping_start levels\a10\music\a10_06 none 1.00)
		(print levels\a10\music\a10_06)
		(sleep_until
			(or play_music_a10_06_alt
				(not play_music_a10_06)) 1 global_delay_music)
		(if play_music_a10_06_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_06 true)
				(sleep_until
					(not play_music_a10_06) 1 global_delay_music)
				(set play_music_a10_06_alt false)))
		(set play_music_a10_06 false)
		(sound_looping_stop levels\a10\music\a10_06)))

(script dormant void music_a10_07
	(begin
		(sleep_until play_music_a10_07 1)
		(sound_looping_start levels\a10\music\a10_07 none 1.00)
		(print levels\a10\music\a10_07)
		(sleep_until
			(or play_music_a10_07_alt
				(not play_music_a10_07)) 1 global_delay_music)
		(if play_music_a10_07_alt
			(begin
				(sound_looping_set_alternate levels\a10\music\a10_07 true)
				(sleep_until
					(not play_music_a10_07) 1 global_delay_music)
				(set play_music_a10_07_alt false)))
		(set play_music_a10_07 false)
		(sound_looping_stop levels\a10\music\a10_07)))

(script dormant void music_a10
	(begin
		(wake music_a10_01)
		(wake music_a10_03)
		(wake music_a10_04)
		(wake music_a10_05)
		(wake music_a10_06)
		(wake music_a10_07)
		(sleep_until play_music_a10_02 1)
		(sound_looping_start levels\a10\music\a10_02 none 1.00)))

(script dormant void dialog_flavor_cortana
	(begin
		(sound_impulse_start sound\dialog\a10\a10_flavor_010_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_020_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_030_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_040_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_050_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_060_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_070_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_080_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_090_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_100_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_040_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_050_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_060_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_070_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_080_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_090_cortana none 0.50)
		(sleep -1)
		(sound_impulse_start sound\dialog\a10\a10_flavor_100_cortana none 0.50)))

(script continuous void dialog_flavor_captain
	(begin
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_110_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_120_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_130_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_140_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_150_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_160_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_170_captkeyes none 0.50)
		(sleep -1)
		(print blah blah blah)
		(sound_impulse_start sound\dialog\a10\a10_flavor_210_captkeyes none 0.50)))

(script continuous void flavor_intercom
	(begin
		(sleep_until global_intercom 1)
		(if
			(and global_intercom
				(not test_bridge_active))
			(if mark_bridge_cutscene
				(wake dialog_flavor_captain)
				(wake dialog_flavor_cortana)))
		(sleep
			(random_range
				(* 30.00 60.00)
				(* 30.00 120.00)))
		(if
			(not global_rumble)
			(sleep
				(random_range
					(* 30.00 30.00)
					(* 30.00 60.00))))))

(script continuous void flavor_rumble
	(begin
		(sleep
			(*
				(random_range
					(* 30.00 45.00)
					(* 30.00 75.00))
				(+ 0.25
					(max 0.00
						(* 0.13
							(- 6.00
								(structure_bsp_index)))))))
		(if test_bridge_active
			(begin
				(sleep 120))
			(if
				(not global_rumble)
				(begin
					(sleep 120))
				(if
					(=
						(structure_bsp_index) 0)
					(begin
						(begin flavor_rumble
							(player_effect_start
								(real_random_range 0.55 0.75) 1.00)
							(sleep 30)
							(player_effect_stop
								(real_random_range 0.75 1.25))))
					(if
						(=
							(structure_bsp_index) 1)
						(begin
							(begin flavor_rumble
								(player_effect_start
									(real_random_range 0.65 0.85) 1.00)
								(sleep 30)
								(player_effect_stop
									(real_random_range 1.00 1.50))))
						(if
							(=
								(structure_bsp_index) 2)
							(begin
								(begin
									(sound_impulse_start sound\sfx\ambience\a10\pillarhits none
										(real_random_range 0.40 0.70)) flavor_rumble
									(player_effect_start
										(real_random_range 0.85 1.05) 1.00)
									(sleep 30)
									(player_effect_stop
										(real_random_range 1.50 2.50))))
							(if
								(=
									(structure_bsp_index) 3)
								(begin
									(begin
										(sound_impulse_start sound\sfx\ambience\a10\pillarhits none
											(real_random_range 0.50 0.80)) flavor_rumble
										(player_effect_start
											(real_random_range 0.95 1.15) 1.00)
										(sleep 30)
										(player_effect_stop
											(real_random_range 2.00 3.50))))
								(if
									(=
										(structure_bsp_index) 4)
									(begin
										(begin
											(sound_impulse_start sound\sfx\ambience\a10\pillarhits none
												(real_random_range 0.60 0.90)) flavor_rumble
											(player_effect_start
												(real_random_range 0.60 0.80) 1.00)
											(sleep 30)
											(player_effect_stop
												(real_random_range 0.75 1.25))))
									(if
										(=
											(structure_bsp_index) 5)
										(begin
											(begin
												(sound_impulse_start sound\sfx\ambience\a10\pillarhits none
													(real_random_range 0.70 1.00)) flavor_rumble
												(player_effect_start
													(real_random_range 0.85 1.05) 1.00)
												(sleep 30)
												(player_effect_stop
													(real_random_range 1.00 1.50))))
										(if
											(=
												(structure_bsp_index) 6)
											(begin
												(begin
													(sound_impulse_start sound\sfx\ambience\a10\pillarhits none
														(real_random_range 0.80 1.00)) flavor_rumble
													(player_effect_start
														(real_random_range 0.95 1.15) 1.00)
													(sleep 30)
													(player_effect_stop
														(real_random_range 2.00 3.00)))))))))))))))

(script dormant void mission_bsp
	(begin
		(sleep_until
			(< 0
				(structure_bsp_index)) 1)
		(ai_free first_contact)
		(device_set_position bsp0_door 0.00)
		(sleep_until
			(= 0.00
				(device_get_position bsp0_door)) 1)
		(device_set_power bsp0_door 0.00)
		(set mark_bsp0 true)
		(sleep_until
			(< 1
				(structure_bsp_index)) 1)
		(device_set_position_immediate bsp1_door 0.00)
		(device_set_power bsp1_door 0.00)
		(set mark_bsp1 true)
		(sleep_until
			(< 2
				(structure_bsp_index)) 1)
		(device_set_position_immediate bsp2_door 0.00)
		(device_set_power bsp2_door 0.00)
		(set mark_bsp2 true)
		(sleep_until
			(< 3
				(structure_bsp_index)) 1)
		(device_set_position_immediate bsp3_door 0.00)
		(device_set_power bsp3_door 0.00)
		(set mark_bsp3 true)
		(sleep_until
			(< 4
				(structure_bsp_index)) 1)
		(device_set_position_immediate tunnel_door_1 0.00)
		(device_set_position_immediate tunnel_door_2 0.00)
		(device_set_power tunnel_door_1 0.00)
		(device_set_power tunnel_door_2 0.00)
		(set mark_bsp4 true)
		(sleep_until
			(< 5
				(structure_bsp_index)) 1)
		(device_set_position_immediate bsp5_door 0.10)
		(device_set_power bsp5_door 0.00)
		(set mark_bsp5 true)))

(script dormant void title_training
	(begin
		(cinematic_show_letterbox true)
		(show_hud false)
		(sleep 30)
		(cinematic_set_title training)
		(sleep 150)
		(show_hud true)
		(cinematic_show_letterbox false)))

(script dormant void title_bridge
	(begin
		(cinematic_show_letterbox true)
		(show_hud false)
		(sleep 30)
		(cinematic_set_title bridge)
		(sleep 150)
		(show_hud true)
		(cinematic_show_letterbox false)))

(script dormant void title_escape
	(begin
		(cinematic_show_letterbox true)
		(show_hud false)
		(sleep 30)
		(cinematic_set_title escape)
		(sleep 150)
		(show_hud true)
		(cinematic_show_letterbox false)))

(script startup void cont_thing
	(begin
		(if
			(and
				(not
					(game_is_cooperative))
				(=
					(game_difficulty_get) impossible))
			(sleep_until
				(volume_test_objects meg_egg
					(players)) delay_dawdle))
		(if
			(and
				(not
					(game_is_cooperative))
				(=
					(game_difficulty_get) impossible))
			(set global_meg_egg true))))

(script continuous void tutorial_ladder
	(begin
		(sleep_until
			(volume_test_objects ladder_trigger
				(players)) 90)
		(show_hud_help_text true)
		(hud_set_help_text ladder_1)
		(sleep_until
			(not
				(volume_test_objects ladder_trigger
					(players))) 90)
		(show_hud_help_text false)))

(script static void test_looking_tech
	(begin
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(sleep 15))
		(if
			(not
				(objects_can_see_object test_looking_tech
					(list_get
						(ai_actors cryo_tech/tech) 0) 20.00))
			(begin
				(if
					(< 0.50
						(real_random_range 0.00 1.00))
					(begin
						(begin
							(sound_impulse_start sound\dialog\a10\a10_101_cryotech
								(list_get
									(ai_actors cryo_tech/tech) 0) 1.00)
							(sleep
								(sound_impulse_time sound\dialog\a10\a10_101_cryotech))))
					(if true
						(begin
							(begin
								(sound_impulse_start sound\dialog\a10\a10_261_cryotech
									(list_get
										(ai_actors cryo_tech/tech) 0) 1.00)
								(sleep
									(sound_impulse_time sound\dialog\a10\a10_261_cryotech))))))
				(sleep_until
					(objects_can_see_object test_looking_tech
						(list_get
							(ai_actors cryo_tech/tech) 0) 15.00) 1)))))

(script dormant void tutorial_introduction
	(begin
		(sound_impulse_start sound\dialog\a10\a10_011_cryoassist none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_011_cryoassist))
		(sleep 45)
		(unit_open cryotube_1)
		(sleep 60)
		(ai_command_list cryo_tech/tech introduction_3)
		(sound_impulse_start sound\dialog\a10\a10_010_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_010_cryotech))
		(sound_impulse_start sound\dialog\a10\a10_020_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_020_cryotech))
		(ai_command_list cryo_tech/asst introduction_4)
		(sound_impulse_start sound\dialog\a10\a10_030_cryoassist none 1.00)
		(ai_command_list cryo_tech/tech introduction_5)
		(sleep_until
			(or
				(= 0
					(sound_impulse_time sound\dialog\a10\a10_030_cryoassist))
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors cryo_tech/asst) 0) 25.00)) 1)
		(ai_command_list_advance cryo_tech/asst)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_030_cryoassist))
		(sleep 5)
		(set mark_tutorial_introduction true)))

(script dormant void tutorial_looking
	(begin
		(ai_command_list cryo_tech/tech looking_2)
		(ai_command_list cryo_tech/asst looking_1)
		(show_hud_help_text true)
		(hud_set_help_text tutorial_introduction_1)
		(sleep 45)
		(sound_impulse_start sound\dialog\a10\a10_040_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(player_action_test_reset)
		(enable_hud_help_flash true)
		(if
			(player0_joystick_set_is_normal)
			(hud_set_help_text tutorial_looking_1)
			(hud_set_help_text tutorial_looking_1l))
		(sleep_until
			(and
				(player_action_test_look_relative_left)
				(player_action_test_look_relative_right)) 1)
		(sleep_until
			(player_action_test_look_relative_all_directions) 1 delay_prompt)
		(if
			(not
				(or
					(player_action_test_look_relative_up)
					(player_action_test_look_relative_down)))
			(if
				(player0_joystick_set_is_normal)
				(hud_set_help_text tutorial_looking_2)
				(hud_set_help_text tutorial_looking_2l)))
		(sleep_until
			(player_action_test_look_relative_all_directions) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_040_cryotech))
		(sound_impulse_start sound\dialog\a10\a10_050_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_050_cryotech))
		(set mark_tutorial_looking true)))

(script dormant void tutorial_hud_health
	(begin
		(ai_command_list cryo_tech/tech action_1)
		(sound_impulse_start sound\dialog\a10\a10_051_cryoassist none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_051_cryoassist))
		(hud_show_health true)
		(hud_blink_health true)
		(unit_set_maximum_vitality tutorial_hud_health 100.00 0.00)
		(unit_set_current_vitality tutorial_hud_health 12.50 0.00)
		(sleep 45)
		(unit_set_current_vitality tutorial_hud_health 25.00 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 37.50 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 50.00 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 62.50 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 75.00 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 87.50 0.00)
		(sleep 15)
		(unit_set_current_vitality tutorial_hud_health 100.00 0.00)
		(sleep 15)
		(hud_blink_health false)
		(sound_impulse_start sound\dialog\a10\a10_052_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_052_cryotech) 30.00)))
		(set mark_tutorial_hud_health true)))

(script dormant void tutorial_action
	(begin
		(ai_command_list cryo_tech/tech action_2)
		(sleep 45)
		(sound_impulse_start sound\dialog\a10\a10_070_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_action_1)
		(player_enable_input true)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_action) 1)
		(player_action_test_reset)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(fade_out 1.00 1.00 1.00 15)
		(sleep 30)
		(cinematic_start)
		(camera_control true)
		(camera_set tutorial_action_2 0)
		(camera_set tutorial_action_1 250)
		(object_beautify tutorial_action true)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(sound_looping_start sound\sinomatixx_foley\a10_cryoexit_foley none 1.00)
		(unit_exit_vehicle tutorial_action)
		(sleep 170)
		(fade_out 1.00 1.00 1.00 15)
		(sleep 35)
		(object_teleport tutorial_action tutorial_exit_cryotube_flag)
		(camera_control false)
		(cinematic_stop)
		(sleep 30)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(object_beautify tutorial_action false)
		(player_camera_control true)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_070_cryotech))
		(set mark_tutorial_action true)
		(sleep 60)
		(unit_close cryotube_1)))

(script dormant void tutorial_moving_1
	(begin tutorial_moving_1
		(sound_impulse_start sound\dialog\a10\a10_080_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_080_cryotech))
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(if
			(player0_joystick_set_is_normal)
			(hud_set_help_text tutorial_moving_1)
			(hud_set_help_text tutorial_moving_1l))
		(ai_command_list cryo_tech/tech moving_1_2)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_tech/tech))) 1)
		(ai_command_list_advance cryo_tech/tech)
		(sleep_until
			(or
				(volume_test_objects moving_1_trigger_1
					(players))
				(objects_can_see_object tutorial_moving_1
					(list_get
						(ai_actors cryo_tech/tech) 0) 15.00)) 1)
		(ai_command_list cryo_tech/tech moving_1_3)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_tech/tech))) 1)
		(sleep_until
			(volume_test_objects moving_1_trigger_1
				(players)) 1) tutorial_moving_1
		(if
			(not
				(volume_test_objects red_square
					(players)))
			(begin
				(sound_impulse_start sound\dialog\a10\a10_090_cryotech
					(list_get
						(ai_actors cryo_tech/tech) 0) 1.00)
				(sleep 60)
				(ai_command_list cryo_tech/tech red_square)
				(sleep
					(sound_impulse_time sound\dialog\a10\a10_090_cryotech))
				(sleep_until
					(volume_test_objects red_square
						(players)) 1)))
		(set mark_tutorial_moving_1 true)))

(script dormant void tutorial_looking_targeted
	(begin
		(ai_command_list cryo_tech/tech looking_targeted_1) tutorial_looking_targeted
		(sound_impulse_start sound\dialog\a10\a10_130_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_130_cryotech))
		(sound_impulse_start sound\dialog\a10\a10_140_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep 60)
		(set test_looking_cycle 1)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_140_cryotech))
		(ai_command_list cryo_tech/asst looking_targeted_2)
		(sleep_until
			(= 0 test_looking_cycle) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sound_impulse_start sound\dialog\a10\a10_150_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_150_cryotech))
		(set mark_tutorial_looking_targeted true)))

(script continuous void test_looking_cycle_center
	(begin
		(sleep_until test_center_panel 1)
		(object_destroy looking_panel_center_success)
		(object_create looking_panel_center)
		(sleep_until
			(or
				(not test_center_panel)
				(objects_can_see_object test_looking_cycle_center looking_panel_center 5.00)) 1)
		(if test_center_panel
			(begin
				(object_destroy looking_panel_center)
				(object_create looking_panel_center_success)))
		(set test_center_panel false)))

(script continuous void test_looking_cycle_left
	(begin
		(sleep_until test_left_panel 1)
		(object_destroy looking_panel_left_success)
		(object_create looking_panel_left)
		(sleep_until
			(or
				(not test_left_panel)
				(objects_can_see_object test_looking_cycle_left looking_panel_left 5.00)) 1)
		(if test_left_panel
			(begin
				(object_destroy looking_panel_left)
				(object_create looking_panel_left_success)))
		(set test_left_panel false)))

(script continuous void test_looking_cycle_right
	(begin
		(sleep_until test_right_panel 1)
		(object_destroy looking_panel_right_success)
		(object_create looking_panel_right)
		(sleep_until
			(or
				(not test_right_panel)
				(objects_can_see_object test_looking_cycle_right looking_panel_right 5.00)) 1)
		(if test_right_panel
			(begin
				(object_destroy looking_panel_right)
				(object_create looking_panel_right_success)))
		(set test_right_panel false)))

(script continuous void test_looking_cycle_up
	(begin
		(sleep_until test_up_panel 1)
		(object_destroy looking_panel_up_success)
		(object_create looking_panel_up)
		(sleep_until
			(or
				(not test_up_panel)
				(objects_can_see_object test_looking_cycle_up looking_panel_up 5.00)) 1)
		(if test_up_panel
			(begin
				(object_destroy looking_panel_up)
				(object_create looking_panel_up_success)))
		(set test_up_panel false)))

(script continuous void test_looking_cycle_down
	(begin
		(sleep_until test_down_panel 1)
		(object_destroy looking_panel_down_success)
		(object_create looking_panel_down)
		(sleep_until
			(or
				(not test_down_panel)
				(objects_can_see_object test_looking_cycle_down looking_panel_down 5.00)) 1)
		(if test_down_panel
			(begin
				(object_destroy looking_panel_down)
				(object_create looking_panel_down_success)))
		(set test_down_panel false)))

(script continuous void test_looking_cycle
	(begin
		(if mark_tutorial_looking_choose
			(sleep -1))
		(sleep_until
			(< 0 test_looking_cycle) 1)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_looking_targeted_1)
		(sleep_until
			(volume_test_objects red_square
				(players)) 1)
		(if
			(= 1 test_looking_cycle)
			(hud_set_help_text tutorial_looking_targeted_2)
			(hud_set_help_text tutorial_looking_targeted_3))
		(set test_center_panel true)
		(set test_up_panel true)
		(set test_down_panel true)
		(set test_left_panel true)
		(set test_right_panel true)
		(sleep_until
			(or
				(not
					(volume_test_objects red_square
						(players)))
				(not
					(or test_center_panel test_up_panel test_down_panel test_left_panel test_right_panel))) 1)
		(if
			(volume_test_objects red_square
				(players))
			(set test_looking_cycle 0)
			(begin
				(set test_center_panel false)
				(set test_up_panel false)
				(set test_down_panel false)
				(set test_left_panel false)
				(set test_right_panel false)))))

(script dormant void tutorial_looking_choose
	(begin
		(sound_impulse_start sound\dialog\a10\a10_160_cryoassist
			(list_get
				(ai_actors cryo_tech/asst) 1) 1.00)
		(sleep 30)
		(ai_command_list cryo_tech/tech looking_inverted_1)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_160_cryoassist))
		(sound_impulse_start sound\dialog\a10\a10_170_cryoassist
			(list_get
				(ai_actors cryo_tech/asst) 1) 1.00)
		(ai_command_list_advance cryo_tech/tech)
		(set test_looking_choose true)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_170_cryoassist))
		(sleep_until
			(not test_looking_choose) 1)
		(player_action_test_reset)
		(ai_command_list cryo_tech/tech looking_inverted_2)
		(if
			(player0_look_pitch_is_inverted)
			(sound_impulse_start sound\dialog\a10\a10_210_cryoassist none 1.00)
			(sound_impulse_start sound\dialog\a10\a10_220_cryoassist none 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_210_cryoassist))
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_220_cryoassist))
		(sleep 45)
		(display_scenario_help 2)
		(set mark_tutorial_looking_choose true)))

(script continuous void test_looking_choose_cycle
	(begin
		(if mark_tutorial_looking_choose
			(sleep -1))
		(sleep_until test_looking_choose 1)
		(player0_look_invert_pitch true)
		(ai_command_list cryo_tech/tech looking_inverted_1)
		(if global_first_run
			(begin
				(set test_looking_cycle 2)
				(sleep_until
					(= 0 test_looking_cycle) 1))
			(begin
				(sound_impulse_start sound\dialog\a10\a10_170_cryoassist none 1.00)
				(show_hud_help_text true)
				(enable_hud_help_flash true)
				(hud_set_help_text tutorial_looking_choose_1)
				(player_action_test_reset)
				(sleep_until
					(and
						(player_action_test_look_relative_up)
						(player_action_test_look_relative_down)) 1 60)
				(ai_command_list_advance cryo_tech/tech)
				(sleep_until
					(and
						(player_action_test_look_relative_up)
						(player_action_test_look_relative_down)) 1)
				(enable_hud_help_flash false)
				(show_hud_help_text false)))
		(sleep 5)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_170_cryoassist))
		(ai_command_list cryo_tech/tech looking_inverted_2)
		(sound_impulse_start sound\dialog\a10\a10_180_cryoassist none 1.00)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_looking_choose_2)
		(player_action_test_reset)
		(sleep_until
			(or
				(player_action_test_accept)
				(player_action_test_back)) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sleep 5)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_180_cryoassist))
		(if
			(player_action_test_accept)
			(begin
				(set test_looking_choose false)
				(sleep -1))
			(player0_look_invert_pitch false))
		(player_action_test_reset)
		(sleep_until test_looking_choose 30)
		(ai_command_list cryo_tech/tech looking_inverted_1)
		(sound_impulse_start sound\dialog\a10\a10_190_cryoassist none 1.00)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_looking_choose_3)
		(player_action_test_reset)
		(sleep_until
			(and
				(player_action_test_look_relative_up)
				(player_action_test_look_relative_down)) 1 60)
		(ai_command_list_advance cryo_tech/tech)
		(sleep_until
			(and
				(player_action_test_look_relative_up)
				(player_action_test_look_relative_down)) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sleep 5)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_190_cryoassist))
		(ai_command_list cryo_tech/tech looking_inverted_2)
		(sound_impulse_start sound\dialog\a10\a10_200_cryoassist none 1.00)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_looking_choose_4)
		(player_action_test_reset)
		(sleep_until
			(or
				(player_action_test_accept)
				(player_action_test_back)) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sleep 5)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_200_cryoassist))
		(if
			(player_action_test_accept)
			(begin
				(set test_looking_choose false)
				(sleep -1))
			(player0_look_invert_pitch true))
		(player_action_test_reset)
		(set global_first_run false)))

(script dormant void tutorial_moving_2
	(begin
		(sound_impulse_start sound\dialog\a10\a10_230_cryoassist none 1.00)
		(ai_command_list cryo_tech/asst moving_2_1)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_230_cryoassist))
		(sound_impulse_start sound\dialog\a10\a10_240_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_240_cryotech))
		(sleep 45)
		(set global_intercom true)
		(sleep_until
			(or
				(volume_test_objects moving_2_trigger_1
					(players))
				(objects_can_see_object tutorial_moving_2
					(list_get
						(ai_actors cryo_tech/tech) 0) 15.00)) 1)
		(ai_command_list cryo_tech/tech moving_2_2)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_240_cryotech))
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_tech/tech))) 1)
		(sleep_until
			(volume_test_objects moving_2_trigger_1
				(players)) 1) tutorial_moving_2
		(if
			(not
				(volume_test_objects yellow_square
					(players)))
			(begin
				(sound_impulse_start sound\dialog\a10\a10_260_cryotech
					(list_get
						(ai_actors cryo_tech/tech) 0) 1.00)
				(sleep 60)
				(ai_command_list cryo_tech/tech yellow_square)
				(sleep
					(sound_impulse_time sound\dialog\a10\a10_260_cryotech))))
		(set mark_tutorial_moving_2 true)))

(script dormant void tutorial_hud_shield
	(begin
		(sleep_until
			(volume_test_objects yellow_square
				(players)) 1)
		(player_enable_input false)
		(sleep 15)
		(ai_command_list cryo_tech/tech hud_1)
		(sound_impulse_start sound\dialog\a10\a10_310_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_310_cryotech))
		(ai_command_list_advance cryo_tech/tech)
		(device_group_set shield_charge_power 0.20)
		(sleep 30)
		(hud_show_shield true)
		(hud_blink_shield true)
		(unit_set_maximum_vitality tutorial_hud_shield 100.00 75.00)
		(unit_set_current_vitality tutorial_hud_shield 100.00 0.00)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text hud_shield_1)
		(sleep 150)
		(sound_impulse_start sound\dialog\a10\a10_320_cryoassist none 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_320_cryoassist) 45.00)))
		(ai_command_list cryo_tech/tech hud_1)
		(sleep 45)
		(ai_command_list_advance cryo_tech/tech)
		(sleep 15)
		(sound_impulse_start sound\dialog\a10\a10_330_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(hud_set_help_text hud_shield_2)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_accept) 1)
		(player_action_test_reset)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sound_looping_start sound\sfx\weapons\plasma rifle\charging none 1.00)
		(device_group_set shield_charge_power 1.00)
		(sleep 90)
		(sound_looping_stop sound\sfx\weapons\plasma rifle\charging)
		(damage_new levels\a10\devices\shield charge\zapper tutorial_zapper_flag)
		(device_group_set shield_charge_power 0.20)
		(unit_set_maximum_vitality tutorial_hud_shield 100.00 0.00)
		(sleep 120)
		(unit_set_maximum_vitality tutorial_hud_shield 100.00 75.00)
		(unit_set_current_vitality tutorial_hud_shield 100.00 0.00)
		(hud_set_help_text hud_shield_3)
		(sleep 150)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_330_cryotech))
		(sound_impulse_start sound\dialog\a10\a10_340_cryoassist none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_340_cryoassist))
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(device_group_set shield_charge_power 0.00)
		(player_enable_input true)
		(hud_blink_shield false)
		(set mark_tutorial_hud_shield true)))

(script dormant void tutorial_asst_kill
	(begin
		(sound_impulse_start sound\dialog\a10\a10_350_captkeyes none 1.00)
		(sleep 10)
		(ai_command_list cryo_tech/tech asst_kill_1)
		(ai_command_list cryo_tech/asst asst_kill_2)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_350_captkeyes))
		(sound_impulse_start sound\dialog\a10\a10_360_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_360_cryotech) 20.00)))
		(sound_impulse_start sound\dialog\a10\a10_370_captkeyes none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_370_captkeyes))
		(sound_impulse_start sound\dialog\a10\a10_380_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_380_cryotech))
		(ai_command_list_advance cryo_tech/tech)
		(sleep 15)
		(ai_command_list_advance cryo_tech/asst)
		(sound_impulse_start sound\dialog\a10\a10_390_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_390_cryotech))
		(ai_command_list_advance cryo_tech/tech)
		(sound_impulse_start sound\dialog\a10\a10_400_cryoassist none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_400_cryoassist))
		(if
			(not
				(objects_can_see_object tutorial_asst_kill
					(list_get
						(ai_actors cryo_tech/asst) 0) 20.00))
			(sound_impulse_start sound\dialog\a10\a10_410_cryotech
				(list_get
					(ai_actors cryo_tech/tech) 0) 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_410_cryotech))
		(if
			(not
				(objects_can_see_object tutorial_asst_kill
					(list_get
						(ai_actors cryo_tech/asst) 0) 20.00))
			(sound_impulse_start sound\dialog\a10\a10_420_cryoassist none 1.00))
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_420_cryoassist) 30.00)))
		(sound_impulse_start sound\sfx\ambience\a10\doorpound none 1.00)
		(ai_command_list cryo_tech/asst asst_kill_3)
		(ai_command_list cryo_tech/tech asst_kill_4)
		(object_create asst_kill_light_1)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\sfx\ambience\a10\doorpound) 60.00)))
		(sound_impulse_start sound\dialog\a10\a10_430_cryoassist none 1.00)
		(ai_command_list cryo_tech/tech asst_kill_6)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_430_cryoassist) 120.00)))
		(sound_impulse_start sound\sfx\ambience\a10\doorpound none 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\sfx\ambience\a10\doorpound) 60.00)))
		(effect_new effects\explosions\medium explosion asst_kill_flag)
		(ai_place cryo_bane)
		(object_cannot_take_damage
			(ai_actors cryo_bane))
		(units_set_current_vitality
			(ai_actors cryo_bane) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors cryo_bane))
		(object_destroy cryo_door_1)
		(object_cannot_take_damage
			(ai_actors cryo_tech/asst))
		(ai_command_list cryo_tech/asst asst_kill_5)
		(ai_command_list cryo_bane asst_kill_8)
		(sleep 60)
		(sound_impulse_start sound\dialog\a10\a10_440_cryoassist none 1.00)
		(object_can_take_damage
			(ai_actors cryo_tech/asst))
		(units_set_current_vitality
			(ai_actors cryo_tech/asst) 1.00 0.00)
		(sleep_until
			(= 0
				(ai_living_count cryo_tech/asst)) 1
			(sound_impulse_time sound\dialog\a10\a10_440_cryoassist))
		(sound_impulse_stop sound\dialog\a10\a10_440_cryoassist)
		(ai_kill cryo_tech/asst)
		(sound_impulse_start sound\dialog\a10\a10_449_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_449_cryotech))
		(set mark_tutorial_asst_kill true)
		(ai_command_list cryo_bane asst_kill_9)
		(sleep_until
			(objects_can_see_object tutorial_asst_kill
				(list_get
					(ai_actors cryo_bane) 0) 40.00) 1 15)
		(ai_command_list_advance cryo_bane)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_bane))) 1)
		(ai_erase cryo_bane)
		(sleep_until
			(volume_test_objects cryo_search_trigger_1
				(players)) 5)
		(ai_place cryo_tech/asst)
		(ai_kill cryo_tech/asst)))

(script continuous void tutorial_moving_jump
	(begin
		(sleep_until test_moving_jump 30)
		(sleep_until
			(volume_test_objects moving_jump
				(players)) 5)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text moving_jump_1)
		(sleep_until
			(not
				(volume_test_objects moving_jump
					(players))) 1)
		(if
			(volume_test_objects moving_jump_success
				(players))
			(begin
				(set mark_tutorial_moving_jump true)
				(set test_moving_jump false)
				(show_hud_help_text false)
				(sleep -1)))
		(enable_hud_help_flash false)
		(show_hud_help_text false)))

(script continuous void tutorial_moving_crouch
	(begin
		(sleep_until test_moving_crouch 30)
		(sleep_until
			(volume_test_objects moving_crouch
				(players)) 5)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text moving_crouch_1)
		(sleep_until
			(not
				(volume_test_objects moving_crouch
					(players))) 1)
		(if
			(volume_test_objects moving_crouch_success
				(players))
			(begin
				(set mark_tutorial_moving_crouch true)
				(set test_moving_crouch false)
				(show_hud_help_text false)
				(sleep -1)))
		(enable_hud_help_flash false)
		(show_hud_help_text false)))

(script dormant void tutorial_first_contact
	(begin
		(device_set_position_immediate first_contact_door_1 0.00)
		(device_set_position_immediate first_contact_door_4 1.00)
		(sleep_until
			(volume_test_objects first_contact_trigger_1
				(players)) 1)
		(object_create first_contact_flame_1)
		(object_create first_contact_flame_2)
		(object_create first_contact_corpse)
		(sleep_until
			(and
				(volume_test_objects first_contact_trigger_1
					(players))
				(objects_can_see_object
					(players) first_contact_door_1 20.00)) 1)
		(device_operates_automatically_set first_contact_door_2 false)
		(device_set_position first_contact_door_2 0.00)
		(ai_place first_contact)
		(object_cannot_take_damage
			(ai_actors first_contact))
		(units_set_current_vitality
			(ai_actors first_contact) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors first_contact))
		(ai_berserk first_contact false)
		(ai_braindead first_contact true)
		(ai_place first_contact_anti)
		(object_cannot_take_damage
			(ai_actors first_contact_anti))
		(units_set_current_vitality
			(ai_actors first_contact_anti) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors first_contact_anti))
		(device_set_power first_contact_door_1 1.00)
		(sleep_until
			(and
				(volume_test_objects first_contact_trigger_2
					(players))
				(objects_can_see_object
					(players) first_contact_door_1 15.00)) 1 delay_witness)
		(device_set_position first_contact_door_1 1.00)
		(object_create first_contact_light_1)
		(set play_music_a10_02 true)
		(set play_music_a10_01_alt true)
		(sleep_until
			(< 0.40
				(device_get_position first_contact_door_1)) 1)
		(ai_command_list_advance first_contact_anti)
		(sleep_until
			(or
				(volume_test_objects first_contact_trigger_3
					(players))
				(= 1
					(ai_command_list_status
						(ai_actors first_contact_anti/elite)))) 1)
		(ai_command_list_advance first_contact_anti)
		(device_operates_automatically_set first_contact_door_2 true)
		(ai_braindead first_contact false)
		(sleep 30)
		(ai_try_to_fight first_contact_anti first_contact)
		(ai_magically_see_encounter first_contact first_contact_anti)
		(ai_playfight first_contact_anti true)
		(sleep 60)
		(ai_defend first_contact_anti/anti)
		(sleep_until
			(volume_test_objects first_contact_trigger_4
				(ai_actors first_contact_anti)) 1 90)
		(ai_try_to_fight_nothing first_contact_anti)
		(sleep_until
			(volume_test_objects first_contact_trigger_4
				(ai_actors first_contact_anti)) 1)
		(ai_defend first_contact/marine)
		(sleep_until
			(objects_can_see_object
				(players) first_contact_door_3 25.00) 1 delay_witness)
		(sleep_until
			(and
				(volume_test_objects first_contact_trigger_4
					(ai_actors first_contact_anti))
				(not
					(volume_test_objects first_contact_trigger_6
						(players)))) 1)
		(object_create first_contact_doora)
		(device_set_position first_contact_door_3 0.00)
		(sleep 60)
		(ai_conversation first_contact)
		(sleep_until
			(< 4
				(ai_conversation_status first_contact)) 1)))

(script dormant void tutorial_weapon
	(begin
		(sleep_until mark_weapon 1)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text firing_1)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_primary_trigger) 1)
		(sleep 15)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_primary_trigger) 1)
		(sleep 15)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_primary_trigger) 1)
		(sleep 15)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_primary_trigger) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)
		(sleep_until
			(or
				(and
					(= 0
						(ai_living_count cafeteria_anti))
					(volume_test_objects weapon_trigger
						(players)))
				(volume_test_objects bsp1,2
					(players))) 1)
		(sleep_until
			(volume_test_objects bsp1,2
				(players)) 1 90)
		(display_scenario_help 0)))

(script continuous void tutorial_light
	(begin
		(sleep_until test_light)
		(sleep_until
			(or
				(volume_test_objects light_1
					(players))
				(volume_test_objects light_2
					(players))) 30)
		(show_hud_help_text true)
		(hud_set_help_text light_1)
		(sleep_until
			(not
				(or
					(volume_test_objects light_1
						(players))
					(volume_test_objects light_2
						(players)))) 1)
		(if
			(volume_test_objects light_success
				(players))
			(begin
				(set mark_tutorial_light true)
				(set test_light false)
				(show_hud_help_text false)
				(sleep -1)))
		(show_hud_help_text false)))

(script dormant void tutorial_motiontracker
	(begin
		(device_set_power motiontracker_door_2 0.00)
		(device_set_power motiontracker_door_3 0.00)
		(sleep_until
			(volume_test_objects motiontracker_1
				(players)) 30)
		(ai_conversation motiontracker_1)
		(sleep_until
			(>
				(ai_conversation_status motiontracker_1) 4) 1)
		(hud_show_motion_sensor true)
		(hud_blink_motion_sensor false)
		(sleep_until
			(or
				(volume_test_objects motiontracker_2
					(players))
				(volume_test_objects motiontracker_3
					(players))
				(volume_test_objects motiontracker_4
					(players))) 1)
		(if
			(volume_test_objects motiontracker_2
				(players))
			(begin
				(ai_conversation motiontracker_2)
				(sleep_until
					(or
						(volume_test_objects motiontracker_3
							(players))
						(volume_test_objects motiontracker_4
							(players))) 1)
				(if
					(volume_test_objects motiontracker_3
						(players))
					(ai_conversation motiontracker_3)))
			(begin
				(ai_conversation motiontracker_3)
				(sleep_until
					(or
						(volume_test_objects motiontracker_2
							(players))
						(volume_test_objects motiontracker_4
							(players))) 1)
				(if
					(volume_test_objects motiontracker_2
						(players))
					(ai_conversation motiontracker_2))))
		(sleep_until
			(volume_test_objects motiontracker_4
				(players)) 1)
		(ai_conversation motiontracker_4)
		(hud_blink_motion_sensor false)
		(device_set_power motiontracker_door_1 1.00)))

(script continuous void test_melee
	(begin
		(sleep_until global_test_melee 10)
		(sleep_until
			(volume_test_objects melee_trigger_3
				(players)) 5)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text melee_1)
		(sleep_until
			(or
				(not global_test_melee)
				(not
					(volume_test_objects melee_trigger_3
						(players)))) 1)
		(enable_hud_help_flash false)
		(show_hud_help_text false)))

(script dormant void tutorial_melee
	(begin
		(object_destroy melee_door_1)
		(object_create melee_door_2)
		(device_set_position_immediate melee_door_2 0.83)
		(sleep_until
			(volume_test_objects melee_trigger_1
				(players)) 1)
		(sleep_until
			(>
				(ai_conversation_status motiontracker_4) 4) 1 delay_dawdle)
		(sound_impulse_start sound\dialog\a10\a10_681_cortana none 1.00)
		(sleep_until
			(or
				(= 1.00
					(device_get_position melee_door_2))
				(= 0
					(sound_impulse_time sound\dialog\a10\a10_681_cortana))) 1)
		(if
			(not
				(= 1.00
					(device_get_position melee_door_2)))
			(sound_impulse_start sound\dialog\a10\a10_682_cortana none 1.00))
		(sleep_until
			(or
				(= 1.00
					(device_get_position melee_door_2))
				(= 0
					(sound_impulse_time sound\dialog\a10\a10_682_cortana))) 1)
		(if
			(not
				(= 1.00
					(device_get_position melee_door_2)))
			(set global_test_melee true))
		(sleep_until
			(= 1.00
				(device_get_position melee_door_2)) 1)
		(sound_impulse_start sound\sfx\impulse\impacts\a10_door_bash melee_door_2 1.00)
		(set global_test_melee false)
		(sleep_until
			(volume_test_objects melee_trigger_2
				(players)) 1 delay_blink)
		(display_scenario_help 1)
		(ai_place tunnel_anti/sucker_grunt)))

(script dormant void tutorial_grenade
	(begin
		(sleep_until
			(>
				(unit_get_total_grenade_count tutorial_grenade) 0) 1)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_grenade)
		(player_action_test_reset)
		(sleep_until
			(player_action_test_grenade_trigger) 1 delay_late)
		(enable_hud_help_flash false)
		(show_hud_help_text false)))

(script dormant void tutorial_setup
	(begin
		(ai_grenades false)
		(ai_dialogue_triggers false)
		(player_enable_input false)
		(hud_show_crosshair false)
		(hud_show_health false)
		(hud_show_shield false)
		(hud_show_motion_sensor false)
		(unit_set_maximum_vitality tutorial_setup 1.00 0.00)
		(ai_place cryo_tech/tech)
		(object_cannot_take_damage
			(ai_actors cryo_tech/tech))
		(units_set_current_vitality
			(ai_actors cryo_tech/tech) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors cryo_tech/tech))
		(ai_command_list cryo_tech/tech introduction_2)
		(ai_place cryo_tech/asst)
		(object_cannot_take_damage
			(ai_actors cryo_tech/asst))
		(units_set_current_vitality
			(ai_actors cryo_tech/asst) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors cryo_tech/asst))
		(ai_command_list cryo_tech/asst introduction_1)
		(object_create cryotube_1)
		(unit_enter_vehicle tutorial_setup cryotube_1 ct-driver)
		(object_create cryotube_1_steam_1)
		(object_create cryotube_1_steam_2)
		(wake title_training)
		(hud_set_objective_text dia_training)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_filter_desaturation_tint 1.00 1.00 1.00)
		(cinematic_screen_effect_set_filter 1.00 0.00 1.00 0.00 true 5.00)
		(cinematic_screen_effect_set_convolution 1 2 10.00 0.00 5.00)
		(fade_in 1.00 1.00 1.00 30)
		(sleep 60)
		(wake tutorial_introduction)
		(sleep_until mark_tutorial_introduction 1 60)
		(object_destroy cryotube_1_steam_1)
		(sleep 5)
		(object_destroy cryotube_2_steam_1)
		(sleep 15)
		(object_destroy cryotube_1_steam_2)
		(sleep 5)
		(object_destroy cryotube_2_steam_2)
		(cinematic_screen_effect_stop)
		(sleep_until mark_tutorial_introduction 1)
		(wake tutorial_looking)
		(sleep_until mark_tutorial_looking 1)
		(wake tutorial_hud_health)
		(sleep_until mark_tutorial_hud_health 1)
		(wake tutorial_action)
		(sleep_until mark_tutorial_action 1)
		(hud_show_crosshair true)
		(wake tutorial_moving_1)
		(sleep_until mark_tutorial_moving_1 1)
		(wake tutorial_looking_targeted)
		(sleep_until mark_tutorial_looking_targeted 1)
		(if
			(not
				(player0_look_pitch_is_inverted))
			(begin
				(wake tutorial_looking_choose)
				(sleep_until mark_tutorial_looking_choose 1)))
		(game_save)
		(wake tutorial_moving_2)
		(sleep_until mark_tutorial_moving_2 1)
		(wake tutorial_hud_shield)
		(sleep_until mark_tutorial_hud_shield 1)
		(wake tutorial_asst_kill)
		(sleep_until mark_tutorial_asst_kill 1)
		(set test_moving_jump true)
		(set test_moving_crouch true)
		(set mark_tutorial_setup true)
		(wake tutorial_first_contact)
		(sleep_until mark_bridge_cutscene 1)
		(wake tutorial_weapon)
		(set test_light true)
		(wake tutorial_motiontracker)
		(wake tutorial_melee)
		(wake tutorial_grenade)))

(script static void fade_out_in
	(begin
		(sleep 45)
		(fade_out 0.00 0.00 0.00 0)
		(fade_in 0.00 0.00 0.00 45)
		(sleep 90)
		(fade_out 1.00 1.00 1.00 45)
		(sleep 90)
		(fade_in 1.00 1.00 1.00 45)
		(sleep 90)
		(fade_out 1.00 1.00 1.00 0)
		(camera_control true)
		(camera_set tutorial_action_2 0)
		(print this should not show up)
		(sleep 45)
		(fade_in 0.00 0.00 0.00 0)))

(script dormant void flavor_boarding
	(begin
		(sleep_until
			(or
				(volume_test_objects boarding_trigger_1
					(players))
				(volume_test_objects boarding_trigger_2
					(players))) 10)
		(sleep_until
			(game_all_quiet))
		(sleep 45)
		(sleep_until
			(game_all_quiet))
		(ai_conversation boarding_1)))

(script dormant void flavor_watchit
	(begin
		(sleep_until
			(<
				(unit_get_shield flavor_watchit) 0.10) 1)
		(ai_conversation watchit_1)))

(script dormant void containment_1_slam
	(begin
		(sleep_until
			(or
				(>
					(structure_bsp_index) 0)
				(volume_test_objects containment_1_slam
					(players))) 1)
		(object_create containment_1_door_1a)))

(script dormant void mission_cryo_explosion
	(begin
		(game_save)
		(sound_impulse_start sound\dialog\a10\a10_450_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_450_cryotech) 30.00)))
		(ai_command_list cryo_tech/tech cryo_explosion_1)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_tech/tech))) 1)
		(ai_command_list_advance cryo_tech/tech)
		(object_create cryo_explosion_steam_1)
		(object_create cryo_explosion_sparks_1)
		(device_set_power cryo_explosion_door_3 1.00)
		(device_set_position cryo_explosion_door_3 1.00)
		(sleep_until
			(< 0.80
				(device_get_position cryo_explosion_door_3)) 1)
		(sleep_until
			(volume_test_objects cryo_explosion_trigger_1
				(players)) 1)
		(sleep_until
			(objects_can_see_object
				(players)
				(list_get
					(ai_actors cryo_tech/tech) 0) 15.00) 1 delay_wait)
		(sound_impulse_start sound\dialog\a10\a10_460_cryotech
			(list_get
				(ai_actors cryo_tech/tech) 0) 1.00)
		(sleep
			(max 0.00
				(-
					(sound_impulse_time sound\dialog\a10\a10_460_cryotech) 30.00)))
		(ai_command_list_advance cryo_tech/tech)
		(sleep_until
			(or
				(volume_test_objects cryo_explosion_trigger_2
					(players))
				(volume_test_objects moving_jump_success
					(players))
				(volume_test_objects cryo_explosion_trigger_2
					(ai_actors cryo_tech/tech))) 1)
		(sleep_until
			(objects_can_see_object
				(players) cryo_explosion_door_1 30.00) 1 delay_witness)
		(device_set_position cryo_explosion_door_1 0.30)
		(sleep_until
			(< 0.25
				(device_get_position cryo_explosion_door_1)) 1)
		(object_destroy cryo_explosion_steam_1)
		(object_destroy cryo_explosion_sparks_1)
		(sleep 1)
		(effect_new effects\explosions\medium explosion cryo_explosion_flag_1)
		(sleep 15)
		(effect_new effects\explosions\medium explosion cryo_explosion_flag_2)
		(sleep 5)
		(effect_new effects\explosions\medium explosion cryo_explosion_flag_3)
		(set play_music_a10_01 true)
		(ai_dialogue_triggers true)
		(sleep 5)
		(device_set_power cryo_explosion_light_1 1.00)
		(device_set_power cryo_explosion_light_2 1.00)
		(ai_command_list cryo_tech/tech cryo_explosion_2)
		(sleep 45)
		(object_create cryo_explosion_flame_1)
		(object_create cryo_explosion_flame_2)
		(sleep_until
			(and
				(volume_test_objects cryo_explosion_trigger_2
					(players))
				(objects_can_see_object
					(players) cryo_explosion_door_1 30.00)) 1 delay_wait)
		(sleep 45)
		(sleep_until
			(and
				(volume_test_objects cryo_explosion_trigger_2
					(players))
				(objects_can_see_object
					(players) cryo_explosion_door_1 30.00)) 1 delay_wait)
		(effect_new effects\explosions\medium explosion cryo_explosion_flag_1)
		(sleep 10)
		(effect_new effects\explosions\medium explosion cryo_explosion_flag_2)
		(sleep 5)
		(object_create cryo_explosion_flame_3)
		(sleep_until
			(volume_test_objects containment_1_trigger_1
				(players)) 1)
		(object_destroy cryo_explosion_flame_1)
		(object_destroy cryo_explosion_flame_2)
		(object_destroy cryo_explosion_flame_3)
		(sleep_until
			(volume_test_objects bridge_trigger_1
				(players)) 1)
		(set play_music_a10_01 false)))

(script dormant void mission_blam_burn
	(begin
		(sleep_until
			(volume_test_objects containment_1_trigger_1
				(players)) 1)
		(object_create blam_flame_1)
		(object_create blam_flame_2)
		(object_create blam_flame_3)
		(object_create blam_flame_4)
		(sleep 60)
		(device_set_position blam_burn_door_1 0.30)
		(sleep_until
			(objects_can_see_flag
				(players) blam_burn_flag_3 30.00) 1 delay_witness)
		(effect_new effects\explosions\large explosion blam_burn_flag_1)
		(sleep 15)
		(effect_new effects\explosions\large explosion blam_burn_flag_2)
		(sleep 5)
		(effect_new effects\explosions\large explosion blam_burn_flag_3)
		(device_set_position blam_burn_door_2 0.00)
		(sleep_until
			(= 0.00
				(device_get_position blam_burn_door_2)) 15)
		(if
			(volume_test_objects blam_burn_trap mission_blam_burn)
			(begin
				(effect_new effects\explosions\large explosion blam_burn_flag_1)
				(sleep 15)
				(effect_new effects\explosions\large explosion blam_burn_flag_2)
				(sleep 5)
				(effect_new effects\explosions\large explosion blam_burn_flag_3)
				(game_revert)))
		(if
			(volume_test_objects blam_burn_trap mission_blam_burn)
			(begin
				(effect_new effects\explosions\large explosion blam_burn_flag_1)
				(sleep 15)
				(effect_new effects\explosions\large explosion blam_burn_flag_2)
				(sleep 5)
				(effect_new effects\explosions\large explosion blam_burn_flag_3)
				(game_revert)))))

(script dormant void mission_blam_scare
	(begin
		(sleep_until
			(volume_test_objects blam_scare_trigger_1
				(players)) 1)
		(effect_new scenery\emitters\smoldering_debris\effects\smoldering_debris blam_scare_flag_1)
		(sleep 5)
		(effect_new scenery\emitters\smoldering_debris\effects\smoldering_debris blam_scare_flag_2)
		(sleep 30)
		(object_create blam_shock_sparks_1)
		(sleep 10)
		(object_create blam_shock_sparks_2)
		(sleep 10)
		(object_create blam_shock_sparks_3)
		(sleep_until
			(volume_test_objects blam_scare_trigger_2
				(players)) 1)
		(object_destroy blam_steam_1)
		(effect_new effects\explosions\medium explosion blam_scare_flag_3)
		(sleep 5)
		(object_create blam_steam_flame_1)
		(sleep_until
			(volume_test_objects moving_crouch
				(players)) 1)))

(script dormant void mission_containment_1_post
	(begin
		(sleep_until
			(=
				(device_get_position containment_1_door_3) 0.00) 1)
		(ai_braindead containment_1_anti/rear_elite true)
		(sleep_until
			(=
				(device_get_position containment_1_door_1) 0.00) 1)
		(ai_braindead containment_1_anti true)))

(script dormant void mission_containment_1
	(begin
		(wake mission_containment_1_post)
		(wake containment_1_slam)
		(sleep_until
			(volume_test_objects containment_1_trigger_1
				(players)) 1)
		(game_save)
		(ai_place containment_1/rear_security)
		(object_cannot_take_damage
			(ai_actors containment_1/rear_security))
		(units_set_current_vitality
			(ai_actors containment_1/rear_security) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors containment_1/rear_security))
		(ai_place containment_1/rear_crewman)
		(object_cannot_take_damage
			(ai_actors containment_1/rear_crewman))
		(units_set_current_vitality
			(ai_actors containment_1/rear_crewman) 1.00 0.00)
		(sleep_until
			(volume_test_objects containment_1_trigger_2
				(players)) 1)
		(ai_place containment_1/forward_security)
		(object_cannot_take_damage
			(ai_actors containment_1/forward_security))
		(units_set_current_vitality
			(ai_actors containment_1/forward_security) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors containment_1/forward_security))
		(ai_place containment_1_anti/rear_elite)
		(objects_predict
			(ai_actors containment_1_anti))
		(ai_berserk containment_1_anti/rear_elite false)
		(object_cannot_take_damage
			(ai_actors containment_1_anti/rear_elite))
		(unit_doesnt_drop_items
			(ai_actors containment_1_anti/rear_elite))
		(ai_playfight containment_1_anti true)
		(ai_magically_see_encounter containment_1_anti containment_1)
		(ai_magically_see_encounter containment_1 containment_1_anti)
		(sleep_until
			(or
				(volume_test_objects moving_crouch_success
					(players))
				(objects_can_see_flag
					(players) containment_1_flag_1 35.00)) 1)
		(sleep_until
			(volume_test_objects moving_crouch_success
				(players)) 1 45)
		(object_can_take_damage
			(ai_actors containment_1/rear_crewman))
		(effect_new weapons\plasma grenade\effects\explosion containment_1_flag_1)
		(ai_kill containment_1/rear_crewman)
		(sleep_until
			(or
				(volume_test_objects moving_crouch
					(players))
				(objects_can_see_object
					(players) containment_1_door_3 35.00)) 1 delay_witness)
		(device_set_position containment_1_door_3 0.00)
		(sleep_until
			(volume_test_objects moving_crouch_success
				(players)) 1 delay_witness)
		(ai_kill containment_1/rear_crewman)
		(sleep_until
			(or
				(volume_test_objects moving_crouch_success
					(players))
				(= false
					(device_set_position containment_1_door_3 0.00))) 1)
		(ai_migrate containment_1/rear_security containment_1/retreat)
		(sleep_until
			(volume_test_objects moving_crouch_success
				(players)) 1)
		(ai_place containment_1_anti/forward_elite)
		(ai_berserk containment_1_anti/forward_elite false)
		(object_cannot_take_damage
			(ai_actors containment_1_anti/forward_elite))
		(unit_doesnt_drop_items
			(ai_actors containment_1_anti/forward_elite))
		(sleep_until
			(or
				(volume_test_objects containment_1_trigger_3
					(players))
				(objects_can_see_object
					(players) containment_1_door_2 30.00)) 1 delay_witness)
		(ai_place containment_1/flee_crewman)
		(unit_doesnt_drop_items
			(ai_actors containment_1/flee_crewman))
		(sound_impulse_start sound\dialog\a10\a10_480_crewman
			(list_get
				(ai_actors containment_1/flee_crewman) 0) 1.00)
		(sleep_until
			(or
				(volume_test_objects containment_1_trigger_4
					(players))
				(objects_can_see_object
					(players) containment_1_door_2 30.00)) 1 delay_witness)
		(sleep_until
			(or
				(volume_test_objects containment_1_trigger_4
					(players))
				(objects_can_see_object
					(players) containment_1_door_2 30.00)) 1 delay_witness)
		(object_can_take_damage
			(ai_actors containment_1/forward_security))
		(effect_new weapons\plasma grenade\effects\explosion containment_1_flag_2)
		(sleep_until
			(= 0
				(sound_impulse_time sound\dialog\a10\a10_480_crewman)) 1)
		(sound_impulse_start sound\dialog\a10\a10_490_crewman2
			(list_get
				(ai_actors containment_1/rear_security) 0) 1.00)
		(sleep_until
			(volume_test_objects_all containment_1_trigger_3
				(ai_actors containment_1/flee_crewman)) 1)
		(effect_new weapons\plasma grenade\effects\explosion containment_1_flag_3)
		(ai_place containment_1/doom_crewman)
		(object_cannot_take_damage
			(ai_actors containment_1/doom_crewman))
		(units_set_current_vitality
			(ai_actors containment_1/doom_crewman) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors containment_1/doom_crewman))
		(sleep_until
			(volume_test_objects containment_1_slam
				(ai_actors containment_1/doom_crewman)) 1 delay_witness)
		(device_set_position containment_1_door_1 0.00)
		(sound_impulse_start sound\dialog\a10\a10_500_crewman3
			(list_get
				(ai_actors containment_1/doom_crewman) 0) 1.00)
		(ai_defend containment_1_anti/anti)
		(ai_magically_see_encounter containment_1_anti containment_1)
		(ai_defend containment_1/forward)
		(sleep 30)
		(object_can_take_damage
			(ai_actors containment_1/doom_crewman))
		(sleep_until
			(and
				(volume_test_objects containment_1_slam
					(ai_actors containment_1/doom_crewman))
				(objects_can_see_object
					(players) containment_1_door_2 30.00)) 1 delay_witness)
		(sleep_until
			(objects_can_see_object
				(players)
				(list_get
					(ai_actors containment_1/doom_crewman) 0) 25.00) 1 delay_witness)
		(effect_new weapons\plasma grenade\effects\explosion containment_1_flag_4)
		(device_set_position containment_1_door_2 0.00)
		(sleep_until
			(= 0.00
				(device_get_position containment_1_door_1)))
		(set mark_containment_1 true)
		(ai_migrate containment_1 containment_1/search)
		(ai_command_list containment_1/forward_security first_contact_3)
		(sleep 30)
		(ai_conversation containment_1_1)))

(script dormant void mission_crossfire_post
	(begin
		(sleep_until
			(=
				(device_get_position crossfire_door_1) 0.00) 1)
		(ai_braindead crossfire_anti/first true)
		(sleep_until
			(=
				(device_get_position crossfire_door_2) 0.00) 1)
		(ai_braindead crossfire_anti/last true)))

(script dormant void mission_crossfire
	(begin
		(wake mission_crossfire_post)
		(sleep_until
			(volume_test_objects crossfire_trigger_1
				(players)) 1)
		(game_save)
		(ai_place fetch/fetch)
		(object_cannot_take_damage
			(ai_actors fetch))
		(units_set_current_vitality
			(ai_actors fetch) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors fetch))
		(ai_place crossfire)
		(object_cannot_take_damage
			(ai_actors crossfire))
		(units_set_current_vitality
			(ai_actors crossfire) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors crossfire))
		(object_cannot_take_damage
			(ai_actors crossfire))
		(ai_place crossfire_anti)
		(ai_berserk crossfire_anti false)
		(object_cannot_take_damage
			(ai_actors crossfire_anti))
		(units_set_current_vitality
			(ai_actors crossfire_anti) 1.00 0.00)
		(unit_doesnt_drop_items
			(ai_actors crossfire_anti))
		(ai_force_active crossfire true)
		(ai_force_active crossfire_anti true)
		(ai_magically_see_encounter crossfire_anti crossfire)
		(ai_magically_see_encounter crossfire crossfire_anti)
		(ai_playfight crossfire_anti true)
		(ai_try_to_fight crossfire_anti crossfire)
		(ai_try_to_fight crossfire crossfire_anti)
		(sleep_until
			(or
				(volume_test_objects crossfire_trigger_2
					(players))
				(objects_can_see_flag
					(players) crossfire_flag_2 30.00)) 1 delay_dawdle)
		(ai_defend crossfire_anti/first)
		(sleep_until
			(or
				(volume_test_objects fetch_trigger_3
					(players))
				(and
					(objects_can_see_object
						(players)
						(list_get
							(ai_actors fetch/fetch) 0) 20.00)
					(volume_test_objects fetch_trigger_2
						(players)))) 1 delay_dawdle)
		(device_set_position crossfire_door_1 0.00)
		(sleep_until
			(or
				(volume_test_objects fetch_trigger_3
					(players))
				(and
					(objects_can_see_object
						(players)
						(list_get
							(ai_actors fetch/fetch) 0) 20.00)
					(volume_test_objects fetch_trigger_2
						(players)))) 1)
		(ai_command_list_advance fetch/fetch)
		(ai_conversation fetch_1)
		(sleep_until
			(or
				(volume_test_objects fetch_trigger_3
					(players))
				(and
					(objects_can_see_object
						(players)
						(list_get
							(ai_actors fetch/fetch) 0) 20.00)
					(volume_test_objects fetch_trigger_2
						(players)))) 1)
		(sleep_until
			(>
				(ai_conversation_status fetch_1) 4) 1)
		(sleep 5)
		(ai_command_list fetch/fetch fetch_1)
		(sleep_until
			(volume_test_objects crossfire_trigger_4
				(players)) 1)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors fetch/fetch))) 1)
		(ai_defend crossfire/last)
		(ai_defend crossfire_anti/last)
		(ai_command_list_advance fetch/fetch)
		(sound_impulse_start sound\dialog\a10\a10_610_aussie
			(list_get
				(ai_actors fetch/fetch) 0) 2.00)
		(sleep_until
			(or
				(volume_test_objects crossfire_trigger_5
					(players))
				(and
					(volume_test_objects crossfire_trigger_4
						(players))
					(objects_can_see_object
						(players)
						(list_get
							(ai_actors fetch/fetch) 0) 15.00))) 1)
		(object_can_take_damage
			(ai_actors crossfire/rash_crewman))
		(effect_new weapons\plasma grenade\effects\explosion crossfire_flag_1)
		(ai_kill crossfire/rash_crewman)
		(ai_command_list fetch/fetch fetch_2)
		(device_set_position crossfire_door_2 0.00)
		(sleep_until
			(or
				(volume_test_objects shoot_trigger_3
					(players))
				(and
					(volume_test_objects bridge_trigger_1
						(players))
					(objects_can_see_object
						(players)
						(list_get
							(ai_actors fetch/fetch) 0) 30.00))) 1)
		(ai_command_list fetch/fetch fetch_3)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors fetch/fetch))) 1)
		(if
			(volume_test_objects shoot_trigger_2
				(ai_actors fetch/fetch))
			(ai_command_list fetch/fetch fetch_3))
		(sleep_until
			(or
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors fetch/fetch) 0) 15.00) mark_bridge_cutscene_start) 1)
		(if
			(not mark_bridge_cutscene_start)
			(sound_impulse_start sound\dialog\a10\a10_620_aussie
				(list_get
					(ai_actors fetch/fetch) 0) 1.00))
		(sleep_until mark_bridge_cutscene_start)
		(ai_erase crossfire)
		(ai_erase crossfire_anti)
		(ai_erase fetch/fetch)))

(script static void bridge_flavor
	(begin
		(object_create pod_1)
		(object_create pod_2)
		(object_create pod_3)
		(object_create pod_4)
		(object_create pod_5)
		(object_create pod_6)
		(object_create pod_7)
		(object_create pod_8)
		(object_create pilot_1)
		(object_create pilot_2)
		(ai_place bridge/pod_crewman_1)
		(vehicle_load_magic pod_1
			(ai_actors bridge/pod_crewman_1))
		(ai_place bridge/pod_crewman_2)
		(vehicle_load_magic pod_2
			(ai_actors bridge/pod_crewman_2))
		(ai_place bridge/pod_crewman_3)
		(vehicle_load_magic pod_3
			(ai_actors bridge/pod_crewman_3))
		(ai_place bridge/pod_crewman_4)
		(vehicle_load_magic pod_4
			(ai_actors bridge/pod_crewman_4))
		(ai_place bridge/pod_crewman_5)
		(vehicle_load_magic pod_5
			(ai_actors bridge/pod_crewman_5))
		(ai_place bridge/pod_crewman_6)
		(vehicle_load_magic pod_6
			(ai_actors bridge/pod_crewman_6))
		(ai_place bridge/pod_crewman_8)
		(vehicle_load_magic pod_8
			(ai_actors bridge/pod_crewman_8))
		(ai_place bridge/pilot_crewman_1)
		(vehicle_load_magic pilot_1
			(ai_actors bridge/pilot_crewman_1))
		(ai_place bridge/pilot_crewman_2)
		(vehicle_load_magic pilot_2
			(ai_actors bridge/pilot_crewman_2))
		(ai_place bridge/wander_crewman_1)
		(ai_place bridge/wander_crewman_2)
		(ai_place bridge/wander_crewman_3)))

(script continuous void bridge_flavor_cycle
	(begin
		(sleep_until
			(and
				(not mark_bsp1) test_bridge_active) 1)
		(if mark_bsp1
			(sleep -1))
		(set global_random_bridge
			(random_range 0 9))
		(if
			(= 1 global_random_bridge)
			(begin
				(ai_command_list bridge/wander_crewman_1 bridge_flavor_11))
			(if
				(= 2 global_random_bridge)
				(begin
					(ai_command_list bridge/wander_crewman_1 bridge_flavor_12))
				(if
					(= 3 global_random_bridge)
					(begin
						(ai_command_list bridge/wander_crewman_1 bridge_flavor_13))
					(if
						(= 4 global_random_bridge)
						(begin
							(ai_command_list bridge/wander_crewman_1 bridge_flavor_14))
						(if
							(= 5 global_random_bridge)
							(begin
								(ai_command_list bridge/wander_crewman_1 bridge_flavor_12))
							(if
								(= 6 global_random_bridge)
								(begin
									(ai_command_list bridge/wander_crewman_1 bridge_flavor_11))
								(if
									(= 7 global_random_bridge)
									(begin
										(ai_command_list bridge/wander_crewman_1 bridge_flavor_17))
									(if
										(= 8 global_random_bridge)
										(begin
											(ai_command_list bridge/wander_crewman_1 bridge_flavor_18))
										(if
											(= 9 global_random_bridge)
											(begin
												(ai_command_list bridge/wander_crewman_1 bridge_flavor_19)))))))))))
		(sleep
			(* 30.00
				(random_range 5 9)))
		(if
			(= 3 global_random_bridge)
			(begin
				(ai_command_list bridge/wander_crewman_2 bridge_flavor_11))
			(if
				(= 4 global_random_bridge)
				(begin
					(ai_command_list bridge/wander_crewman_2 bridge_flavor_12))
				(if
					(= 5 global_random_bridge)
					(begin
						(ai_command_list bridge/wander_crewman_2 bridge_flavor_13))
					(if
						(= 6 global_random_bridge)
						(begin
							(ai_command_list bridge/wander_crewman_2 bridge_flavor_14))
						(if
							(= 7 global_random_bridge)
							(begin
								(ai_command_list bridge/wander_crewman_2 bridge_flavor_12))
							(if
								(= 8 global_random_bridge)
								(begin
									(ai_command_list bridge/wander_crewman_2 bridge_flavor_13))
								(if
									(= 9 global_random_bridge)
									(begin
										(ai_command_list bridge/wander_crewman_2 bridge_flavor_17))
									(if
										(= 1 global_random_bridge)
										(begin
											(ai_command_list bridge/wander_crewman_2 bridge_flavor_18))
										(if
											(= 2 global_random_bridge)
											(begin
												(ai_command_list bridge/wander_crewman_2 bridge_flavor_19)))))))))))
		(sleep
			(* 30.00
				(random_range 5 9)))
		(if
			(= 5 global_random_bridge)
			(begin
				(ai_command_list bridge/wander_crewman_3 bridge_flavor_11))
			(if
				(= 6 global_random_bridge)
				(begin
					(ai_command_list bridge/wander_crewman_3 bridge_flavor_12))
				(if
					(= 7 global_random_bridge)
					(begin
						(ai_command_list bridge/wander_crewman_3 bridge_flavor_13))
					(if
						(= 8 global_random_bridge)
						(begin
							(ai_command_list bridge/wander_crewman_3 bridge_flavor_14))
						(if
							(= 9 global_random_bridge)
							(begin
								(ai_command_list bridge/wander_crewman_3 bridge_flavor_14))
							(if
								(= 1 global_random_bridge)
								(begin
									(ai_command_list bridge/wander_crewman_3 bridge_flavor_17))
								(if
									(= 2 global_random_bridge)
									(begin
										(ai_command_list bridge/wander_crewman_3 bridge_flavor_17))
									(if
										(= 3 global_random_bridge)
										(begin
											(ai_command_list bridge/wander_crewman_3 bridge_flavor_18))
										(if
											(= 4 global_random_bridge)
											(begin
												(ai_command_list bridge/wander_crewman_3 bridge_flavor_19)))))))))))
		(sleep
			(* 30.00
				(random_range 5 9)))))

(script static void cinematic_x20
	(begin
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(ai_erase bridge/pilot_crewman_1)
		(object_destroy pilot_1)
		(object_destroy keyesa10)
		(if cinematic_x20 cinematic_x20) cinematic_x20
		(wake title_escape)
		(fade_out 1.00 1.00 1.00 0)
		(sleep 5)
		(switch_bsp 1)
		(object_teleport cinematic_x20 chief_basea10)
		(object_teleport cinematic_x20 player1_playona10)
		(player_enable_input false)
		(player_camera_control false)
		(object_create_anew keyesa10)
		(object_create_anew pistola10)
		(object_create pilot_1)
		(ai_place bridge/pilot_crewman_1)
		(vehicle_load_magic pilot_1
			(ai_actors bridge/pilot_crewman_1))
		(object_teleport keyesa10 keyes_pistol_basea10)
		(objects_attach keyesa10 right hand pistola10 keyes grip)
		(sleep 30)
		(fade_in 1.00 1.00 1.00 30)
		(sleep 30)
		(sound_impulse_start sound\dialog\a10\a10_flavor_290_captkeyes keyesa10 1.00)
		(custom_animation keyesa10 cinematics\animations\captain\x20\x20 give_weapon true)
		(sleep 30)
		(object_destroy pistola10)
		(sleep_until
			(<
				(unit_get_custom_animation_time keyesa10) 57))
		(ai_attach_free keyesa10 characters\captain\captain)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_flavor_290_captkeyes))
		(player_enable_input true)
		(player_camera_control true)))

(script dormant void bridge_leave_prompt
	(begin
		(sleep 300)
		(if
			(volume_test_objects bridge_trigger_3
				(players))
			(sound_impulse_start sound\dialog\a10\a10_flavor_300_captkeyes keyesa10 1.00))
		(sleep 360)
		(if
			(volume_test_objects bridge_trigger_3
				(players))
			(sound_impulse_start sound\dialog\a10\a10_flavor_310_captkeyes keyesa10 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_flavor_310_captkeyes))
		(sleep 60)
		(ai_command_list_by_unit keyesa10 keyes_2)
		(sleep 390)
		(if
			(volume_test_objects bridge_all
				(players))
			(sound_impulse_start sound\dialog\a10\a10_641_cortana none 1.00))))

(script static void bridge_kill_kill_kill
	(begin
		(device_set_position_immediate bridge_kill_door_2 0.00)
		(volume_teleport_players_not_inside bridge_all x20_post_flag_2)
		(sleep -1 bridge_leave_prompt)
		(sleep -1 flavor_watchit)
		(sound_impulse_start sound\dialog\a10\a10_642_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a10\a10_642_cortana))
		(sound_impulse_start sound\dialog\a10\a10_643_cortana none 1.00)
		(ai_allegiance_remove player human)
		(sleep 60)
		(ai_place bridge_kill)
		(object_cannot_take_damage
			(ai_actors bridge_kill))
		(device_set_position_immediate bridge_kill_door_1 1.00)
		(ai_magically_see_players bridge_kill)
		(sleep 240)
		(if
			(and global_meg_egg
				(not
					(game_is_cooperative))
				(=
					(game_difficulty_get) impossible))
			(device_set_position_immediate bridge_kill_door_3 1.00))))

(script dormant void mission_bridge
	(begin
		(sleep_until
			(volume_test_objects bridge_trigger_1
				(players)) 1)
		(ai_dialogue_triggers false)
		(set play_music_a10_01 false)
		(game_save)
		(set test_bridge_active true)
		(object_create keyesa10)
		(ai_attach_free keyesa10 characters\captain\captain)
		(unit_set_seat keyesa10 alert)
		(ai_command_list_by_unit keyesa10 keyes_2) mission_bridge
		(sleep_until
			(volume_test_objects bridge_all
				(players)) 1)
		(sleep 60)
		(sleep_until
			(or
				(volume_test_objects bridge_trigger_3
					(players))
				(not
					(volume_test_objects bridge_all
						(players)))) 1)
		(set mark_bridge_cutscene_start true) mission_bridge
		(set play_music_a10_03 true)
		(vehicle_load_magic pilot_1
			(ai_actors bridge/pilot_crewman_1))
		(device_set_position bridge_door_1 0.00)
		(device_set_position bridge_door_2 0.00)
		(device_set_position bridge_door_3 0.00)
		(set mark_bridge_cutscene true)
		(device_set_position_immediate crossfire_door_1 0.00)
		(device_set_position_immediate crossfire_door_2 0.00)
		(ai_erase crossfire)
		(ai_erase crossfire_anti)
		(ai_erase fetch/fetch)
		(sleep -1 mission_crossfire)
		(wake bridge_leave_prompt)
		(set bridge_living_count
			(ai_living_count bridge))
		(sleep_until
			(or
				(<
					(unit_get_health keyesa10) 1.00)
				(<
					(ai_living_count bridge) bridge_living_count)
				(>
					(structure_bsp_index) 1)) 5)
		(if
			(not
				(>
					(structure_bsp_index) 1)) mission_bridge)))

(script dormant void mission_shoot
	(begin
		(object_destroy bridge_barricade_1)
		(object_create bridge_barricade_1)
		(sleep_until
			(volume_test_objects shoot_trigger_1
				(players)) 1)
		(game_save)
		(ai_dialogue_triggers true)
		(sleep_until
			(volume_test_objects shoot_trigger_3
				(players)) 1)
		(player_add_equipment mission_shoot bridge0_profile false)
		(set mark_weapon true)
		(ai_place shoot_anti)
		(unit_doesnt_drop_items
			(ai_actors shoot_anti))
		(ai_try_to_fight_player shoot_anti)
		(ai_magically_see_players shoot_anti)
		(sleep 15)
		(player_add_equipment mission_shoot bridge1_profile false)
		(sleep_until
			(volume_test_objects shoot_trigger_3
				(players)) 1)
		(set mark_shoot true)))

(script dormant void mission_cafeteria
	(begin
		(sleep_until
			(volume_test_objects cafeteria_trigger_1
				(players)) 1)
		(set test_bridge_active false)
		(ai_place cafeteria/init_marine)
		(objects_predict
			(ai_actors cafeteria))
		(ai_place cafeteria_anti/init_elite)
		(object_cannot_take_damage
			(ai_actors cafeteria_anti/init_elite))
		(ai_place cafeteria_anti/init_grunt)
		(ai_magically_see_encounter cafeteria_anti cafeteria)
		(ai_magically_see_encounter cafeteria cafeteria_anti)
		(sleep_until
			(= 0
				(ai_living_count shoot_anti)) 5 delay_lost)
		(object_create cafeteria_ar)
		(object_create cafeteria_marine)
		(game_save)
		(device_set_power cafeteria_door_4 1.00)
		(device_set_position cafeteria_door_4 1.00)
		(ai_magically_see_encounter cafeteria shoot_anti)
		(sleep_until
			(volume_test_objects cafeteria_trigger_2
				(players)) 1)
		(object_can_take_damage
			(ai_actors cafeteria_anti/init_elite))
		(set play_music_a10_03 false)
		(ai_conversation marine_1)
		(sleep_until
			(or
				(> 3
					(ai_living_count cafeteria_anti/init))
				(volume_test_objects cafeteria_trigger_3
					(players))) 1)
		(ai_place cafeteria/rein_marine)
		(device_set_power cafeteria_door_1 1.00)
		(device_set_position cafeteria_door_1 1.00)
		(sleep_until
			(or
				(= 0
					(ai_living_count cafeteria_anti/init))
				(volume_test_objects cafeteria_trigger_3
					(players))) 1)
		(ai_retreat cafeteria/init)
		(ai_place cafeteria_anti/flank)
		(ai_place cafeteria_anti/retreat_grunt)
		(device_set_power cafeteria_door_2 1.00)
		(device_set_position cafeteria_door_2 1.00)
		(device_set_power cafeteria_door_3 1.00)
		(device_set_position cafeteria_door_3 1.00)
		(ai_magically_see_encounter cafeteria_anti cafeteria)
		(ai_magically_see_encounter cafeteria cafeteria_anti)
		(sleep_until
			(not
				(or
					(volume_test_objects cafeteria_trigger_4
						(players))
					(volume_test_objects cafeteria_trigger_4
						(ai_actors cafeteria)))) 1)
		(device_set_position cafeteria_door_1 0.00)
		(sleep_until
			(= 0.00
				(device_get_position cafeteria_door_1)) 1)
		(device_set_power cafeteria_door_1 0.00)))

(script dormant void mission_airlock_1
	(begin
		(sleep_until
			(volume_test_objects bsp1,2
				(players)) 1)
		(game_save_no_timeout)
		(ai_place airlock_1)
		(units_set_current_vitality
			(ai_actors airlock_1/airlock_marine) 1.00 0.00)
		(ai_place airlock_1_anti/backstab_elite)
		(ai_magically_see_encounter airlock_1_anti airlock_1)
		(ai_magically_see_encounter airlock_1 airlock_1_anti)
		(sleep_until
			(volume_test_objects airlock_1_trigger_1
				(players)) 1)
		(player_effect_set_max_translation 0.06 0.02 0.12)
		(player_effect_set_max_rotation 2.00 5.00 5.00)
		(player_effect_set_max_rumble 0.80 0.10)
		(player_effect_start 1.00 0.00)
		(sound_impulse_start sound\sfx\ambience\a10\pillarhits none 2.00)
		(player_effect_stop 1.00)
		(set play_music_a10_04 true)
		(sleep 30)
		(ai_conversation airlock_1_1)
		(sleep_until
			(or
				(volume_test_objects airlock_1_trigger_2
					(players))
				(< 4
					(ai_conversation_status airlock_1_1))) 1)
		(ai_migrate airlock_1/init_marine airlock_1/search)
		(sleep_until
			(volume_test_objects airlock_1_trigger_2
				(players)) 1)
		(sleep_until
			(or
				(volume_test_objects airlock_1_trigger_3
					(players))
				(objects_can_see_object
					(players) airlock_1_door_1 25.00)) 1 delay_witness)
		(sleep_until
			(or
				(volume_test_objects airlock_1_trigger_3
					(players))
				(objects_can_see_object
					(players) airlock_1_door_1 25.00)) 1)
		(sleep 30)
		(ai_command_list_advance airlock_1/airlock_marine)
		(sleep 15)
		(effect_new weapons\plasma grenade\effects\explosion airlock_1_flag_1)
		(device_set_power airlock_1_door_1 1.00)
		(device_set_position_immediate airlock_1_door_1 1.00)
		(device_set_power airlock_1_door_1 0.00)
		(set play_music_a10_04 false)
		(set play_music_a10_05 true)
		(sleep 2)
		(ai_place airlock_1_anti/boarding)
		(ai_migrate airlock_1/search airlock_1/airlock)
		(ai_migrate airlock_1/airlock_marine airlock_1/airlock)
		(ai_magically_see_encounter airlock_1_anti airlock_1)
		(ai_magically_see_encounter airlock_1 airlock_1_anti)
		(sleep_until
			(> 0.75
				(ai_strength airlock_1_anti/boarding)) 1)
		(ai_defend airlock_1_anti/boarding)
		(ai_magically_see_encounter airlock_1_anti airlock_1)
		(sleep_until
			(or
				(> 0.50
					(ai_strength airlock_1_anti/boarding))
				(volume_test_objects airlock_1_trigger_4
					(players))) 1)
		(ai_migrate airlock_1_anti/boarding airlock_1_anti/advance)
		(sleep 45)
		(sleep_until
			(volume_test_objects airlock_1_trigger_4
				(players)) 1)
		(ai_migrate airlock_1/main airlock_1/advance)
		(sleep_until
			(or
				(> 0.25
					(ai_strength airlock_1_anti/boarding))
				(volume_test_objects airlock_1_trigger_5
					(players))) 1)
		(ai_migrate airlock_1_anti/boarding airlock_1_anti/end)
		(sleep 45)
		(sleep_until
			(volume_test_objects airlock_1_trigger_5
				(players)) 1)
		(ai_migrate airlock_1/main airlock_1/end)
		(sleep_until
			(= 0
				(ai_living_count airlock_1_anti)) 1)
		(sleep 45)
		(ai_conversation airlock_1_2)))

(script dormant void mission_flank
	(begin
		(sleep_until
			(volume_test_objects flank_trigger_1
				(players)) 1)
		(game_save_no_timeout)
		(sleep 5)
		(ai_place flank)
		(ai_place flank_anti/init)
		(ai_playfight flank true)
		(ai_playfight flank_anti true)
		(ai_magically_see_encounter flank flank_anti)
		(ai_magically_see_encounter flank_anti flank)
		(sleep_until
			(or
				(volume_test_objects flank_trigger_1
					(players))
				(volume_test_objects flank_trigger_2
					(players))) 1)
		(ai_playfight flank false)
		(ai_playfight flank_anti false)
		(set play_music_a10_05_alt true)
		(sleep_until
			(or
				(volume_test_objects flank_trigger_2
					(players))
				(volume_test_objects flank_trigger_3
					(players))) 1)
		(if
			(volume_test_objects flank_trigger_2
				(players))
			(ai_conversation flank_1))
		(sleep_until
			(or
				(<
					(ai_living_count flank_anti/init) 2)
				(volume_test_objects flank_trigger_3
					(players))) 1)
		(ai_place flank_anti/rein)
		(ai_place flank_anti/last_grunt)
		(ai_magically_see_encounter flank_anti/rein flank)
		(sleep_until
			(volume_test_objects flank_trigger_4
				(players)) 1)
		(ai_timer_expire flank_anti/last_grunt)
		(set play_music_a10_05_alt false)))

(script dormant void mission_loop
	(begin
		(sleep_until
			(volume_test_objects loop_trigger_1
				(players)) 1)
		(game_save_no_timeout)
		(ai_place loop)
		(ai_braindead loop/doom_crewman true)
		(ai_place loop_anti/init)
		(ai_force_active loop true)
		(ai_force_active loop_anti true)
		(ai_magically_see_encounter loop_anti loop)
		(ai_magically_see_encounter loop loop_anti)
		(object_pvs_set_object
			(list_get
				(ai_actors loop/doom_crewman) 0))
		(sleep 5)
		(effect_new weapons\plasma grenade\effects\explosion loop_flag_1)
		(sleep 30)
		(effect_new weapons\plasma grenade\effects\explosion loop_flag_2)
		(ai_kill loop/doom_crewman)
		(set play_music_a10_05_alt true)
		(sleep_until
			(or
				(volume_test_objects loop_trigger_2
					(players))
				(volume_test_objects loop_trigger_3
					(players))) 1)
		(object_pvs_clear)
		(ai_place loop_anti/search_grunt)
		(sleep_until
			(= 0
				(ai_living_count loop_anti)) 1)
		(sleep 15)
		(ai_migrate loop airlock_2/airlock)
		(set play_music_a10_05_alt false)))

(script dormant void mission_airlock_2
	(begin
		(sleep_until
			(volume_test_objects airlock_2_trigger_1
				(players)) 1)
		(game_save)
		(ai_place airlock_2_anti/init)
		(ai_magically_see_encounter airlock_2 airlock_2_anti)
		(ai_magically_see_encounter airlock_2_anti airlock_2)
		(sleep 30)
		(set play_music_a10_05_alt true)
		(sleep_until
			(volume_test_objects airlock_2_trigger_1
				(players)) 1)
		(ai_place airlock_2_anti/rein)
		(set play_music_a10_05_alt false)))

(script dormant void mission_knot
	(begin
		(sleep_until
			(volume_test_objects knot_trigger_1
				(players)) 1)
		(set play_music_a10_05 false)
		(game_save)
		(sleep_until
			(volume_test_objects knot_trigger_2
				(players)) 1)
		(ai_place knot)
		(ai_place knot_anti)
		(ai_magically_see_encounter knot knot_anti)
		(ai_magically_see_encounter knot_anti knot)
		(sleep 60)
		(units_set_current_vitality
			(ai_actors knot) 1.00 0.00)))

(script dormant void mission_stairs
	(begin
		(sleep_until
			(volume_test_objects bsp3,4
				(players)) 1)
		(game_save)
		(ai_place stairs/init)
		(ai_place stairs_anti/init)
		(ai_magically_see_encounter stairs stairs_anti)
		(ai_magically_see_encounter stairs_anti stairs)
		(sleep_until
			(or
				(> 4
					(ai_living_count stairs_anti/init))
				(volume_test_objects stairs_trigger_5
					(players))) 1)
		(ai_conversation stairs_1)
		(sleep_until
			(or
				(> 4
					(ai_living_count stairs_anti/init))
				(volume_test_objects stairs_trigger_2
					(players))) 1)
		(ai_place stairs_anti/lower)
		(device_set_power stairs_door_1 1.00)
		(device_set_position stairs_door_1 1.00)
		(sleep_until
			(or
				(and
					(> 4
						(ai_living_count stairs_anti/init))
					(> 4
						(ai_living_count stairs_anti/lower)))
				(volume_test_objects stairs_trigger_2
					(players))) 1)
		(ai_place stairs_anti/upper)
		(device_set_power stairs_door_2 1.00)
		(device_set_position stairs_door_2 1.00)
		(sleep_until
			(or
				(and
					(= 0
						(ai_living_count stairs_anti/init))
					(= 0
						(ai_living_count stairs_anti/lower)))
				(volume_test_objects stairs_trigger_2
					(players))) 1)
		(ai_migrate stairs containment_2)
		(ai_follow_target_players containment_2)
		(sleep 90)
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 0))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 0)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 1))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 1)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 2))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 2)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 3))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 3)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 4))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 4)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 5))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 5)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 6))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 6)) stairs_1))
		(if
			(volume_test_objects stairs_trigger_4
				(list_get
					(ai_actors containment_2) 7))
			(ai_command_list_by_unit
				(unit
					(list_get
						(ai_actors containment_2) 7)) stairs_1))))

(script dormant void mission_containment_2
	(begin
		(sleep_until
			(volume_test_objects containment_2_trigger_1
				(players)) 1)
		(game_save)
		(ai_place containment_2_anti)
		(ai_migrate stairs containment_2)
		(ai_follow_target_players containment_2)))

(script continuous void lifepod_1_blasts
	(begin
		(sleep_until test_lifepod_blasts 1)
		(set mark_lifepod_blasts true)
		(effect_new effects\bursts\space beam lifepod_1_flag_1a)
		(sleep 10)
		(sleep 5)
		(effect_new effects\bursts\space beam lifepod_1_flag_1c)
		(sleep 15)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_1e)
		(set mark_lifepod_blasts false)
		(sleep 120)
		(sleep_until test_lifepod_blasts 1)
		(set mark_lifepod_blasts true)
		(effect_new effects\bursts\space beam lifepod_1_flag_2a)
		(sleep 5)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_2c)
		(sleep 10)
		(sleep 5)
		(effect_new effects\bursts\space beam lifepod_1_flag_2e)
		(set mark_lifepod_blasts false)))

(script dormant void lifepod_1_launch_1
	(begin
		(sleep_until
			(objects_can_see_object
				(players) lifepod_1_light_1 40.00) 1 delay_witness)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_bflag_1)
		(sleep 3)
		(object_destroy lifepod_1_bdoor_1)
		(device_set_position lifepod_1_1 1.00)
		(sleep 15)
		(ai_conversation lifepod_launch_1)
		(sleep 15)
		(effect_new effects\bursts\space beam lifepod_1_flag_1a)
		(sleep 10)
		(sleep 5)
		(effect_new effects\bursts\space beam lifepod_1_flag_1c)
		(sleep 15)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_1e)
		(sleep 10)
		(object_destroy lifepod_1_light_1)
		(object_create lifepod_1_light_3)
		(set mark_launch_1 true)
		(sleep_until
			(>
				(device_get_position lifepod_1_1) 0.95) 1)
		(object_destroy lifepod_1_1)))

(script dormant void lifepod_1_launch_3
	(begin
		(sleep_until
			(objects_can_see_object
				(players) lifepod_1_light_3 40.00) 1 delay_witness)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_bflag_3)
		(sleep 3)
		(object_destroy lifepod_1_bdoor_3)
		(device_set_position lifepod_1_3 1.00)
		(sleep 15)
		(effect_new effects\bursts\space beam lifepod_1_flag_2a)
		(sleep 10)
		(sleep 5)
		(effect_new effects\bursts\space beam lifepod_1_flag_2c)
		(sleep 15)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_2e)
		(sleep 10)
		(object_destroy lifepod_1_light_3)
		(object_create lifepod_1_light_2)
		(set mark_launch_3 true)
		(sleep_until
			(>
				(device_get_position lifepod_1_3) 0.95) 1)
		(object_destroy lifepod_1_3)))

(script dormant void lifepod_1_flavor
	(begin
		(sleep_until
			(volume_test_objects lifepod_1_trigger_1
				(players)) 1)
		(object_create lifepod_1_1)
		(object_create lifepod_1_2)
		(object_create lifepod_1_3)
		(object_create lifepod_1_bdoor_1)
		(object_create lifepod_1_bdoor_2)
		(object_create lifepod_1_bdoor_3)
		(object_create lifepod_1_light_1)
		(set test_lifepod_blasts true)
		(sound_impulse_start sound\dialog\a10\a10_690_captkeyes none 1.00)
		(sleep_until
			(volume_test_objects lifepod_trigger_3
				(players)) 1
			(sound_impulse_time sound\dialog\a10\a10_690_captkeyes))
		(sound_impulse_start sound\dialog\a10\a10_700_captkeyes none 1.00)
		(sleep_until
			(or
				(volume_test_objects lifepod_trigger_3
					(players))
				(volume_test_objects lifepod_1_trigger_2
					(players))) 1)
		(set test_lifepod_blasts false)
		(sleep_until
			(or
				(volume_test_objects lifepod_trigger_3
					(players))
				(not mark_lifepod_blasts)) 1)
		(wake lifepod_1_launch_1)
		(sleep_until
			(or
				(volume_test_objects lifepod_trigger_3
					(players)) mark_launch_1) 1)
		(sleep_until
			(volume_test_objects lifepod_trigger_3
				(players)) 1 30)
		(wake lifepod_1_launch_3)
		(sleep_until
			(or
				(volume_test_objects lifepod_trigger_3
					(players)) mark_launch_1) 1)
		(sleep_until
			(or
				(volume_test_objects lifepod_trigger_3
					(players))
				(volume_test_objects lifepod_trigger_3
					(players))) 1 30)
		(sleep_until
			(objects_can_see_object
				(players) lifepod_1_light_2 40.00) 1 delay_witness)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_bflag_2)
		(sleep 3)
		(object_destroy lifepod_1_bdoor_2)
		(set test_lifepod_blasts false)
		(effect_new effects\bursts\space beam lifepod_1_flag_3a)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_3b)
		(device_set_position lifepod_1_2 1.00)
		(sleep_until
			(< 0.15
				(device_get_position lifepod_1_2)) 1)
		(effect_new effects\bursts\space beam lifepod_1_flag_3c)
		(sleep 2)
		(effect_new weapons\plasma grenade\effects\explosion lifepod_1_flavor_flag_1)
		(effect_new weapons\plasma grenade\effects\explosion lifepod_1_flavor_flag_2)
		(effect_new weapons\plasma grenade\effects\explosion lifepod_1_flavor_flag_3)
		(sleep 2)
		(object_destroy lifepod_1_2)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_flavor_flag_1)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_flavor_flag_2)
		(effect_new levels\a10\devices\lifepod device\effects\explosion lifepod_1_flavor_flag_3)
		(sleep 15)
		(effect_new effects\bursts\space beam lifepod_1_flag_3d)
		(sleep 10)
		(effect_new effects\bursts\space beam lifepod_1_flag_3e)
		(object_destroy lifepod_1_light_2)
		(ai_conversation_advance lifepod_launch_1)))

(script dormant void mission_lifepod_1
	(begin
		(wake lifepod_1_flavor)
		(sleep_until
			(volume_test_objects lifepod_1_trigger_1
				(players)) 1)
		(game_save)
		(ai_place lifepod_1_anti)))

(script dormant void mission_tunnel
	(begin
		(sleep_until
			(volume_test_objects_all tunnel_trigger_close
				(players)) 1)
		(game_save)
		(device_set_position tunnel_door_3 0.00)
		(object_create tunnel_door_3a)
		(sleep 45)
		(ai_conversation tunnel_1)
		(sleep_until
			(>
				(device_get_position tunnel_door_3) 0.25) 1)
		(sleep_until
			(game_all_quiet) 1 delay_dawdle)
		(ai_conversation tunnel_2)
		(sleep_until
			(>
				(ai_conversation_status tunnel_2) 4) 1 delay_dawdle)
		(activate_team_nav_point_flag default_red player tunnel_flag_1 0.00)
		(sleep 30)
		(if
			(and
				(not
					(game_is_cooperative))
				(=
					(game_difficulty_get) normal))
			(display_scenario_help 6))
		(sleep 90)
		(device_set_power tunnel_door_2 1.00)
		(sleep_until
			(volume_test_objects tunnel_trigger_2
				(players)) 1)
		(deactivate_team_nav_point_flag player tunnel_flag_1)
		(set play_music_a10_06 true)
		(sleep_until
			(volume_test_objects tunnel_exit_trigger_1
				(players)) 1)
		(ai_place tunnel_anti/rear)
		(ai_place tunnel_anti/forward)
		(sleep_until
			(volume_test_objects motiontracker_1
				(players)) 1)
		(game_save)
		(sleep_until
			(volume_test_objects tunnel_exit_trigger_2
				(players)) 1)
		(set play_music_a10_06 false)
		(ai_retreat tunnel_anti)))

(script dormant void cryo_search
	(begin
		(device_set_position_immediate cryo_door_1 1.00)
		(device_set_position_immediate cryo_door_2 1.00)
		(sleep_until
			(volume_test_objects cryo_search_trigger_1
				(players)) 15)
		(game_save)
		(ai_place cryo_search)
		(sleep_until
			(volume_test_objects cryo_search_trigger_2
				(players)) 15)
		(ai_conversation search_1)
		(sleep 90)
		(sleep_until
			(objects_can_see_object
				(players)
				(list_get
					(ai_actors cryo_search/elite_major) 0) 25.00) 1 delay_witness)
		(ai_command_list_advance cryo_search)
		(sleep_until
			(= 2
				(ai_command_list_status
					(ai_actors cryo_search/elite_major))) 1)
		(ai_command_list cryo_search cryo_search_2)))

(script dormant void mission_boom
	(begin
		(sleep_until
			(volume_test_objects boom_trigger_1
				(players)) 1)
		(ai_place boom_anti)
		(game_save)
		(sleep_until
			(or
				(volume_test_objects boom_trigger_2
					(players))
				(= 0
					(ai_living_count boom_anti/elite_boom))) 1)
		(effect_new effects\explosions\medium explosion boom_flag_1)
		(sleep 10)
		(effect_new effects\explosions\medium explosion boom_flag_2)
		(sleep 5)
		(effect_new effects\explosions\medium explosion boom_flag_3)
		(sleep_until
			(or
				(volume_test_objects boom_trigger_3
					(players))
				(= 0
					(ai_living_count boom_anti/grunt_boom))) 1 delay_wait)
		(effect_new effects\explosions\medium explosion boom_flag_8)
		(sleep 5)
		(effect_new effects\explosions\medium explosion boom_flag_9)
		(sleep 10)
		(effect_new effects\explosions\medium explosion boom_flag_10)
		(sleep_until
			(volume_test_objects boom_trigger_4
				(players)) 1 delay_wait)
		(if
			(game_is_cooperative)
			(sleep 90))
		(effect_new effects\explosions\medium explosion boom_flag_4)
		(sleep 10)
		(effect_new effects\explosions\medium explosion boom_flag_5)
		(sleep 5)
		(effect_new effects\explosions\medium explosion boom_flag_6)
		(sleep 15)
		(effect_new effects\explosions\medium explosion boom_flag_7)
		(sleep_until
			(<
				(ai_living_count boom_anti) 2) delay_late)
		(sleep_until
			(game_all_quiet))
		(ai_conversation boom_1)))

(script dormant void mission_final
	(begin
		(sleep_until
			(volume_test_objects bsp5,6
				(players)) 1)
		(game_save)
		(ai_place containment_3_anti/1)
		(ai_place containment_3_anti/2)
		(ai_place containment_3)
		(ai_playfight containment_3 true)
		(ai_playfight containment_3_anti true)
		(sleep_until
			(or
				(volume_test_objects final_trigger_1
					(players))
				(volume_test_objects final_trigger_2
					(players))
				(volume_test_objects final_trigger_3
					(players))
				(volume_test_objects final_trigger_4
					(players))) 1)
		(set play_music_a10_07 true)
		(ai_playfight containment_3 false)
		(ai_playfight containment_3_anti false)
		(ai_follow_target_players containment_3)
		(sleep_until
			(or
				(volume_test_objects final_trigger_1
					(players))
				(volume_test_objects final_trigger_5
					(players))) 1)
		(ai_place containment_3_anti/3)
		(ai_place containment_3_anti/4)
		(ai_place containment_3_anti/5)
		(sleep_until
			(or
				(volume_test_objects final_trigger_6
					(players))
				(volume_test_objects final_trigger_11
					(players))) 1)
		(game_save)
		(set play_music_a10_07_alt true)
		(ai_follow_target_disable containment_3)
		(ai_place lifepod_2)
		(ai_place lifepod_2_anti)
		(ai_playfight lifepod_2 true)
		(ai_playfight lifepod_2_anti true)
		(sleep_until
			(or
				(volume_test_objects final_trigger_7
					(players))
				(volume_test_objects final_trigger_8
					(players))
				(volume_test_objects final_trigger_9
					(players))
				(volume_test_objects final_trigger_10
					(players))
				(volume_test_objects final_trigger_12
					(players))) 1)
		(ai_playfight lifepod_2 false)
		(ai_playfight lifepod_2_anti false)
		(ai_follow_target_players lifepod_2)
		(sleep_until
			(<
				(ai_living_count lifepod_2_anti) 3) 1 delay_lost)
		(sleep_until
			(= 0
				(ai_living_count lifepod_2_anti)) 1 delay_lost)
		(ai_kill lifepod_2_anti)
		(sleep 45)
		(ai_conversation final_1)
		(sleep_until
			(volume_test_objects end_trigger
				(players)) 1 delay_late)
		(set play_music_a10_07 false)
		(set global_intercom false)
		(device_set_power final_door_1 1.00)
		(device_set_position final_door_1 1.00)
		(ai_conversation_stop containment_1_1)
		(ai_conversation_stop first_contact)
		(ai_conversation_stop airlock_1_1)
		(ai_conversation_stop airlock_1_2)
		(ai_conversation_stop flank_1)
		(ai_conversation_stop fetch_1)
		(ai_conversation_stop boarding_1)
		(ai_conversation_stop watchit_1)
		(ai_conversation_stop marine_1)
		(ai_conversation_stop stairs_1)
		(ai_conversation_stop lifepod_launch_1)
		(ai_conversation_stop tunnel_1)
		(ai_conversation_stop tunnel_2)
		(ai_conversation_stop search_1)
		(ai_conversation_stop boom_1)
		(ai_conversation_stop final_1)
		(ai_conversation_stop motiontracker_1)
		(ai_conversation_stop motiontracker_2)
		(ai_conversation_stop motiontracker_3)
		(ai_conversation_stop motiontracker_4)
		(object_destroy lifepod_x30)
		(object_destroy field_x30)
		(set global_rumble false)
		(if mission_final mission_final) mission_final
		(fade_out 1.00 1.00 1.00 0)
		(game_won)))

(script dormant void fast_setup
	(begin
		(ai_place cryo_tech/tech)
		(objects_predict
			(ai_actors cryo_tech))
		(ai_command_list cryo_tech/tech introduction_2)
		(object_create cryotube_1)
		(if
			(game_is_cooperative)
			(object_create cryotube_2))
		(unit_enter_vehicle fast_setup cryotube_1 ct-driver)
		(if
			(game_is_cooperative)
			(unit_enter_vehicle fast_setup cryotube_2 ct-driver))
		(object_create cryotube_1_steam_1)
		(object_create cryotube_1_steam_2)
		(if
			(game_is_cooperative)
			(object_create cryotube_2_steam_1))
		(if
			(game_is_cooperative)
			(object_create cryotube_2_steam_2))
		(cinematic_start)
		(camera_control true)
		(object_beautify fast_setup true)
		(game_skip_ticks 7)
		(camera_set tutorial_action_2 0)
		(camera_set tutorial_action_1 250)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(sound_looping_start sound\sinomatixx_foley\a10_cryoexit_foley none 1.00)
		(unit_open cryotube_1)
		(sleep 30)
		(if
			(game_is_cooperative)
			(unit_open cryotube_2))
		(sleep 15)
		(unit_exit_vehicle fast_setup)
		(sleep 30)
		(if
			(game_is_cooperative)
			(unit_exit_vehicle fast_setup))
		(sleep 150)
		(object_destroy cryotube_1_steam_1)
		(sleep 5)
		(object_destroy cryotube_2_steam_1)
		(sleep 15)
		(if
			(game_is_cooperative)
			(object_destroy cryotube_1_steam_2))
		(sleep 5)
		(if
			(game_is_cooperative)
			(object_destroy cryotube_2_steam_2))
		(fade_out 1.00 1.00 1.00 15)
		(sleep 35)
		(object_beautify fast_setup false)
		(camera_control false)
		(cinematic_stop)
		(game_skip_ticks 7)
		(sleep 30)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(player_camera_control true)
		(set mark_fast_setup true)
		(sleep 60)
		(unit_close cryotube_1)
		(sleep 15)
		(if
			(game_is_cooperative)
			(unit_close cryotube_2))))

(script dormant void main_setup
	(begin
		(set global_rumble true)
		(set global_intercom true)))

(script dormant void x10_post
	(begin
		(object_create x10_1)
		(object_create x10_2)
		(object_create x10_3)
		(object_create x10_4)
		(object_create x10_5)
		(object_create x10_6)
		(object_create x10_7)
		(object_create x10_8)
		(object_create x10_9)
		(object_create x10_10)
		(object_create x10_11)
		(object_create x10_12)
		(object_create x10_13)
		(object_create x10_14)
		(object_create x10_15)
		(object_create x10_16)
		(object_create x10_17)
		(object_create x10_18)
		(object_create x10_19)
		(object_create x10_20)
		(object_create x10_21)
		(object_create x10_22)
		(object_create x10_23)
		(object_create x10_24)
		(object_create x10_25)
		(object_create x10_26)
		(object_create x10_27)
		(object_create x10_28)
		(object_create x10_29)
		(object_create x10_30)
		(object_create bridge_kill_door_3)
		(object_create cafeteria_door_1)
		(object_create bridge_kill_door_1)
		(object_create bridge_kill_door_2)
		(object_create cafeteria_door_4)
		(object_create crossfire_door_2)
		(object_create bridge_door_2)
		(object_create bridge_door_3)
		(object_create crossfire_door_1)
		(object_create bridge_door_1)
		(object_create bsp0_door)
		(object_create first_contact_door_4)
		(object_create first_contact_door_1)
		(object_create first_contact_door_2)
		(object_create blam_burn_door_1)
		(object_create cryo_explosion_light_2)
		(object_create bsp1_door)
		(object_create crossfire_door_2)
		(object_create containment_1_door_3) x10_post))

(script dormant void linkage
	(begin
		(ai_link_activation containment_1 containment_1_anti)
		(ai_link_activation containment_1_anti containment_1)
		(ai_link_activation first_contact first_contact_anti)
		(ai_link_activation first_contact_anti first_contact)
		(ai_link_activation crossfire crossfire_anti)
		(ai_link_activation crossfire_anti crossfire)
		(ai_link_activation shoot shoot_anti)
		(ai_link_activation shoot_anti shoot)
		(ai_link_activation cafeteria cafeteria_anti)
		(ai_link_activation cafeteria_anti cafeteria)
		(ai_link_activation airlock_1 airlock_1_anti)
		(ai_link_activation airlock_1_anti airlock_1)
		(ai_link_activation flank flank_anti)
		(ai_link_activation flank_anti flank)
		(ai_link_activation loop loop_anti)
		(ai_link_activation loop_anti loop)
		(ai_link_activation airlock_2 airlock_2_anti)
		(ai_link_activation airlock_2_anti airlock_2)
		(ai_link_activation knot knot_anti)
		(ai_link_activation knot_anti knot)
		(ai_link_activation stairs stairs_anti)
		(ai_link_activation stairs_anti stairs)
		(ai_link_activation containment_2 containment_2_anti)
		(ai_link_activation containment_2_anti containment_2)
		(ai_link_activation containment_3 containment_3_anti)
		(ai_link_activation containment_3_anti containment_3)
		(ai_link_activation lifepod_2 lifepod_2_anti)
		(ai_link_activation lifepod_2_anti lifepod_2)))

(script startup void mission_a10
	(begin
		(fade_out 0.00 0.00 0.00 0)
		(ai_allegiance player human)
		(ai_grenades false)
		(ai_dialogue_triggers false)
		(if mission_a10 mission_a10) mission_a10
		(fade_out 1.00 1.00 1.00 0)
		(wake x10_post)
		(object_set_facing mission_a10 facing_flag_1)
		(object_set_facing mission_a10 facing_flag_1)
		(if
			(game_is_cooperative)
			(begin
				(wake fast_setup))
			(if
				(not
					(= normal
						(game_difficulty_get)))
				(begin
					(wake fast_setup))
				(if true
					(begin
						(wake tutorial_setup)))))
		(wake mission_bsp)
		(wake music_a10)
		(wake linkage)
		(sleep_until
			(or mark_fast_setup mark_tutorial_setup) 1)
		(wake main_setup)
		(wake mission_cryo_explosion)
		(wake mission_blam_burn)
		(wake mission_blam_scare)
		(wake mission_containment_1)
		(wake mission_crossfire)
		(wake mission_bridge)
		(hud_set_objective_text obj_bridge)
		(show_hud_help_text true)
		(hud_set_help_text obj_bridge)
		(sleep 120)
		(show_hud_help_text false)
		(sleep_until mark_bridge_cutscene 1)
		(hud_set_objective_text obj_escape)
		(show_hud_help_text true)
		(hud_set_help_text obj_escape)
		(sleep 120)
		(show_hud_help_text false)
		(wake flavor_boarding)
		(wake flavor_watchit)
		(if
			(game_is_cooperative)
			(begin
				(ai_grenades true))
			(if
				(not
					(= normal
						(game_difficulty_get)))
				(begin
					(ai_grenades true))
				(if true
					(begin
						(ai_grenades false)))))
		(wake mission_shoot)
		(wake mission_cafeteria)
		(wake mission_airlock_1)
		(wake mission_flank)
		(wake mission_loop)
		(wake mission_airlock_2)
		(wake mission_knot)
		(wake mission_stairs)
		(wake mission_containment_2)
		(wake mission_lifepod_1)
		(wake mission_tunnel)
		(wake cryo_search)
		(wake mission_boom)
		(wake mission_final)))

(script static void battle_start
	(begin
		(object_create_anew_containing x10_battle)
		(device_set_position x10_battle_1 1.00)
		(device_set_position x10_battle_2 1.00)
		(device_set_position x10_battle_3 1.00)
		(device_set_position x10_battle_4 1.00)
		(device_set_position x10_battle_5 1.00)
		(device_set_position x10_battle_6 1.00)
		(device_set_position x10_battle_7 1.00)
		(device_set_position x10_battle_8 1.00)
		(device_set_position x10_battle_9 1.00)
		(device_set_position x10_battle_10 1.00)
		(device_set_position x10_battle_11 1.00)
		(device_set_position x10_battle_12 1.00)))

(script static void battle_stop
	(begin
		(object_destroy_containing x10_battle)))

(script static void bomber_setup
	(begin
		(object_create_anew_containing space_bomber)
		(object_set_scale space_bomber_1 0.35 0)
		(object_set_scale space_bomber_2 0.35 0)
		(object_set_scale space_bomber_3 0.35 0)
		(object_set_scale space_bomber_4 0.35 0)
		(object_set_scale space_bomber_5 0.35 0)
		(object_set_scale space_bomber_6 0.35 0)))

(script static void bomber_cleanup
	(begin
		(object_destroy_containing space_bomber)))

(script static void bomber_flight_1
	(begin
		(object_teleport space_bomber_1 bomber_base_6)
		(object_teleport space_bomber_2 bomber_base_7)
		(recording_play space_bomber_1 fly_straight)
		(recording_play space_bomber_2 fly_straight)))

(script static void bomber_flight_2
	(begin
		(object_teleport space_bomber_3 bomber_base_1)
		(object_teleport space_bomber_4 bomber_base_2)
		(object_teleport space_bomber_5 bomber_base_9)
		(recording_play space_bomber_3 fly_straight)
		(recording_play space_bomber_4 fly_straight)
		(recording_play space_bomber_5 fly_straight)))

(script static void bomber_flight_3
	(begin
		(object_teleport space_bomber_1 bomber_base_5)
		(object_teleport space_bomber_2 bomber_base_4)
		(object_teleport space_bomber_3 bomber_base_3)
		(recording_play space_bomber_1 fly_straight)
		(recording_play space_bomber_2 fly_straight)
		(recording_play space_bomber_3 fly_straight)))

(script static void bomber_flight_4
	(begin
		(object_teleport space_bomber_1 bomber_base_3)
		(object_teleport space_bomber_2 bomber_base_4)
		(recording_play space_bomber_1 fly_straight)
		(recording_play space_bomber_2 fly_straight)))

(script static void bomber_flight_5
	(begin
		(object_teleport space_bomber_4 bomber_base_8)
		(recording_play space_bomber_4 fly_straight)))

(script static void bomber_flight_6
	(begin
		(object_teleport space_bomber_4 bomber_base_5)
		(recording_play space_bomber_4 fly_straight)))

(script static void flight_cleanup
	(begin
		(recording_kill space_bomber_1)
		(recording_kill space_bomber_2)
		(recording_kill space_bomber_3)
		(recording_kill space_bomber_4)
		(recording_kill space_bomber_5)
		(recording_kill space_bomber_6)))

(script static void autumn_glory_1
	(begin
		(object_create_anew glory_halo)
		(object_pvs_set_camera autumn_glory_1a) autumn_glory_1
		(camera_set autumn_glory_1a2 0)
		(fade_in 0.00 0.00 0.00 90)
		(sleep 180)
		(camera_set autumn_glory_1b 200)
		(sleep 100) autumn_glory_1
		(camera_set autumn_glory_1c 200)
		(sleep 100)
		(object_destroy glory_halo)
		(camera_set autumn_glory_1f 375) autumn_glory_1
		(sleep 250)
		(object_destroy glory_halo)))

(script static void autumn_glory_2
	(begin autumn_glory_2 autumn_glory_2 autumn_glory_2
		(object_create_anew keyes_x10_space)
		(object_create_anew space_crew_1)
		(object_create_anew space_crew_2)
		(object_create_anew space_crew_3)
		(object_create_anew space_chair_1)
		(object_create_anew space_chair_2)
		(object_create_anew space_display)
		(object_pvs_activate keyes_x10_space)
		(vehicle_load_magic space_chair_1  space_crew_1)
		(vehicle_load_magic space_chair_2  space_crew_2)
		(custom_animation space_crew_1 characters\marine\marine pchair-driver unarmed idle%0 false)
		(custom_animation space_crew_2 characters\marine\marine pchair-driver unarmed idle%2 false)
		(unit_set_seat keyes_x10_space alert)
		(object_teleport space_crew_3 space_walk_base)
		(rasterizer_lights_reset_for_new_map)
		(camera_set autumn_glory_2a 0)
		(camera_set autumn_glory_2b 300)
		(sleep 150)
		(camera_set autumn_glory_2c 300)
		(sleep 100) autumn_glory_2
		(sleep 50) autumn_glory_2 autumn_glory_2
		(camera_set autumn_glory_2d 300)
		(objects_predict keyes_x10)
		(objects_predict x10_chair_1r)
		(objects_predict x10_chair_pr)
		(objects_predict x10_crew_1r)
		(sleep 50)
		(sound_impulse_start sound\dialog\x10\keyes01 none 1.00)
		(recording_play space_crew_3 space_walk_1)
		(sleep 100)
		(sound_impulse_start sound\dialog\x10\cor01 none 1.00) autumn_glory_2
		(sleep 150)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 15)
		(object_destroy keyes_x10_space)
		(object_destroy_containing space_crew)
		(object_destroy_containing space_chair)
		(object_destroy space_display) autumn_glory_2))

(script dormant void x10_crew_salute_1
	(begin
		(object_create_anew x10_crew_panic_1)
		(object_teleport x10_crew_panic_1 x10_salute_base_1)
		(custom_animation x10_crew_panic_1 cinematics\animations\crewman\x10\x10 stand_salute true)
		(unit_get_custom_animation_time x10_crew_panic_1)
		(recording_play_and_delete x10_crew_panic_1 x10_salute_1_finish)))

(script dormant void x10_crew_salute_2
	(begin
		(object_create_anew x10_crew_panic_2)
		(object_teleport x10_crew_panic_2 x10_salute_base_2)
		(recording_play x10_crew_panic_2 x10_salute_2_start)
		(sleep
			(-
				(recording_time x10_crew_panic_2) 60.00))
		(custom_animation x10_crew_panic_2 cinematics\animations\crewman\x10\x10 stand_salute true)
		(unit_get_custom_animation_time x10_crew_panic_2)
		(recording_kill x10_crew_panic_2)
		(recording_play_and_delete x10_crew_panic_2 x10_salute_2_finish)))

(script dormant void x10_crew_panic_1
	(begin
		(object_create_anew x10_crew_panic_1)
		(object_teleport x10_crew_panic_1 x10_panic_1_base)
		(custom_animation x10_crew_panic_1 cinematics\animations\crewman\x10\x10 crew_panic1 true)
		(sleep
			(unit_get_custom_animation_time x10_crew_panic_1))
		(object_destroy x10_crew_panic_1)))

(script dormant void x10_crew_panic_2
	(begin
		(object_create_anew x10_crew_panic_2)
		(object_teleport x10_crew_panic_2 x10_panic_2_base)
		(custom_animation x10_crew_panic_2 cinematics\animations\crewman\x10\x10 crew_panic2 true)
		(sleep
			(unit_get_custom_animation_time x10_crew_panic_2))
		(object_destroy x10_crew_panic_2)))

(script dormant void x10_crew_panic_3
	(begin
		(object_create_anew x10_crew_panic_3)
		(object_teleport x10_crew_panic_3 x10_panic_3_base)
		(recording_play x10_crew_panic_3 x10_panic_run_3)
		(sleep 90)
		(object_destroy x10_crew_panic_3)))

(script dormant void x10_crew_panic_4
	(begin
		(object_create_anew x10_crew_panic_4)
		(object_teleport x10_crew_panic_4 x10_panic_4_base)
		(recording_play x10_crew_panic_4 x10_panic_run_4)
		(sleep
			(recording_time x10_crew_panic_4))
		(object_destroy x10_crew_panic_4)))

(script dormant void x10_crew_panic_5
	(begin
		(object_create_anew x10_crew_panic_1)
		(object_teleport x10_crew_panic_1 x10_panic_5_base)
		(recording_play x10_crew_panic_1 x10_panic_run_5)
		(sleep
			(recording_time x10_crew_panic_1))
		(object_destroy x10_crew_panic_1)))

(script dormant void x10_crew_panic_6
	(begin
		(object_create_anew x10_crew_panic_2)
		(object_teleport x10_crew_panic_2 x10_panic_6_base)
		(recording_play x10_crew_panic_2 x10_panic_run_6)
		(sleep
			(recording_time x10_crew_panic_2))
		(object_destroy x10_crew_panic_2)))

(script dormant void x10_crew_walk_1
	(begin
		(object_create_anew x10_crew_panic_1)
		(object_teleport x10_crew_panic_1 x10_walk_1_base)
		(recording_play x10_crew_panic_1 x10_crew_walk_1)
		(sleep
			(recording_time x10_crew_panic_1))
		(object_destroy x10_crew_panic_1)))

(script dormant void x10_crew_walk_2
	(begin
		(object_create_anew x10_crew_panic_2)
		(object_teleport x10_crew_panic_2 x10_walk_2_base)
		(recording_play x10_crew_panic_2 x10_crew_walk_2_start)
		(sleep
			(recording_time x10_crew_panic_2))
		(custom_animation x10_crew_panic_2 cinematics\animations\crewman\x10\x10 stand_salute true)
		(sleep
			(unit_get_custom_animation_time x10_crew_panic_2))
		(recording_play x10_crew_panic_2 x10_crew_walk_2_finish)
		(sleep
			(recording_time x10_crew_panic_2))
		(object_destroy x10_crew_panic_2)))

(script dormant void x10_crew_walk_3
	(begin
		(object_create_anew x10_crew_panic_3)
		(object_teleport x10_crew_panic_3 x10_walk_3_base)
		(recording_play x10_crew_panic_3 x10_crew_walk_3)
		(sleep
			(recording_time x10_crew_panic_3))
		(object_destroy x10_crew_panic_3)))

(script dormant void x10_crew_walk_4
	(begin
		(object_create_anew x10_crew_panic_4)
		(object_teleport x10_crew_panic_4 x10_walk_4_base)
		(recording_play x10_crew_panic_4 x10_crew_walk_4)
		(sleep
			(recording_time x10_crew_panic_4))
		(object_destroy x10_crew_panic_4)))

(script static void peer_start
	(begin
		(vehicle_load_magic x10_chair_1l  x10_crew_1l)
		(object_teleport keyes_x10 keyes_peer)
		(custom_animation x10_crew_1l characters\marine\marine pilot_fidget02 true)
		(custom_animation keyes_x10 cinematics\animations\captain\x10\x10 inspect_console_a true)))

(script static void peer_stop
	(begin
		(unit_stop_custom_animation keyes_x10)
		(object_teleport keyes_x10 keyes_peer_stop)
		(custom_animation keyes_x10 cinematics\animations\captain\x10\x10 inspect_console_b true)
		(custom_animation x10_crew_1l characters\marine\marine pilot_fidget03 true)))

(script static void x10_chair_load
	(begin
		(object_create_anew_containing x10_chair)
		(object_create_anew_containing x10_crew)
		(vehicle_load_magic x10_chair_1l  x10_crew_1l)
		(vehicle_load_magic x10_chair_2l  x10_crew_2l)
		(vehicle_load_magic x10_chair_3l  x10_crew_3l)
		(vehicle_load_magic x10_chair_1r  x10_crew_1r)
		(vehicle_load_magic x10_chair_pl  x10_crew_pl)
		(vehicle_load_magic x10_chair_pr  x10_crew_pr)
		(custom_animation x10_crew_1l characters\marine\marine pchair-driver unarmed idle%0 false)
		(custom_animation x10_crew_2l characters\marine\marine pchair-driver unarmed idle%2 false)
		(custom_animation x10_crew_3l characters\marine\marine pchair-driver unarmed idle%0 false)
		(custom_animation x10_crew_1r characters\marine\marine pchair-driver unarmed idle%0 false)
		(custom_animation x10_crew_pl characters\marine\marine pchair-driver unarmed idle%2 false)
		(custom_animation x10_crew_pr characters\marine\marine pchair-driver unarmed idle%0 false)))

(script static void x10_chair_cleanup
	(begin
		(object_destroy_containing x10_chair)
		(object_destroy_containing x10_crew)
		(object_destroy_containing x10_crew_panic)))

(script static void light_switch
	(begin
		(object_create_anew_containing x10_light)))

(script static void bridge
	(begin
		(cinematic_start)
		(camera_control true)
		(unit_suspended bridge true)
		(switch_bsp 1) bridge
		(object_destroy x10_crew_panic_1)
		(object_create_anew keyes_x10)
		(object_create_anew pipe_x10)
		(object_destroy_containing x10_crew_panic)
		(object_teleport keyes_x10 keyes_deck)
		(objects_attach keyes_x10 pipe_in_hand pipe_x10 )
		(unit_set_emotion keyes_x10 3)
		(unit_set_seat keyes_x10 alert)
		(object_pvs_activate keyes_x10)
		(recording_play keyes_x10 keyes_look_1)
		(sleep 5)
		(fade_in 0.00 0.00 0.00 30)
		(camera_set keyes_x10_deck_1a 0)
		(camera_set keyes_x10_deck_1b 200)
		(sleep 200)
		(custom_animation keyes_x10 cinematics\animations\captain\x10\x10 how_did_they true)
		(camera_set keyes_x10_deck_2a 0)
		(camera_set keyes_react_1a 180)
		(sound_impulse_start sound\dialog\x10\keyes02 keyes_x10 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x10\keyes02) 15.00))
		(sound_impulse_start sound\dialog\x10\cor02 none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor02))
		(recording_kill keyes_x10)
		(recording_play keyes_x10 keyes_walk_1)
		(camera_set keyes_peer_walk_1 0)
		(camera_set keyes_x10_peer_walk_1 200)
		(sound_impulse_start sound\dialog\x10\cor03 none 1.00)
		(sleep 100)
		(camera_set keyes_x10_peer_walk_2 120)
		(sleep 60)
		(wake x10_crew_salute_1)
		(camera_set keyes_x10_peer_walk_3 200)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor03))
		(wake x10_crew_salute_2)
		(sound_impulse_start sound\dialog\x10\keyes03 keyes_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes03))
		(sound_impulse_start sound\dialog\x10\cor04 none 1.00)
		(sleep
			(recording_time keyes_x10))
		(objects_detach keyes_x10 pipe_x10)
		(camera_set keyes_x10_peer_1a 0)
		(camera_set keyes_peer_2a 120)
		(object_teleport keyes_x10 keyes_peer)
		(custom_animation keyes_x10 cinematics\animations\captain\x10\x10 inspect_console_a true)
		(custom_animation x10_crew_1l characters\marine\marine pilot_fidget01 true)
		(sleep 120)
		(object_teleport keyes_x10 keyes_deck)
		(unit_stop_custom_animation keyes_x10)
		(sound_looping_start sound\sinomatixx_foley\x10_foley1 none 1.00)
		(camera_set keyes_peer_2b 0)
		(camera_set keyes_x10_peer_1b 90)
		(custom_animation x10_crew_1l characters\marine\marine pilot_fidget03 true)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor04))
		(sound_impulse_start sound\dialog\x10\cor04b none 1.00)
		(sleep 60)
		(object_teleport keyes_x10 keyes_peer_stop)
		(objects_attach keyes_x10 pipe_in_hand pipe_x10 )
		(recording_play keyes_x10 keyes_walk_2)
		(sleep 60)
		(camera_set keyes_x10_display_walk_1a 0)
		(camera_set keyes_x10_display_walk_1b 200)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor04b))
		(wake x10_crew_walk_1)
		(wake x10_crew_walk_2)
		(wake x10_crew_walk_3)
		(wake x10_crew_walk_4)
		(sound_impulse_start sound\dialog\x10\keyes04 keyes_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes04))
		(sound_impulse_start sound\dialog\x10\cor05 none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor05))
		(sleep
			(camera_time))
		(camera_set display_rev_1a 0)
		(object_teleport keyes_x10 keyes_x10_display)
		(cinematic_set_near_clip_distance 0.01)
		(custom_animation keyes_x10 cinematics\animations\captain\x10\x10 well_thats_it_then true)
		(sound_impulse_start sound\dialog\x10\cor05b none 1.00)
		(sleep 21)
		(objects_detach keyes_x10 pipe_x10)
		(objects_attach keyes_x10 pipe_in_hand pipe_x10 )
		(camera_set display_rev_1b 200)
		(sleep 150)
		(unit_set_emotion keyes_x10 5)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x10\cor05b) 60.00))
		(unit_set_emotion keyes_x10 3)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor05b))
		(camera_set thats_it_then_1a 0)
		(camera_set thats_it_then_1b 120)
		(sound_impulse_start sound\dialog\x10\keyes05 keyes_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes05))
		(camera_set keyes_x10_alert_1a 0)
		(camera_set keyes_x10_alert_1b 180) bridge
		(wake x10_crew_panic_1)
		(wake x10_crew_panic_3)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes05))
		(objects_predict cortana_x10)
		(sound_impulse_start sound\dialog\x10\keyes06 keyes_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes06))
		(wake x10_crew_panic_4)
		(sound_impulse_start sound\dialog\x10\cor06 none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor06))
		(sound_impulse_start sound\dialog\x10\keyes07 keyes_x10 1.00)
		(wake x10_crew_panic_2)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes07))
		(unit_stop_custom_animation keyes_x10)
		(object_teleport keyes_x10 keyes_face_cortana)
		(recording_play keyes_x10 keyes_x10_look_at_cortana)
		(sleep
			(camera_time))
		(object_destroy x10_crew_panic_1)
		(object_destroy x10_crew_panic_2)
		(camera_set keyes_to_cortana_1 0)
		(wake x10_crew_panic_5)
		(sound_impulse_start sound\dialog\x10\keyes08 keyes_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes08))
		(effect_new cinematics\effects\cortana effects\cortana on off x10_cortana_effect)
		(sleep 30)
		(object_destroy cortana_x10)
		(object_create cortana_x10)
		(object_teleport cortana_x10 cortana_face_keyes)
		(unit_set_emotion cortana_x10 6)
		(sound_impulse_start sound\dialog\x10\cor07 cortana_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor07))
		(sleep 30)
		(camera_set keyes_to_cortana_2 0)
		(object_type_predict vehicles\pelican\pelican)
		(object_type_predict vehicles\fighterbomber\fighterbomber)
		(object_type_predict vehicles\scorpion\scorpion)
		(object_type_predict characters\marine_armored\marine_armored)
		(object_type_predict levels\a10\devices\h gun rack\h gun rack)
		(object_type_predict levels\a10\devices\h oxy tank\h oxy tank)
		(sound_impulse_start sound\dialog\x10\keyes09 keyes_x10 1.00)
		(sleep 30)
		(unit_set_emotion keyes_x10 1)
		(sleep
			(sound_impulse_time sound\dialog\x10\keyes09))
		(camera_set keyes_to_cortana_3a 0)
		(wake x10_crew_panic_6)
		(sound_impulse_start sound\dialog\x10\cor08 cortana_x10 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\cor08))
		(camera_set keyes_to_cortana_3b 30)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 3 2 0.00 10.00 1.00)
		(cinematic_screen_effect_set_filter_desaturation_tint 0.80 0.00 1.00)
		(cinematic_screen_effect_set_filter 0.00 1.00 0.00 1.00 true 1.00)
		(sleep 15)
		(fade_out 0.80 0.00 1.00 15)
		(sleep 15)
		(object_destroy cortana_x10)
		(object_destroy keyes_x10) bridge
		(cinematic_screen_effect_stop)))

(script dormant void x10_hog_1
	(begin
		(object_create_anew x10_warthog_1)
		(object_create_anew hog_1_driver)
		(object_create_anew hog_1_passenger)
		(object_create_anew hog_1_gunner)
		(vehicle_load_magic x10_warthog_1 w-driver hog_1_driver)
		(vehicle_load_magic x10_warthog_1 w-passenger hog_1_passenger)
		(vehicle_load_magic x10_warthog_1 w-gunner hog_1_gunner)
		(object_teleport x10_warthog_1 x10_hog_1)
		(recording_play x10_warthog_1 x10_hog_1_run)
		(sleep
			(recording_time x10_warthog_1))
		(object_destroy x10_warthog_1)
		(object_destroy hog_1_driver)
		(object_destroy hog_1_passenger)
		(object_destroy hog_1_gunner)))

(script dormant void x10_hog_2
	(begin
		(object_create_anew x10_warthog_2)
		(object_create_anew hog_2_driver)
		(vehicle_load_magic x10_warthog_2 w-driver hog_2_driver)
		(object_teleport x10_warthog_2 x10_hog_2_base)
		(recording_play x10_warthog_2 x10_hog_2_run)
		(sleep
			(recording_time x10_warthog_2))
		(object_destroy x10_warthog_2)
		(object_destroy hog_2_driver)))

(script dormant void x10_hog_3
	(begin
		(object_create_anew x10_warthog_3)
		(object_create_anew hog_3_driver)
		(vehicle_load_magic x10_warthog_3 w-driver hog_3_driver)
		(object_teleport x10_warthog_3 x10_hog_3_base)
		(recording_play x10_warthog_3 x10_hog_3_run)
		(sleep
			(recording_time x10_warthog_3))
		(object_destroy x10_warthog_3)
		(object_destroy hog_3_driver)))

(script dormant void tank_run_1
	(begin
		(object_create_anew x10_run_1a)
		(object_create_anew x10_run_1b)
		(object_create_anew x10_run_1c)
		(object_create_anew x10_run_1d)
		(object_teleport x10_run_1a x10_run_1a_base)
		(object_teleport x10_run_1b x10_run_1b_base)
		(object_teleport x10_run_1c x10_run_1a_base)
		(object_teleport x10_run_1d x10_run_1b_base)
		(recording_play_and_delete x10_run_1a x10_run_1a)
		(recording_play_and_delete x10_run_1b x10_run_1b)
		(sleep 60)
		(recording_play_and_delete x10_run_1c x10_run_1a)
		(recording_play_and_delete x10_run_1d x10_run_1b)))

(script dormant void tank_run_2
	(begin
		(object_create_anew x10_run_2a)
		(object_create_anew x10_run_2b)
		(object_create_anew x10_run_2c)
		(object_create_anew x10_run_2d)
		(object_teleport x10_run_2a x10_run_2a_base)
		(object_teleport x10_run_2b x10_run_2b_base)
		(object_teleport x10_run_2c x10_run_2a_base)
		(object_teleport x10_run_2d x10_run_2b_base)
		(recording_play_and_delete x10_run_2a x10_run_2b)
		(recording_play_and_delete x10_run_2b x10_run_2a)
		(sleep 60)
		(recording_play_and_delete x10_run_2c x10_run_2b)
		(recording_play_and_delete x10_run_2d x10_run_2a)))

(script static void dressing_1
	(begin
		(object_create_anew_containing x10_rack_1)
		(object_create_anew_containing x10_oxy_1)
		(object_create_anew x10_warthog_1a)
		(object_create_anew x10_warthog_1b)
		(object_create_anew x10_warthog_1c)
		(object_create_anew x10_warthog_1d)
		(object_create_anew x10_tank_1a)))

(script static void dressing_1_cleanup
	(begin
		(object_destroy_containing x10_rack_1)
		(object_destroy_containing x10_oxy_1)
		(object_destroy x10_warthog_1a)
		(object_destroy x10_warthog_1b)
		(object_destroy x10_warthog_1c)
		(object_destroy x10_warthog_1d)))

(script static void dressing_2
	(begin
		(object_create_anew_containing x10_oxy_2)
		(object_create_anew_containing x10_warthog_2)
		(object_create_anew x10_tank_2a)))

(script static void dressing_2_cleanup
	(begin
		(object_destroy_containing x10_oxy_2)
		(object_destroy_containing x10_warthog_2)
		(object_destroy x10_tank_2a)))

(script static void dressing_3
	(begin
		(object_create_anew_containing x10_rack_3)
		(object_create_anew x10_pel_3a)
		(object_create_anew_containing x10_tank_3)))

(script static void dressing_3_cleanup
	(begin
		(object_destroy_containing x10_rack_3)
		(object_destroy x10_pel_3a)
		(object_destroy_containing x10_tank_3)))

(script dormant void x10_hog_4
	(begin
		(object_create_anew x10_warthog_2)
		(object_create_anew hog_2_driver)
		(vehicle_load_magic x10_warthog_2 w-driver hog_2_driver)
		(object_teleport x10_warthog_2 x10_hog_4_base)
		(recording_play x10_warthog_2 x10_hog_4_run)
		(sleep
			(recording_time x10_warthog_2))
		(object_destroy x10_warthog_2)
		(object_destroy hog_2_driver)))

(script dormant void x10_hog_5
	(begin
		(object_create_anew x10_warthog_3)
		(object_create_anew hog_3_driver)
		(vehicle_load_magic x10_warthog_3 w-driver hog_3_driver)
		(object_teleport x10_warthog_3 x10_hog_5_base)
		(recording_play x10_warthog_3 x10_hog_5_run)
		(sleep
			(recording_time x10_warthog_3))
		(object_destroy x10_warthog_3)
		(object_destroy hog_3_driver)))

(script dormant void x10_tankpel
	(begin
		(object_create_anew x10_pelican_3)
		(object_create_anew x10_tank_3a)
		(object_teleport x10_tank_3a x10_tank_1_base)
		(object_teleport x10_pelican_3 x10_pelican_3_base)
		(recording_play x10_tank_3a x10_tank_1_move)
		(recording_play x10_pelican_3 x10_pelican_3_drop)
		(sleep
			(recording_time x10_pelican_3))
		(object_destroy x10_pelican_3)
		(object_destroy x10_tank_3a)))

(script static void hangar_1_cleanup_a
	(begin
		(object_destroy_containing hangar_marine)
		(object_destroy_containing baton)))

(script static void hangar_1_cleanup_b
	(begin
		(object_destroy_containing scenery)
		(object_destroy_containing x10_pelican)))

(script static void hangar_1
	(begin
		(sound_class_set_gain device_machinery 1.00 0)
		(render_lights false) hangar_1
		(object_create_anew x10_pelican_1)
		(object_create_anew x10_pelican_2)
		(object_create_anew x10_scorpion_1)
		(object_create_anew x10_scorpion_2)
		(object_create_anew hangar_marine_1)
		(object_create_anew hangar_marine_2)
		(object_create_anew hangar_marine_3)
		(object_create_anew hangar_marine_4)
		(object_create_anew scenery_pelican_1)
		(object_create_anew scenery_pelican_2)
		(object_create_anew scenery_bomber)
		(object_create_anew baton_r)
		(object_create_anew baton_l)
		(object_beautify hangar_marine_1 true)
		(unit_set_seat hangar_marine_1 alert)
		(object_pvs_activate scenery_bomber)
		(camera_set baton_1 0)
		(camera_set baton_2 120)
		(object_teleport hangar_marine_1 hangar_marine_1_base)
		(recording_play_and_delete hangar_marine_1 hangar_marine_1_walk)
		(object_teleport hangar_marine_3 hangar_marine_3_base)
		(recording_play_and_delete hangar_marine_3 hangar_marine_3_walk)
		(object_teleport hangar_marine_4 hangar_marine_4_base)
		(custom_animation hangar_marine_4 cinematics\animations\marines\x10\x10 standing_prep2 true)
		(recording_play x10_scorpion_1 scorpion_idle)
		(recording_play x10_scorpion_2 scorpion_idle)
		(objects_attach hangar_marine_2 right hand baton_r right hand baton)
		(objects_attach hangar_marine_2 left hand baton_l left hand baton)
		(custom_animation hangar_marine_2 cinematics\animations\marines\x10_normal\x10_normal x10groundcrew true)
		(fade_in 0.80 0.00 1.00 30)
		(sound_looping_start sound\sinomatixx\x10_music02 none 1.00)
		(sleep 120)
		(camera_set hangar_1a 0)
		(camera_set hangar_1c 500)
		(sound_looping_start sound\sinomatixx_foley\x10_foley2 none 1.00)
		(sound_impulse_start sound\dialog\x10\cor09 none 1.00)
		(object_teleport x10_pelican_1 x10_pelican_1)
		(recording_play_and_delete x10_pelican_1 x10_pelican_1_out)
		(sleep 100)
		(wake x10_tankpel)
		(sleep 125)
		(wake x10_hog_2)
		(wake x10_hog_3)
		(object_teleport x10_pelican_2 x10_pelican_2)
		(recording_play_and_delete x10_pelican_2 x10_pelican_2_in)
		(sleep 100)
		(sleep
			(-
				(camera_time) 60.00))
		(wake x10_hog_1)
		(sleep
			(camera_time))
		(sound_impulse_start sound\dialog\x10\cor10 none 1.00)
		(camera_set hangar_2a 0)
		(camera_set hangar_2b 300) hangar_1 hangar_1 hangar_1 hangar_1
		(wake tank_run_1)
		(sleep 100)
		(wake tank_run_2)
		(sleep 200)))

(script static void pep_run
	(begin
		(sound_impulse_start sound\dialog\x10\cor11 none 1.00)
		(recording_kill johnson)
		(unit_stop_custom_animation johnson)
		(camera_set run_cu_1a 0)
		(camera_set run_cu_1b 250)
		(object_destroy grunt_5)
		(object_destroy grunt_6)
		(object_destroy grunt_7)
		(object_destroy grunt_8)
		(object_create_anew grunt_10)
		(object_create_anew grunt_11)
		(object_create_anew grunt_1)
		(object_create_anew grunt_2)
		(object_create_anew grunt_3)
		(object_create_anew grunt_4)
		(object_teleport grunt_10 grunt_10_pep_run)
		(object_teleport grunt_11 grunt_11_pep_run)
		(object_teleport grunt_1 grunt_1_pep_run)
		(object_teleport grunt_2 grunt_2_pep_run)
		(object_teleport grunt_3 grunt_3_pep_run)
		(object_teleport grunt_4 grunt_4_pep_run)
		(recording_play grunt_10 pep_run)
		(sleep 30)
		(recording_play grunt_11 pep_run)
		(sleep 15)
		(recording_play grunt_1 pep_run)
		(sleep 30)
		(recording_play grunt_2 pep_run)
		(sleep 45)
		(recording_play grunt_3 pep_run)
		(sleep 30)
		(recording_play grunt_4 pep_run)
		(sleep
			(-
				(camera_time) 30.00))))

(script static void hangar_2_cleanup
	(begin
		(object_destroy johnson)
		(object_destroy_containing grunt)))

(script static void hangar_2
	(begin
		(object_destroy x10_scorpion_1)
		(object_destroy x10_scorpion_2)
		(render_lights true) hangar_2
		(object_pvs_activate johnson)
		(object_create_anew johnson)
		(object_create_anew grunt_1)
		(object_create_anew grunt_2a)
		(object_create_anew grunt_3a)
		(object_create_anew grunt_4)
		(object_create_anew grunt_5)
		(object_create_anew grunt_6)
		(object_create_anew grunt_7)
		(object_create_anew grunt_8)
		(object_create_anew x10_hangar_light_1)
		(object_create_anew x10_hangar_light_2)
		(object_teleport johnson johnson_base)
		(object_teleport grunt_1 grunt_1_base)
		(object_teleport grunt_2a grunt_2_base)
		(object_teleport grunt_3a grunt_3_base)
		(object_teleport grunt_4 grunt_4_base)
		(object_teleport grunt_5 grunt_5_base)
		(object_teleport grunt_6 grunt_6_base)
		(object_teleport grunt_7 grunt_7_base)
		(object_teleport grunt_8 grunt_8_base)
		(custom_animation grunt_2a cinematics\animations\marines\x10\x10 sitting_prep1 true)
		(custom_animation grunt_3a cinematics\animations\marines\x10\x10 sitting_prep2 true)
		(custom_animation grunt_4 cinematics\animations\marines\x10\x10 standing_prep2 true)
		(custom_animation grunt_6 cinematics\animations\marines\x10\x10 standing_prep2 true)
		(custom_animation grunt_8 cinematics\animations\marines\x10\x10 standing_prep2 true)
		(recording_play grunt_1 grunt_idle_1)
		(recording_play grunt_5 grunt_idle_1)
		(recording_play grunt_7 grunt_idle_1)
		(unit_set_seat johnson alert)
		(game_skip_ticks 5)
		(camera_set hangar_3a 0)
		(recording_play johnson johnson_enter)
		(sleep 60)
		(camera_set hangar_3b 90)
		(sleep 90)
		(camera_set you_heard_1a 0)
		(camera_set you_heard_1b 90)
		(recording_kill johnson)
		(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_you heard the lady true)
		(sound_impulse_start sound\dialog\x10\sgt01 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\sgt01))
		(object_destroy grunt_2a)
		(object_destroy grunt_3a) hangar_2
		(recording_kill grunt_1)
		(recording_kill grunt_2)
		(recording_kill grunt_3)
		(recording_kill grunt_4)
		(recording_kill grunt_5)
		(recording_kill grunt_6)
		(recording_kill grunt_7)
		(recording_kill grunt_8)
		(recording_kill grunt_9)
		(recording_kill grunt_10)
		(recording_kill grunt_11)
		(recording_kill grunt_12)
		(object_create_anew_containing grunt)
		(object_teleport grunt_1 grunt_1_pep)
		(object_teleport grunt_2 grunt_2_pep)
		(object_teleport grunt_3 grunt_3_pep)
		(object_teleport grunt_4 grunt_4_pep)
		(object_teleport grunt_5 grunt_5_pep)
		(object_teleport grunt_6 grunt_6_pep)
		(object_teleport grunt_7 grunt_7_pep)
		(object_teleport grunt_8 grunt_8_pep)
		(object_teleport grunt_9 grunt_9_pep)
		(object_teleport grunt_10 grunt_10_pep)
		(object_teleport grunt_11 grunt_11_pep)
		(object_teleport grunt_12 grunt_12_pep)
		(unit_set_seat grunt_1 alert)
		(unit_set_seat grunt_2 alert)
		(unit_set_seat grunt_3 alert)
		(unit_set_seat grunt_4 alert)
		(unit_set_seat grunt_5 alert)
		(unit_set_seat grunt_6 alert)
		(unit_set_seat grunt_7 alert)
		(unit_set_seat grunt_8 alert)
		(unit_set_seat grunt_9 alert)
		(unit_set_seat grunt_10 alert)
		(unit_set_seat grunt_11 alert)
		(unit_set_seat grunt_12 alert)
		(game_skip_ticks 5)
		(if
			(= easy
				(game_difficulty_get_real))
			(begin
				(camera_set pep_run_2a 0)
				(camera_set pep_run_2b 200)
				(object_teleport johnson johnson_pep_easy_base)
				(recording_play johnson johnson_pep_easy)
				(sound_impulse_start sound\dialog\x10\sgt05g johnson 1.00)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05g))
				(recording_kill johnson)
				(object_teleport johnson johnson_right_base)
				(camera_set johnson_right_1a 0)
				(camera_set johnson_right_zoom 30)
				(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_am i right marines true)
				(sound_impulse_start sound\dialog\x10\sgt05h johnson 1.00)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05h))))
		(if
			(= normal
				(game_difficulty_get_real))
			(begin
				(camera_set pep_run_1a 0)
				(camera_set pep_run_1b 200)
				(object_teleport johnson johnson_pep_base)
				(recording_play johnson johnson_pep_5a)
				(sound_impulse_start sound\dialog\x10\sgt05 johnson 1.00)
				(sleep
					(camera_time))
				(camera_set pep_run_2a 0)
				(camera_set pep_run_2b 250)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05))
				(recording_kill johnson)
				(object_teleport johnson johnson_right_base)
				(camera_set johnson_right_1a 0)
				(camera_set johnson_right_zoom 30)
				(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_am i right marines true)
				(sound_impulse_start sound\dialog\x10\sgt05b johnson 1.00)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05b))))
		(if
			(= hard
				(game_difficulty_get_real))
			(begin
				(camera_set pep_run_1a 0)
				(camera_set pep_run_1b 200)
				(object_teleport johnson johnson_pep_base)
				(recording_play johnson johnson_pep_5a)
				(sound_impulse_start sound\dialog\x10\sgt05c johnson 1.00)
				(sleep
					(camera_time))
				(camera_set pep_run_2a 0)
				(camera_set pep_run_2b 250)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05c))
				(recording_kill johnson)
				(object_teleport johnson johnson_right_base)
				(camera_set johnson_right_1a 0)
				(camera_set johnson_right_zoom 30)
				(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_am i right marines true)
				(sound_impulse_start sound\dialog\x10\sgt05d johnson 1.00)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05d))))
		(if
			(= impossible
				(game_difficulty_get_real))
			(begin
				(camera_set pep_run_1a 0)
				(camera_set pep_run_1b 300)
				(object_teleport johnson johnson_pep_base)
				(recording_play johnson johnson_pep_5e)
				(sound_impulse_start sound\dialog\x10\sgt05e johnson 1.00)
				(sleep
					(camera_time))
				(camera_set pep_run_2a 0)
				(camera_set johnson_close_impossible 300)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05e))
				(recording_kill johnson)
				(object_teleport johnson johnson_right_base)
				(camera_set johnson_right_1a 0)
				(camera_set johnson_right_zoom 30)
				(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_am i right marines true)
				(wake x10_hog_4)
				(sound_impulse_start sound\dialog\x10\sgt05f johnson 1.00)
				(sleep
					(sound_impulse_time sound\dialog\x10\sgt05f))))
		(wake x10_hog_4)
		(camera_set johnson_right_1b 0)
		(camera_set johnson_right_1c 60)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_1 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_2 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_3 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_4 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_5 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_6 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_7 1.00)
		(sound_impulse_start sound\dialog\x10\mar01 grunt_8 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\mar01))
		(camera_set johnson_right_2a 0)
		(camera_set johnson_right_2b 120)
		(unit_stop_custom_animation johnson)
		(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_damn right i am false)
		(sound_impulse_start sound\dialog\x10\sgt06 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\sgt06))
		(object_destroy grunt_9)
		(object_destroy grunt_10)
		(object_destroy grunt_11)
		(object_destroy grunt_12)
		(unit_stop_custom_animation johnson)
		(recording_kill johnson)
		(recording_kill grunt_1)
		(recording_kill grunt_2)
		(recording_kill grunt_3)
		(recording_kill grunt_4)
		(recording_kill grunt_5)
		(recording_kill grunt_6)
		(recording_kill grunt_7)
		(recording_kill grunt_8)
		(unit_set_seat grunt_1 combat)
		(unit_set_seat grunt_2 combat)
		(unit_set_seat grunt_3 combat)
		(unit_set_seat grunt_4 combat)
		(unit_set_seat grunt_5 combat)
		(unit_set_seat grunt_6 combat)
		(unit_set_seat grunt_7 combat)
		(unit_set_seat grunt_8 combat)
		(recording_play grunt_1 grunt_1_run)
		(recording_play grunt_2 grunt_2_run)
		(recording_play grunt_3 grunt_3_run)
		(recording_play grunt_4 grunt_4_run)
		(recording_play grunt_5 grunt_5_run)
		(recording_play grunt_6 grunt_6_run)
		(recording_play grunt_7 grunt_7_run)
		(recording_play grunt_8 grunt_8_run)
		(recording_play johnson johnson_saunter)
		(object_destroy x10_scorpion_1)
		(object_destroy x10_scorpion_2)
		(camera_set pep_over_1a 0)
		(sound_looping_start sound\sinomatixx\x10_music03 none 1.00)
		(camera_set pep_over_1c 200)
		(sound_impulse_start sound\dialog\x10\cor12 none 1.00)
		(sleep 100)
		(camera_set pep_over_1b 200)
		(sleep
			(recording_time johnson))
		(custom_animation johnson cinematics\animations\marines\x10\x10 sarge_todays your lucky day true)
		(wake x10_hog_5)
		(sound_impulse_start sound\dialog\x10\sgt07 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\sgt07))
		(object_destroy_containing grunt)
		(sound_impulse_start sound\dialog\x10\sgt08 johnson 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\sgt08))
		(sound_looping_start sound\sinomatixx_foley\x10_foley3 none 1.00)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 15) hangar_2 hangar_2 hangar_2 hangar_2 hangar_2))

(script static void cryo
	(begin
		(switch_bsp 0)
		(camera_set screen_ecu_1a 0)
		(camera_set screen_ecu_1b 120)
		(sound_looping_start sound\sinomatixx\x10_music04 none 1.00)
		(fade_in 0.00 0.00 0.00 15)
		(sleep 15)
		(object_create_anew casket_1)
		(sleep 60)
		(object_destroy casket_1)
		(object_create_anew casket_2)
		(sleep 60)
		(object_create_anew technician)
		(object_create_anew assistant)
		(object_beautify technician true)
		(object_beautify assistant true)
		(object_pvs_activate technician)
		(object_teleport assistant asst_base)
		(custom_animation assistant cinematics\animations\crewman\x10\x10 cryo_assistant true)
		(object_teleport technician tech_base)
		(custom_animation technician cinematics\animations\crewman\x10\x10 cryo_technician true)
		(sleep 5)
		(camera_set assistant_react 0)
		(sound_impulse_start sound\dialog\x10\ass01 assistant 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\ass01))
		(sleep 30)
		(sound_impulse_start sound\dialog\x10\tec01 technician 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x10\tec01))
		(camera_set keyboard_med 0)
		(object_create_anew x10_tube)
		(object_create_anew x10_chief)
		(objects_attach x10_tube driver x10_chief )
		(custom_animation x10_chief characters\cyborg\cyborg ct-driver unarmed idle true)
		(sound_impulse_start sound\dialog\x10\ass02 assistant 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x10\ass02) 60.00))
		(camera_set booth_hi_1 0)
		(camera_set booth_hi_2 200)
		(sound_impulse_start sound\dialog\x10\ass03 assistant 1.00)
		(sleep
			(camera_time))
		(camera_set tube_1a 0)
		(camera_set tube_1b 300)
		(sleep 90)
		(object_create_anew_containing x10_cryo_steam)
		(sound_impulse_start sound\dialog\x10\ass04 none 1.00)
		(sleep
			(camera_time))
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(object_destroy assistant)
		(object_destroy technician)
		(object_destroy x10_chief)
		(object_destroy x10_tube)
		(object_destroy casket_1)
		(object_destroy casket_2)
		(object_destroy_containing x10_cryo_steam)
		(camera_control false)
		(cinematic_stop)
		(unit_suspended cryo false)
		(unit_suspended cryo false)
		(object_pvs_activate none)))

(script static void hangar_total
	(begin hangar_total hangar_total))

(script static void hangar_cryo
	(begin hangar_cryo hangar_cryo hangar_cryo))

(script static void x10_cleanup
	(begin
		(object_destroy hangar_marine_1)
		(object_destroy hangar_marine_2)
		(object_destroy hog_1_driver)
		(object_destroy hog_1_gunner)
		(object_destroy hog_2_driver)
		(object_destroy hog_3_driver)
		(object_destroy x10_pelican_1)
		(object_destroy x10_pelican_2)
		(object_destroy x10_warthog_1)
		(object_destroy x10_scorpion_1)
		(object_destroy x10_scorpion_2)
		(object_destroy x10_warthog_2)
		(object_destroy x10_warthog_3)
		(object_destroy x10_warthog_1a)
		(object_destroy x10_warthog_1b)
		(object_destroy x10_warthog_1c)
		(object_destroy x10_warthog_1d)
		(object_destroy x10_warthog_2a)
		(object_destroy x10_warthog_2b)
		(object_destroy x10_tank_1a)
		(object_destroy x10_tank_2a)
		(object_destroy x10_tank_3a)
		(object_destroy x10_tank_3b)
		(object_destroy x10_pelican_3)
		(object_destroy scenery_bomber)))

(script static void no_keyes_for_you
	(begin
		(object_destroy keyes)))

(script static void capt_keyes
	(begin
		(sound_looping_start sound\music\x20_music\x20_music_1 none 1.00)
		(switch_bsp 1)
		(object_teleport capt_keyes player0_base)
		(object_teleport capt_keyes player1_base)
		(object_create_anew chief)
		(object_create_anew keyes)
		(object_create_anew cortana_effect)
		(unit_set_seat keyes alert)
		(unit_set_seat chief alert)
		(object_teleport chief chief_shake)
		(object_teleport keyes keyes_base)
		(unit_suspended keyes true)
		(unit_suspended chief true)
		(object_beautify chief true)
		(object_beautify keyes true)
		(objects_predict keyes)
		(objects_predict cortana_x20)
		(unit_set_emotion keyes 3)
		(object_create dave)
		(object_create pilot_chair)
		(vehicle_load_magic pilot_chair  dave)
		(object_create cortana_effect)
		(camera_set capt_keyes_1a 0)
		(camera_set capt_keyes_1b 180)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 60)
		(sound_impulse_start sound\dialog\x20\chief01 chief 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\chief01))
		(camera_set good_to_1a 0)
		(camera_set good_to_1b 200)
		(custom_animation keyes cinematics\animations\captain\x20\x20 shake hands false)
		(custom_animation chief cinematics\animations\chief\x20\x20 shake hands false)
		(sleep 60)
		(sound_impulse_start sound\dialog\x20\keyes01 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes01))
		(sound_impulse_start sound\dialog\x20\keyes02 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes02))
		(camera_set cortana_best_1a 0)
		(custom_animation keyes cinematics\animations\captain\x20\x20 x20nochance false)
		(object_teleport keyes keyes_face_chief)
		(object_teleport chief chief_base)
		(sound_impulse_start sound\dialog\x20\keyes02b keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes02b))
		(object_create_anew pipe)
		(objects_attach keyes pipe_in_hand pipe )
		(cinematic_set_near_clip_distance 0.01)
		(camera_set cortana_appear_1a 0)
		(camera_set cortana_appear_1b 120)
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)
		(sound_impulse_start sound\dialog\x20\cor01 cortana_x20 1.00)
		(sleep 30)
		(object_create_anew cortana_x20)
		(object_beautify cortana_x20 true)
		(object_teleport cortana_x20 cortana_face_display)
		(unit_suspended cortana_x20 true)
		(custom_animation cortana_x20 cinematics\animations\cortana\x20\x20 x20cortana01 false)
		(unit_set_emotion cortana_x20 6)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor01))
		(object_teleport chief chief_face_cortana)
		(camera_set those_odds_1a 0)
		(camera_set those_odds_1b 200)
		(sound_impulse_start sound\dialog\x20\cor01b cortana_x20 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x20\cor01b) 30.00))
		(unit_set_emotion cortana_x20 8)
		(sleep
			(+
				(sound_impulse_time sound\dialog\x20\cor01b) 15.00))
		(sound_impulse_start sound\dialog\x20\cor01c cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor01c))
		(unit_set_emotion cortana_x20 6)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor01))
		(camera_set cortana_cu 0)
		(sleep 30)
		(sound_impulse_start sound\dialog\x20\cor02 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor02))
		(sleep 30)
		(object_teleport keyes keyes_base)
		(unit_suspended keyes false)
		(camera_set no_thanks_1a 0)
		(custom_animation chief cinematics\animations\chief\x20\x20 x20nothanks false)
		(sound_impulse_start sound\dialog\x20\chief02 chief 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\chief02))
		(unit_set_emotion cortana_x20 2)
		(camera_set miss_me_1a 0)
		(camera_set miss_me_1b 90)
		(sound_impulse_start sound\dialog\x20\cor03 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor03))
		(sleep 30)))

(script static void explosion
	(begin
		(switch_bsp 1)
		(object_teleport chief chief_shake)
		(sound_impulse_start sound\dialog\x20\bigboom none 0.50)
		(unit_set_emotion keyes 7)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.25 0.25)
		(player_effect_set_max_rumble 0.40 0.40)
		(player_effect_start 1.00 0.00)
		(sound_impulse_start sound\sfx\ambience\a10\pillarhits none 1.00)
		(object_teleport cortana_x20 cortana_face_display)
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)
		(custom_animation keyes cinematics\animations\captain\x20\x20 explosion1 true)
		(custom_animation chief cinematics\animations\chief\x20\x20 explosion1 true)
		(camera_set explosion_1a 0)
		(camera_set explosion_1b 60)
		(sleep 60)
		(camera_set explosion_2a 0)
		(sound_looping_start sound\music\x20_music\x20_music_2 none 1.00)
		(camera_set explosion_2b 60)
		(unit_set_emotion keyes 3)
		(unit_stop_custom_animation cortana_x20)
		(sound_impulse_start sound\dialog\x20\keyes03 keyes 1.00)
		(print keyes: report!)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes03))
		(player_effect_stop 2.00)
		(unit_stop_custom_animation keyes)
		(unit_set_emotion cortana_x20 3)
		(sound_impulse_start sound\dialog\x20\cor04 cortana_x20 1.00)
		(print cortana: it must have been one of their boarding parties. i'd guess an anti-matter charge.)
		(camera_set explosion_3a 0)
		(camera_set explosion_3b 60)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x20\cor04) 15.00))
		(object_teleport keyes keyes_base)
		(sound_impulse_start sound\dialog\x20\flightofficer01 dave 1.00)
		(sleep 30)
		(camera_set officer_zoom_1 0)
		(camera_set officer_zoom_2 60)
		(object_teleport cortana_x20 cortana_face_keyes)
		(object_teleport keyes keyes_face_cortana)
		(custom_animation dave cinematics\animations\crewman\x10\x10 sitting_turn02 true)
		(sleep
			(sound_impulse_time sound\dialog\x20\flightofficer01))
		(camera_set last_option_1a 0)
		(camera_set last_option_1b 60)
		(sound_impulse_start sound\dialog\x20\cor05 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor05))
		(custom_animation keyes cinematics\animations\captain\x20\x20 captin_lookingdowngesture true)
		(camera_set cole_protocol_1a 0)
		(camera_set cole_protocol_1b 200)
		(sound_impulse_start sound\dialog\x20\keyes04 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes04))
		(camera_set you_too_2a 0)
		(custom_animation keyes cinematics\animations\captain\x20\x20 gesture1 true)
		(sound_impulse_start sound\dialog\x20\keyes05 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes05))
		(unit_set_emotion cortana_x20 11)
		(custom_animation cortana_x20 cinematics\animations\cortana\x20\x20 cortana_gesture2 true)
		(camera_set do_what_1a 0)
		(camera_set do_what_1b 180)
		(object_teleport keyes keyes_base)
		(objects_detach keyes pipe)
		(objects_attach keyes mouth01 pipe )
		(sound_impulse_start sound\dialog\x20\cor06 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor06))
		(camera_set manner_1a 0)
		(camera_set manner_1b 180)
		(sound_looping_start sound\music\x20_music\x20_music_3 none 1.00)
		(custom_animation keyes cinematics\animations\captain\x20\x20 pipe point true)
		(sound_impulse_start sound\dialog\x20\keyes06 keyes 1.00)
		(print keyes: in a manner of speaking)
		(sleep 50)
		(objects_detach keyes pipe)
		(objects_attach keyes pipe_in_hand pipe )
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes06))
		(camera_set pipe_point_rev 0)
		(camera_set manner_2a 0)
		(camera_set manner_2b 200)
		(sound_impulse_start sound\dialog\x20\keyes07 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes07))
		(sound_impulse_start sound\dialog\x20\cor07 cortana_x20 1.00)
		(print cortana: with all due respect, sir...)
		(sleep 60)
		(camera_set due_respect_1a 0)
		(camera_set due_respect_1b 120)
		(object_teleport keyes keyes_face_cortana)
		(unit_stop_custom_animation keyes)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor07))
		(sleep 15)
		(camera_set appreciate_1a 0)
		(camera_set appreciate_1b 500)
		(custom_animation keyes cinematics\animations\captain\x20\x20 gesture2 true)
		(sound_impulse_start sound\dialog\x20\keyes08 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes08))
		(sound_impulse_start sound\dialog\x20\keyes09 keyes 1.00)
		(sleep
			(unit_get_custom_animation_time keyes))
		(custom_animation keyes cinematics\animations\captain\x20\x20 captin_gesturetoside true)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x20\keyes09) 90.00))
		(camera_set aye_aye_1a 0)
		(camera_set aye_aye_1b 180)
		(ai_detach keyes)
		(object_teleport keyes keyes_face_chief)
		(sleep 15)
		(unit_set_emotion cortana_x20 6)
		(custom_animation cortana_x20 cinematics\animations\cortana\x20\x20 cortana_cross_arms true)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes09))
		(sound_impulse_start sound\dialog\x20\cor08 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor08))
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)
		(sleep 30)
		(unit_stop_custom_animation keyes)
		(object_destroy cortana_x20)
		(sleep 30)))

(script static void final_words
	(begin
		(switch_bsp 1)
		(camera_set you_come_1a 0)
		(camera_set you_come_1b 350)
		(sound_looping_start sound\music\x20_music\x20_music_4 none 1.00)
		(sleep 30)
		(sound_impulse_start sound\dialog\x20\keyes10 keyes 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x20\keyes10) 30.00))
		(camera_set earth_1a 0)
		(camera_set earth_1b 30)
		(sleep 30)
		(sound_impulse_start sound\dialog\x20\keyes10b keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes10b))
		(camera_set understand_1a 0)
		(custom_animation chief cinematics\animations\chief\x20\x20 x20yes false)
		(sound_impulse_start sound\dialog\x20\chief03 chief 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\chief03))
		(sleep 30)
		(camera_set evasive_1a 0)
		(camera_set evasive_1b 300)
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)
		(sleep 30)
		(object_destroy cortana_x20)
		(object_create cortana_x20)
		(unit_suspended cortana_x20 true)
		(object_teleport cortana_x20 cortana_face_keyes)
		(object_teleport keyes keyes_face_cortana)
		(object_teleport chief chief_face_cortana)
		(unit_set_emotion cortana_x20 9)
		(sound_impulse_start sound\dialog\x20\cor09 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor09))
		(custom_animation cortana_x20 cinematics\animations\cortana\x20\x20 cortana_gesture1 false)
		(camera_set not_listen_1a 0)
		(camera_set not_listen_1b 200)
		(sound_impulse_start sound\dialog\x20\cor09b cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor09b))
		(camera_set keyes_chip_1a 0)
		(camera_set keyes_chip_1b 200)
		(sound_impulse_start sound\dialog\x20\keyes12 keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes12))
		(sound_impulse_start sound\dialog\x20\keyes12b keyes 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\keyes12b))
		(camera_set yank_me_1a 0)
		(camera_set yank_me_1b 180)
		(custom_animation cortana_x20 cinematics\animations\cortana\x20\x20 cortana_lookaround false)
		(ai_detach keyes)
		(sleep 150)
		(sound_impulse_start sound\dialog\x20\cor10 cortana_x20 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x20\cor10))
		(object_teleport keyes keyes_chip)
		(object_teleport chief chief_base)
		(camera_set chip_1a 0)
		(custom_animation keyes cinematics\animations\captain\x20\x20 remove chip true)
		(sleep 19)
		(sound_impulse_start sound\dialog\x20\x20_unique1 none 1.00)
		(sleep 60)
		(custom_animation chief cinematics\animations\chief\x20\x20 take chip true)
		(sleep 41)
		(camera_set chip_1b 0)
		(camera_set chip_1b2 90)
		(sleep 10)
		(sound_impulse_start sound\dialog\x20\x20_unique2 none 1.00)
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)
		(sleep 30)
		(object_destroy cortana_x20)
		(sleep 50)
		(objects_detach keyes pipe)
		(object_destroy pipe)
		(object_destroy cortana_chip)
		(object_create cortana_chip)
		(objects_attach keyes right hand cortana_chip )
		(camera_set chip_1c 0)
		(camera_set chip_1c2 180)
		(sleep 30)
		(objects_detach keyes cortana_chip)
		(objects_attach keyes left hand cortana_chip )
		(sound_impulse_start sound\dialog\x20\keyes14 keyes 1.00)
		(print keyes: good luck, master-chief.)
		(sleep 120)
		(camera_set chip_2a 0)
		(objects_detach keyes cortana_chip)
		(objects_attach chief left hand cortana_chip )
		(sleep 60)
		(sound_impulse_start sound\dialog\x20\x20_unique3 none 1.00)
		(camera_set chip_2b 30)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 3 2 1.00 10.00 1.00)
		(fade_out 1.00 1.00 1.00 30)
		(sleep 15)
		(effect_new_on_object_marker cinematics\effects\cyborg chip insertion chief left hand)
		(sleep 15)))

(script static void cortana_test
	(begin
		(effect_new cinematics\effects\cortana effects\cortana on off cortana_effect_base)))

(script static void dave_test
	(begin
		(custom_animation dave cinematics\animations\crewman\x10\x10 sitting_turn02 true)))

(script static void lifeboat_docked_load
	(begin
		(object_create_anew lifeboat_x30_docked)
		(object_create_anew pilot_x30)
		(object_create_anew_containing marine_x30)
		(object_beautify lifeboat_x30_docked true)
		(object_beautify pilot_x30 true)
		(object_beautify marine_x30_1 true)
		(object_beautify marine_x30_2 true)
		(object_beautify marine_x30_3 true)
		(object_beautify marine_x30_4 true)
		(object_beautify marine_x30_5 true)
		(object_beautify marine_x30_6 true)
		(object_beautify marine_x30_7 true)
		(object_beautify marine_x30_8 true)
		(objects_attach lifeboat_x30_docked driver pilot_x30 )
		(objects_attach lifeboat_x30_docked rider right a marine_x30_2 )
		(objects_attach lifeboat_x30_docked rider right b marine_x30_3 )
		(objects_attach lifeboat_x30_docked rider right c marine_x30_4 )
		(objects_attach lifeboat_x30_docked rider right d marine_x30_5 )
		(objects_attach lifeboat_x30_docked rider left a marine_x30_6 )
		(objects_attach lifeboat_x30_docked rider left b marine_x30_7 )
		(objects_attach lifeboat_x30_docked rider left d marine_x30_8 )
		(custom_animation pilot_x30 cinematics\animations\pilot\x30\x30 idle true)
		(custom_animation marine_x30_2 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_3 cinematics\animations\marines\x30\x30 idle_passed_out true)
		(custom_animation marine_x30_4 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_5 cinematics\animations\marines\x30\x30 idle_relaxed true)
		(custom_animation marine_x30_6 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_7 cinematics\animations\marines\x30\x30 idle_relaxed true)
		(custom_animation marine_x30_8 cinematics\animations\marines\x30\x30 idle_passed_out true)))

(script static void lifeboat_space_load
	(begin
		(object_create_anew chief_x30)
		(object_create_anew lifeboat_x30_space)
		(object_create_anew pilot_x30)
		(object_create_anew_containing marine_x30)
		(object_beautify chief_x30 true)
		(object_beautify pilot_x30 true)
		(object_beautify lifeboat_x30_space true)
		(object_beautify marine_x30_1 true)
		(object_beautify marine_x30_2 true)
		(object_beautify marine_x30_3 true)
		(object_beautify marine_x30_4 true)
		(object_beautify marine_x30_5 true)
		(object_beautify marine_x30_6 true)
		(object_beautify marine_x30_7 true)
		(object_beautify marine_x30_8 true)
		(object_teleport chief_x30 chief_x30_space_base)
		(objects_attach lifeboat_x30_space driver pilot_x30 )
		(objects_attach lifeboat_x30_space rider left a marine_x30_1 )
		(objects_attach lifeboat_x30_space rider right a marine_x30_2 )
		(objects_attach lifeboat_x30_space rider right b marine_x30_3 )
		(objects_attach lifeboat_x30_space rider right c marine_x30_4 )
		(objects_attach lifeboat_x30_space rider right d marine_x30_5 )
		(objects_attach lifeboat_x30_space rider left b marine_x30_6 )
		(objects_attach lifeboat_x30_space rider left c marine_x30_7 )
		(objects_attach lifeboat_x30_space rider left d marine_x30_8 )
		(custom_animation pilot_x30 cinematics\animations\pilot\x30\x30 idle true)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 escapepod_idle2hand true)
		(custom_animation marine_x30_1 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_2 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_3 cinematics\animations\marines\x30\x30 idle_passed_out true)
		(custom_animation marine_x30_4 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_5 cinematics\animations\marines\x30\x30 idle_relaxed true)
		(custom_animation marine_x30_6 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(custom_animation marine_x30_7 cinematics\animations\marines\x30\x30 idle_relaxed true)
		(custom_animation marine_x30_8 cinematics\animations\marines\x30\x30 idle_passed_out true)))

(script static void into_the_breach
	(begin
		(sound_looping_start sound\sinomatixx_foley\x30_foley1 none 1.00)
		(unit_open lifeboat_x30_docked)
		(object_create_anew chief_x30)
		(object_create_anew marine_x30_1)
		(object_create_anew x30_rifle)
		(object_create_anew x30_rifle_2)
		(object_beautify chief_x30 true)
		(object_beautify marine_x30_1 true)
		(object_pvs_activate chief_x30)
		(objects_attach chief_x30 right hand x30_rifle )
		(objects_attach marine_x30_1 right hand x30_rifle_2 )
		(object_teleport marine_x30_1 marine_x30_1_base)
		(camera_set breach_1a 0)
		(camera_set breach_1c 60)
		(fade_in 1.00 1.00 1.00 15)
		(custom_animation marine_x30_1 cinematics\animations\marines\x30\x30 clip01-runandjump true)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(effect_new effects\explosions\medium explosion cinematic explosion_x30_1)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.25 0.25)
		(player_effect_start 1.00 0.00)
		(sleep 30)
		(sound_impulse_start sound\dialog\x30\mar1_01 marine_x30_1 1.00)
		(player_effect_stop 2.00)
		(sleep
			(unit_get_custom_animation_time marine_x30_1))
		(camera_set chief_grab_1a 0)
		(object_teleport chief_x30 chief_x30_dock_base)
		(camera_set breach_2a 0)
		(camera_set breach_2b 30)
		(unit_stop_custom_animation marine_x30_1)
		(custom_animation marine_x30_1 cinematics\animations\marines\x30\x30 clip02-grabedandthrown false)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 clip01-throwandshoot false)
		(sleep 30)
		(camera_set throw_3a 0)
		(camera_set chief_throw_1b 30)
		(sound_impulse_start sound\dialog\x30\mar1_02 marine_x30_1 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\mar1_02))
		(sound_impulse_start sound\dialog\x30\cor_01 none 1.00)
		(sleep 30)
		(camera_set chief_throw_1c 60)
		(sleep 60)
		(camera_set punch_it_1a 0)
		(camera_set punch_it_1b 90)
		(sound_looping_start sound\sinomatixx\x30_music none 1.00)
		(objects_detach marine_x30_1 x30_rifle_2)
		(object_destroy x30_rifle_2)
		(sound_impulse_start sound\sfx\impulse\doors\lifepod_door none 1.00)
		(unit_close lifeboat_x30_docked)
		(sleep 30)
		(sleep
			(-
				(camera_time) 15.00))
		(sound_impulse_start sound\dialog\x30\che_01 chief_x30 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\che_01))
		(camera_set x30_aye_aye_1a 0)
		(custom_animation pilot_x30 cinematics\animations\pilot\x30\x30 aye_aye_sir true)
		(sound_impulse_start sound\dialog\x30\lif_01 pilot_x30 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x30\lif_01) 15.00))
		(camera_set x30_aye_aye_1b 30)
		(sleep
			(unit_get_custom_animation_time pilot_x30))))

(script static void launch
	(begin
		(object_destroy chief_x30)
		(object_destroy pilot_x30)
		(object_destroy marine_x30_1)
		(object_destroy marine_x30_2)
		(object_destroy marine_x30_3)
		(object_destroy marine_x30_4)
		(object_destroy marine_x30_5)
		(object_destroy marine_x30_6)
		(object_destroy marine_x30_7)
		(object_destroy marine_x30_8)
		(object_create_anew lifeboat_x30_docked)
		(object_pvs_activate lifeboat_x30_docked)
		(unit_close lifeboat_x30_docked)
		(object_teleport lifeboat_x30_docked lifeboat_launch_base)
		(effect_new levels\a10\devices\lifepod device\effects\explosion explosion_x30_2)
		(custom_animation lifeboat_x30_docked cinematics\animations\lifeboat\x30\x30 takeoff true)
		(camera_set takeoff_1a 0)
		(camera_set takeoff_1b 30)
		(sleep 30)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.25 0.25)
		(player_effect_start 1.00 0.00)
		(player_effect_stop 4.00)
		(sleep 30)
		(objects_detach chief_x30 x30_rifle)
		(object_destroy x30_rifle)))

(script static void animation_test
	(begin
		(object_create_anew lifeboat_x30_double)
		(object_beautify lifeboat_x30_double true)
		(object_teleport lifeboat_x30_double flight1_base)
		(custom_animation lifeboat_x30_double cinematics\animations\lifeboat\x30\x30 flight2 true)
		(sleep 90)))

(script dormant void safe_pyro
	(begin
		(object_create_anew main_cannon_fire)
		(object_create_anew engine_fire)
		(object_create_anew spot_fire_1)
		(object_create_anew spot_fire_2)
		(object_create_anew spot_fire_3)
		(effect_new effects\explosions\large explosion safe_pyro_1a)
		(effect_new effects\explosions\medium explosion safe_pyro_1b)
		(sleep 30)
		(effect_new effects\explosions\medium explosion safe_pyro_1i)
		(effect_new effects\explosions\large explosion safe_pyro_1d)
		(effect_new effects\explosions\medium explosion safe_pyro_1c)
		(sleep 45)
		(effect_new effects\explosions\large explosion safe_pyro_1e)
		(effect_new effects\explosions\medium explosion safe_pyro_1f)
		(sleep 40)
		(effect_new effects\explosions\medium explosion safe_pyro_1g)
		(effect_new effects\explosions\large explosion safe_pyro_1h)))

(script static void minimum_safe_distance
	(begin
		(wake safe_pyro)
		(object_create_anew lifeboat_x30_double)
		(object_pvs_activate lifeboat_x30_double)
		(object_beautify lifeboat_x30_double true)
		(object_teleport lifeboat_x30_double flight1_base)
		(object_set_scale lifeboat_x30_double 0.50 0)
		(camera_set_relative fall_away_1a 0 lifeboat_x30_double)
		(effect_new effects\explosions\medium explosion no objects cinematic explosion_x30_3)
		(custom_animation lifeboat_x30_double cinematics\animations\lifeboat\x30\x30 flight1 true)
		(sound_impulse_start sound\dialog\x30\lif_02 none 1.00)
		(camera_set_relative safe_distance_1a 180 lifeboat_x30_double)
		(sleep
			(sound_impulse_time sound\dialog\x30\lif_02))
		(sleep 60)))

(script dormant void approach_setup
	(begin
		(object_create_anew lifeboat_approach)
		(object_beautify lifeboat_approach true)
		(unit_close lifeboat_approach)))

(script static void buck_up
	(begin
		(sound_looping_start sound\sinomatixx_foley\x30_foley2 none 1.00)
		(object_pvs_activate chief_x30)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.25 0.25)
		(player_effect_start 1.00 0.00)
		(camera_set gonna_make_it_1a 0)
		(camera_set gonna_make_it_1b 90)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 hand_on_shoulder true)
		(custom_animation marine_x30_1 cinematics\animations\marines\x30\x30 hand_on_shoulder true)
		(sleep 1)
		(sound_impulse_start sound\dialog\x30\mar1_03 marine_x30_1 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\mar1_03))
		(unit_stop_custom_animation marine_x30_1)
		(custom_animation marine_x30_1 cinematics\animations\marines\x30\x30 idle_hold_harness true)
		(camera_set shoulder_1a 0)
		(camera_set shoulder_1b 60)
		(sleep
			(-
				(unit_get_custom_animation_time chief_x30) 60.00))
		(camera_set chief_walk_forward_1a 0)
		(sound_impulse_start sound\dialog\x30\cor_02 none 1.00)
		(sleep 30)
		(camera_set chief_walk_forward_1b 90)
		(sleep 30)
		(object_destroy halo_x30_1)
		(object_create halo_x30_1)
		(object_teleport chief_x30 chief_halo_look_base)
		(unit_stop_custom_animation chief_x30)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 escapepod_checkpilot false)
		(sleep 6)
		(camera_set chief_halo_look_1a 0)
		(camera_set chief_halo_look_1b 180)
		(object_set_scale halo_x30_1 2.00 1000)
		(wake approach_setup)
		(sleep 220)))

(script static void halo_look
	(begin
		(camera_set chief_halo_look_1a 0)
		(object_set_scale halo_x30_1 2.00 1000)
		(object_teleport chief_x30 chief_halo_look_base)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 escapepod_checkpilot true)
		(camera_set chief_halo_look_1b 180)
		(sleep 250)))

(script static void approach
	(begin
		(sound_looping_stop sound\sinomatixx_foley\x30_foley2)
		(object_destroy halo_x30_1)
		(object_create_anew halo_x30_2)
		(object_set_scale lifeboat_approach 0.25 0)
		(object_set_scale halo_x30_2 2.00 0)
		(object_pvs_activate lifeboat_approach)
		(object_teleport lifeboat_approach halo_approach_base)
		(camera_set halo_approach_1a 0)
		(camera_set halo_approach_1b 240)
		(object_set_scale lifeboat_approach 0.02 200)
		(object_set_scale halo_x30_2 3.00 2000)
		(sleep 200)))

(script static void autumn_int
	(begin
		(sound_looping_start sound\sinomatixx_foley\x30_foley3 none 1.00)
		(object_pvs_activate chief_x30)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.40 0.40)
		(object_destroy halo_x30_2)
		(object_destroy lifeboat_x30_double)
		(camera_set what_is_1d 0)
		(camera_set what_is_1a 60)
		(sound_impulse_start sound\dialog\x30\mar2_01 marine_x30_1 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\mar2_01))
		(camera_set what_is_1b 0)
		(camera_set what_is_1c 90)
		(custom_animation pilot_x30 cinematics\animations\pilot\x30\x30 hell_if_i_know true)
		(sound_impulse_start sound\dialog\x30\lif_04 pilot_x30 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\lif_04))
		(camera_set the_autumn_1a 0)
		(camera_set the_autumn_1b 30)
		(unit_close lifeboat_x30_space)
		(object_teleport chief_x30 chief_autumn_look_base)
		(sound_impulse_start sound\dialog\x30\mar1_04 marine_x30_2 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\mar1_04))
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 look_out_hatch false)
		(camera_set autumn_hit_1c 0)
		(camera_set autumn_hit_1b 60)
		(sound_impulse_start sound\dialog\x30\cor_03 none 1.00)
		(sleep
			(-
				(sound_impulse_time sound\dialog\x30\cor_03) 60.00))))

(script static void autumn_int_build
	(begin
		(object_teleport chief_x30 chief_autumn_look_base)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 look_out_hatch false)))

(script dormant void pass_pyro
	(begin
		(effect_new effects\explosions\large explosion pass_pyro_1a)
		(effect_new effects\explosions\medium explosion safe_pyro_1b)
		(sleep 30)
		(effect_new effects\explosions\medium explosion safe_pyro_1g)
		(effect_new effects\explosions\large explosion safe_pyro_1h)
		(sleep 45)
		(effect_new effects\explosions\large explosion safe_pyro_1c)
		(sleep 15)
		(effect_new effects\explosions\medium explosion safe_pyro_1d)
		(sleep 15)
		(effect_new effects\explosions\medium explosion safe_pyro_1e)
		(sleep 15)
		(effect_new effects\explosions\large explosion safe_pyro_1f)))

(script dormant void heavy_fire_1
	(begin
		(effect_new effects\bursts\space beam large heavy_fire_1a)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_1b)
		(sleep 15)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_1d)
		(sleep 15)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_1c)))

(script dormant void heavy_fire_2
	(begin
		(effect_new effects\bursts\space beam large heavy_fire_2a)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_2b)
		(sleep 15)
		(effect_new effects\bursts\space beam large heavy_fire_2c)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_2d)
		(sleep 15)
		(effect_new effects\bursts\space beam large heavy_fire_2c)
		(sleep 30)
		(effect_new effects\bursts\space beam large heavy_fire_2d)))

(script static void autumn_ext
	(begin
		(object_create_anew lifeboat_x30_double)
		(object_pvs_activate lifeboat_x30_double)
		(object_create_anew_containing poa_fire)
		(object_beautify lifeboat_x30_double true)
		(object_teleport lifeboat_x30_double flight2_base)
		(object_set_scale lifeboat_x30_double 0.25 0)
		(custom_animation lifeboat_x30_double cinematics\animations\lifeboat\x30\x30 flight2 false)
		(camera_set_relative pull_back_1a 0 lifeboat_x30_double)
		(camera_set_relative pull_back_1b 120 lifeboat_x30_double)
		(sleep 60)
		(wake heavy_fire_1)
		(wake pass_pyro)
		(camera_set_relative pull_back_1c 120 lifeboat_x30_double)
		(sleep 60)
		(wake heavy_fire_2)
		(camera_set_relative pull_back_1d 120 lifeboat_x30_double)
		(sleep 120)))

(script static void flight2_test
	(begin
		(object_teleport lifeboat_x30_double flight2_base)
		(custom_animation lifeboat_x30_double cinematics\animations\lifeboat\x30\x30 flight2 true)))

(script static void atmos_int_1
	(begin
		(object_destroy lifeboat_approach)
		(sound_looping_start sound\sinomatixx_foley\x30_foley4 none 1.00)
		(object_pvs_activate chief_x30)
		(object_destroy lifeboat_burn)
		(object_create lifeboat_burn)
		(custom_animation pilot_x30 cinematics\animations\pilot\x30\x30 heads_up false)
		(camera_set heads_up_1b 0)
		(camera_set heads_up_1a 120)
		(sleep 1)
		(sound_impulse_start sound\dialog\x30\lif_05 pilot_x30 1.00)
		(sleep
			(sound_impulse_time sound\dialog\x30\lif_05))))

(script static void atmos_ext
	(begin
		(object_teleport chief_x30 chief_impact_base)
		(unit_stop_custom_animation chief_x30)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 escapepod_idle2hand false)
		(custom_animation lifeboat_burn scenery\vehicles\lifepod_atmosphere_entry\lifepod_atmosphere_entry idle_fall false)
		(camera_set_relative burn_3a 0 lifeboat_burn)
		(camera_set_relative burn_3b 120 lifeboat_burn)
		(sleep 90)))

(script static void burn_test
	(begin
		(object_create_anew halo_closeup)
		(object_create_anew lifeboat_burn)
		(object_destroy halo_x30_1)
		(object_destroy halo_x30_2)
		(object_set_scale halo_closeup 8.25 0)
		(object_teleport lifeboat_burn entry_base)
		(custom_animation lifeboat_burn scenery\vehicles\lifepod_atmosphere_entry\lifepod_atmosphere_entry idle_fall false)
		(camera_set_relative final_burn_1a 0 lifeboat_burn)
		(sleep 1)
		(game_speed 0.00)))

(script static void atmos_int_2
	(begin
		(camera_set chief_impact_1a 0)
		(sound_impulse_start sound\dialog\x30\cor_04 none 1.00)
		(print cortana: you sure you wouldn't rather take a seat?)
		(sleep
			(sound_impulse_time sound\dialog\x30\cor_04))
		(object_create_anew halo_closeup)
		(object_create_anew lifeboat_burn)
		(object_destroy halo_x30_1)
		(object_destroy halo_x30_2)
		(object_set_scale halo_closeup 8.25 0)
		(object_teleport lifeboat_burn entry_base)
		(custom_animation lifeboat_burn scenery\vehicles\lifepod_atmosphere_entry\lifepod_atmosphere_entry idle_fall true)
		(camera_set_relative final_burn_1a 0 lifeboat_burn)
		(player_effect_set_max_translation 0.00 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.00 0.00)
		(player_effect_set_max_rumble 0.00 0.00)
		(player_effect_set_max_rotation 0.00 0.50 0.50)
		(sleep 5)
		(sound_impulse_start sound\dialog\x30\che_02 none 1.00)
		(print chief: we'll be fine.)
		(sleep 120)
		(camera_set chief_impact_1b 0)
		(unit_stop_custom_animation chief_x30)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 brace true)
		(object_create_anew halo_closeup_2)
		(camera_set chief_impact_1c 120)
		(player_effect_set_max_rotation 0.00 0.60 0.60)
		(sound_impulse_start sound\dialog\x30\cor_05 none 1.00)
		(sleep
			(-
				(camera_time) 90.00))
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_filter_desaturation_tint 1.00 1.00 1.00)
		(cinematic_screen_effect_set_filter 0.00 1.00 0.00 1.00 true 2.00)
		(cinematic_screen_effect_set_convolution 1 2 0.00 10.00 2.00)
		(sleep 30)
		(fade_out 1.00 1.00 1.00 30)
		(sleep 60)))

(script static void atmos_build
	(begin
		(object_teleport chief_x30 chief_impact_base)
		(unit_stop_custom_animation chief_x30)
		(custom_animation chief_x30 cinematics\animations\chief\x30\x30 escapepod_idle2hand true)))
