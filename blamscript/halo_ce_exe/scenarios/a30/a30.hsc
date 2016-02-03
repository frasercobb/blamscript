(global bool global_dialog_on false)

(global bool global_music_on false)

(global long global_delay_music
	(* 30.00 300.00))

(global long global_delay_music_alt
	(* 30.00 300.00))

(global bool global_mission_won false)

(global bool global_mission_lost false)

(global bool global_one_marine_rescued false)

(global bool global_two_marine_rescued false)

(global bool global_three_marine_rescued false)

(global bool global_four_marine_rescued false)

(global bool global_mission_end_cliff false)

(global bool global_mission_end_rubble false)

(global bool global_mission_end_river false)

(global bool mark_jeep2 false)

(global bool mark_jeep3 false)

(global bool mark_evade false)

(global bool mark_protect false)

(global bool mark_search false)

(global bool mark_search2 false)

(global bool mark_search3 false)

(global long delay_blink
	(* 30.00 5.00))

(global long delay_dawdle
	(* 30.00 15.00))

(global long delay_late
	(* 30.00 45.00))

(global long delay_lost
	(* 30.00 90.00))

(global long delay_fail
	(* 30.00 180.00))

(global long delay_calm
	(* 30.00 3.00))

(global long global_timer 0)

(global bool global_lz_start false)

(global bool global_lz_cship_ledge false)

(global bool global_first_end false)

(global bool test_first_kill false)

(global bool global_cave_start false)

(global bool global_first_wave_1 false)

(global bool global_first_wave_2 false)

(global bool global_first_wave_3 false)

(global bool global_first_wave_4 false)

(global bool global_first_wave_5 false)

(global bool global_first_wave_6 false)

(global bool global_first_wave_1_defend false)

(global bool global_first_wave_2_defend false)

(global bool global_first_wave_3_defend false)

(global bool global_first_wave_4_defend false)

(global bool global_first_wave_5_defend false)

(global bool global_first_wave_6_defend false)

(global bool global_cliff_start false)

(global bool global_cliff_marine_active false)

(global bool global_cliff_welcome false)

(global bool global_cliff_all_killed false)

(global bool global_cliff_end false)

(global bool global_cliff_dead false)

(global bool test_cliff_kill false)

(global bool test_cliff_right false)

(global bool global_rubble_start false)

(global bool global_rubble_welcome false)

(global bool global_rubble_waves_start false)

(global bool global_rubble_all_killed false)

(global bool global_rubble_end false)

(global bool global_rubble_dead false)

(global bool test_rubble_kill false)

(global bool global_rubble_wave_2 false)

(global bool global_rubble_wave_3 false)

(global bool global_rubble_wave_4 false)

(global bool global_rubble_wave_5 false)

(global bool global_rubble_wave_1_defend false)

(global bool global_rubble_wave_2_defend false)

(global bool global_rubble_wave_3_defend false)

(global bool global_rubble_wave_4_defend false)

(global bool global_rubble_wave_5_defend false)

(global short global_rubble_count 0)

(global bool global_river_start false)

(global bool global_river_welcome false)

(global bool global_river_marine_active false)

(global bool global_river_all_killed false)

(global bool global_river_end false)

(global bool global_river_dead false)

(global bool test_river_kill false)

(global bool global_river_wave_1 false)

(global bool global_river_wave_2 false)

(global bool global_river_wave_3 false)

(global bool global_river_wave_1_defend false)

(global bool global_river_wave_2_defend false)

(global bool global_river_wave_3_defend false)

(global bool global_lifeboat_enter false)

(global bool global_first_foehammer_waiting false)

(global bool global_rubble_foehammer_waiting false)

(global bool global_river_foehammer_waiting false)

(global bool global_first_marine_rescued false)

(global bool global_cliff_marine_rescued false)

(global bool global_rubble_marine_rescued false)

(global bool global_river_marine_rescued false)

(global bool mark_lz_banshee false)

(global bool mark_lz_dropship false)

(global bool cont_banshee_kill false)

(global bool play_music_a30_01 false)

(global bool play_music_a30_01_alt false)

(global bool play_music_a30_02 false)

(global bool play_music_a30_02_alt false)

(global bool play_music_a30_03 false)

(global bool play_music_a30_03_alt false)

(global bool play_music_a30_04 false)

(global bool play_music_a30_04_alt false)

(global bool play_music_a30_05 false)

(global bool play_music_a30_05_alt false)

(global bool play_music_a30_06 false)

(global bool play_music_a30_06_alt false)

(global bool play_music_a30_07 false)

(global bool play_music_a30_07_alt false)

(global bool global_extraction false)

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

(script static void temp
	(begin
		(object_create foehammer_rubble)
		(object_create jeep3)
		(unit_enter_vehicle jeep3 foehammer_rubble cargo)
		(object_teleport foehammer_rubble foehammer_rubble_flag)
		(recording_play_and_hover foehammer_rubble foehammer_rubble_in)
		(sleep
			(recording_time foehammer_rubble))
		(unit_exit_vehicle jeep3)))

(script continuous void con_emitter_death
	(begin
		(sleep 90)
		(if
			(volume_test_objects beam_emitter_killer_1 con_emitter_death)
			(damage_object effects\damage effects\shock explosion con_emitter_death))
		(if
			(volume_test_objects beam_emitter_killer_1 con_emitter_death)
			(damage_object effects\damage effects\shock explosion con_emitter_death))
		(if
			(volume_test_objects beam_emitter_killer_2 con_emitter_death)
			(damage_object effects\damage effects\shock explosion con_emitter_death))
		(if
			(volume_test_objects beam_emitter_killer_2 con_emitter_death)
			(damage_object effects\damage effects\shock explosion con_emitter_death))))

(script continuous void save_cave_entrance
	(begin
		(sleep_until
			(volume_test_objects cave_driving
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects cave_driving
					(players))) 120)
		(sleep 300)))

(script continuous void save_cave_exit
	(begin
		(sleep_until
			(volume_test_objects cave_exit
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects cave_exit
					(players))) 120)
		(sleep 300)))

(script continuous void save_cliff_1
	(begin
		(sleep_until
			(volume_test_objects cliff_1
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects cliff_1
					(players))) 120)
		(sleep 300)))

(script continuous void save_cliff_2
	(begin
		(sleep_until
			(volume_test_objects cliff_2
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects cliff_2
					(players))) 120)
		(sleep 300)))

(script continuous void save_rubble_1
	(begin
		(sleep_until
			(volume_test_objects rubble_1
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects rubble_1
					(players))) 120)
		(sleep 300)))

(script continuous void save_rubble_2
	(begin
		(sleep_until
			(volume_test_objects rubble_2
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects rubble_2
					(players))) 120)
		(sleep 300)))

(script continuous void save_river_1
	(begin
		(sleep_until
			(volume_test_objects river_1
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects river_1
					(players))) 120)
		(sleep 300)))

(script continuous void save_river_2
	(begin
		(sleep_until
			(volume_test_objects river_2
				(players)) 15)
		(ai_free_units
			(vehicle_riders jeep))
		(game_save)
		(sleep_until
			(not
				(volume_test_objects river_2
					(players))) 120)
		(sleep 300)))

(script dormant void save_mission_start
	(begin
		(game_save_totally_unsafe)))

(script dormant void save_first_arrival
	(begin
		(game_save)))

(script dormant void save_first_welcome
	(begin
		(game_save)))

(script dormant void save_first_wave_1
	(begin
		(game_save_no_timeout)))

(script dormant void save_first_wave_2
	(begin
		(game_save_no_timeout)))

(script dormant void save_first_wave_3
	(begin
		(game_save_no_timeout)))

(script dormant void save_first_wave_4
	(begin
		(game_save_no_timeout)))

(script dormant void save_first_wave_6
	(begin
		(game_save_no_timeout)))

(script dormant void save_first_waiting
	(begin
		(sleep_until
			(game_safe_to_save) 5)
		(game_save)))

(script dormant void save_cave_floor_enter
	(begin
		(game_save)))

(script dormant void save_cave_bridge
	(begin
		(game_save_totally_unsafe)))

(script dormant void save_cave_floor_exit
	(begin
		(sleep_until
			(game_safe_to_save) 5)
		(game_save)))

(script dormant void save_cliff_arrival
	(begin
		(game_save)))

(script dormant void save_cliff_welcome
	(begin
		(sleep_until
			(game_safe_to_save) 5)
		(game_save_no_timeout)))

(script dormant void save_cliff_rescued
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_arrival
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_welcome
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_wave_1
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_wave_2
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_wave_3
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_wave_4
	(begin
		(game_save_no_timeout)))

(script dormant void save_rubble_rescued
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_arrival
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_welcome
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_wave_1
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_wave_2
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_wave_3
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_wave_4
	(begin
		(game_save_no_timeout)))

(script dormant void save_river_rescued
	(begin
		(game_save_no_timeout)))

(script static void music_a30_01
	(begin
		(sound_looping_start levels\a30\music\a30_01 none 1.00)
		(sleep_until
			(or play_music_a30_01_alt
				(not play_music_a30_01)) 1 global_delay_music)
		(if play_music_a30_01_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_01 true)
				(sleep_until
					(not play_music_a30_01) 1 global_delay_music)
				(set play_music_a30_01_alt false)))
		(set play_music_a30_01 false)
		(sound_looping_stop levels\a30\music\a30_01)))

(script static void music_a30_02
	(begin
		(sound_looping_start levels\a30\music\a30_02 none 1.00)
		(sleep_until
			(or play_music_a30_02_alt
				(not play_music_a30_02)) 1 global_delay_music)
		(if play_music_a30_02_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_02 true)
				(sleep_until
					(not play_music_a30_02) 1 global_delay_music)
				(set play_music_a30_02_alt false)))
		(set play_music_a30_02 false)
		(sound_looping_stop levels\a30\music\a30_02)))

(script static void music_a30_03
	(begin
		(sound_looping_start levels\a30\music\a30_03 none 1.00)
		(sleep_until
			(or play_music_a30_03_alt
				(not play_music_a30_03)) 1 global_delay_music)
		(if play_music_a30_03_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_03 true)
				(sleep_until
					(not play_music_a30_03) 1 global_delay_music)
				(set play_music_a30_03_alt false)))
		(set play_music_a30_03 false)
		(sound_looping_stop levels\a30\music\a30_03)))

(script static void music_a30_04
	(begin
		(sound_looping_start levels\a30\music\a30_04 none 1.00)
		(sleep_until
			(or play_music_a30_04_alt
				(not play_music_a30_04)) 1 global_delay_music)
		(if play_music_a30_04_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_04 true)
				(sleep_until
					(not play_music_a30_04) 1 global_delay_music)
				(set play_music_a30_04_alt false)))
		(set play_music_a30_04 false)
		(sound_looping_stop levels\a30\music\a30_04)))

(script static void music_a30_05
	(begin
		(sound_looping_start levels\a30\music\a30_05 none 1.00)
		(sleep_until
			(or play_music_a30_05_alt
				(not play_music_a30_05)) 1 global_delay_music)
		(if play_music_a30_05_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_05 true)
				(sleep_until
					(not play_music_a30_05) 1 global_delay_music)
				(set play_music_a30_05_alt false)))
		(set play_music_a30_05 false)
		(sound_looping_stop levels\a30\music\a30_05)))

(script static void music_a30_06
	(begin
		(sound_looping_start levels\a30\music\a30_06 none 1.00)
		(sleep_until
			(or play_music_a30_06_alt
				(not play_music_a30_06)) 1 global_delay_music)
		(if play_music_a30_06_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_06 true)
				(sleep_until
					(not play_music_a30_06) 1 global_delay_music)
				(set play_music_a30_06_alt false)))
		(set play_music_a30_06 false)
		(sound_looping_stop levels\a30\music\a30_06)))

(script static void music_a30_07
	(begin
		(sound_looping_start levels\a30\music\a30_07 none 1.00)
		(sleep_until
			(or play_music_a30_07_alt
				(not play_music_a30_07)) 1 global_delay_music)
		(if play_music_a30_07_alt
			(begin
				(sound_looping_set_alternate levels\a30\music\a30_07 true)
				(sleep_until
					(not play_music_a30_07) 1 global_delay_music)
				(set play_music_a30_07_alt false)))
		(set play_music_a30_07 false)
		(sound_looping_stop levels\a30\music\a30_07)))

(script dormant void music_a30
	(begin
		(sleep_until play_music_a30_01 1) music_a30
		(sleep_until play_music_a30_02 1) music_a30
		(sleep_until play_music_a30_03 1) music_a30
		(sleep_until play_music_a30_04 1) music_a30
		(sleep_until play_music_a30_05 1) music_a30
		(sleep_until play_music_a30_06 1) music_a30
		(sleep_until play_music_a30_07 1) music_a30))

(script dormant void objectives_a30
	(begin
		(sleep_until mark_evade 1)
		(hud_set_objective_text dia_evade)
		(show_hud_help_text true)
		(hud_set_help_text obj_evade)
		(sleep 120)
		(show_hud_help_text false)
		(sleep_until mark_protect 1)
		(hud_set_objective_text dia_protect)
		(show_hud_help_text true)
		(hud_set_help_text obj_protect)
		(sleep 120)
		(show_hud_help_text false)
		(sleep_until mark_search 1)
		(hud_set_objective_text dia_search1)
		(show_hud_help_text true)
		(hud_set_help_text obj_search)
		(sleep 120)
		(show_hud_help_text false)
		(sleep_until mark_search2 1)
		(hud_set_objective_text dia_search2)
		(show_hud_help_text true)
		(hud_set_help_text obj_search2)
		(sleep 120)
		(show_hud_help_text false)
		(sleep_until mark_search3 1)
		(hud_set_objective_text dia_search3)
		(show_hud_help_text true)
		(hud_set_help_text obj_search3)
		(sleep 120)
		(show_hud_help_text false)))

(script dormant void dialog_first_wave_4_alert
	(begin
		(if
			(< 0
				(ai_living_count first_marine))
			(sound_impulse_start sound\dialog\a30\a30_210_fitzgerald none 1.00))))

(script dormant void dialog_one_rescued_prompt
	(begin
		(sleep 1)
		(sound_impulse_start sound\dialog\a30\a30_860_cortana none 1.00)))

(script dormant void dialog_two_rescued_prompt
	(begin
		(sleep 1)
		(if
			(not global_cliff_marine_rescued)
			(begin
				(sound_impulse_start sound\dialog\a30\a30_870_cortana none 1.00))
			(if
				(not global_river_marine_rescued)
				(begin
					(sound_impulse_start sound\dialog\a30\a30_880_cortana none 1.00))
				(if
					(not global_rubble_marine_rescued)
					(begin
						(sound_impulse_start sound\dialog\a30\a30_890_cortana none 1.00)))))
		(sleep -1)
		(sound_impulse_start sound\dialog\a30\a30_900_cortana none 1.00)))

(script dormant void cutscene_one_rescued_cliff
	(begin
		(sound_impulse_start sound\dialog\a30\a30_930_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_930_pilot))
		(sound_impulse_start sound\dialog\a30\a30_940_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_940_cortana))
		(sound_impulse_start sound\dialog\a30\a30_950_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_950_pilot))
		(sound_impulse_start sound\dialog\a30\a30_960_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_960_pilot))
		(sound_impulse_start sound\dialog\a30\a30_970_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_970_pilot))
		(sound_impulse_start sound\dialog\a30\a30_980_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_980_pilot))
		(sound_impulse_start sound\dialog\a30\a30_990_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_990_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1000_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1000_cortana))))

(script dormant void cutscene_one_rescued_rubble
	(begin
		(sound_impulse_start sound\dialog\a30\a30_930_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_930_pilot))
		(sound_impulse_start sound\dialog\a30\a30_940_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_940_cortana))
		(sound_impulse_start sound\dialog\a30\a30_950_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_950_pilot))
		(sound_impulse_start sound\dialog\a30\a30_960_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_960_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1030_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1030_pilot))
		(sound_impulse_start sound\dialog\a30\a30_980_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_980_pilot))
		(sound_impulse_start sound\dialog\a30\a30_990_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_990_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1000_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1000_cortana))))

(script dormant void cutscene_one_rescued_river
	(begin
		(sound_impulse_start sound\dialog\a30\a30_930_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_930_pilot))
		(sound_impulse_start sound\dialog\a30\a30_940_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_940_cortana))
		(sound_impulse_start sound\dialog\a30\a30_950_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_950_pilot))
		(sound_impulse_start sound\dialog\a30\a30_960_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_960_pilot))
		(sound_impulse_start sound\dialog\a30\a30_970_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_970_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1040_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1040_pilot))
		(sound_impulse_start sound\dialog\a30\a30_990_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_990_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1000_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1000_cortana))))

(script dormant void dialog_one_rescued_killed
	(begin
		(sound_impulse_start sound\dialog\a30\a30_1050_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1050_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1060_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1060_cortana))
		(sound_impulse_start sound\dialog\a30\a30_1070_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1070_pilot))))

(script dormant void dialog_two_rescued
	(begin
		(sound_impulse_start sound\dialog\a30\a30_1080_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1080_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1090_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1090_cortana))
		(sound_impulse_start sound\dialog\a30\a30_1100_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1100_cortana))))

(script dormant void dialog_two_rescued_killed
	(begin
		(sound_impulse_start sound\dialog\a30\a30_1110_pilot none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1110_pilot))
		(sound_impulse_start sound\dialog\a30\a30_1120_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1120_cortana))))

(script continuous void gotohell_beatch
	(begin
		(sleep_until
			(volume_test_objects gotohell
				(players)) delay_dawdle)
		(if
			(volume_test_objects gotohell
				(players))
			(player_enable_input false))
		(sleep_until
			(not
				(volume_test_objects gotohell
					(players))) delay_dawdle)
		(if
			(not
				(volume_test_objects gotohell
					(players)))
			(player_enable_input true))))

(script continuous void tutorial_sniper
	(begin
		(if
			(or
				(game_is_cooperative)
				(not
					(=
						(game_difficulty_get) normal))
				(unit_solo_player_integrated_night_vision_is_active))
			(sleep -1))
		(sleep_until
			(unit_has_weapon_readied tutorial_sniper weapons\sniper rifle\sniper rifle) 1)
		(show_hud_help_text true)
		(enable_hud_help_flash true)
		(hud_set_help_text tutorial_sniper_1)
		(sleep_until
			(or
				(not
					(unit_has_weapon_readied tutorial_sniper weapons\sniper rifle\sniper rifle))
				(unit_solo_player_integrated_night_vision_is_active)) 1)
		(player_action_test_reset)
		(enable_hud_help_flash false)
		(show_hud_help_text false)))

(script static void mission_extraction_cliff_skip
	(begin
		(ai false)
		(object_beautify foehammer_cliff true)
		(camera_control true)
		(cinematic_start)
		(camera_set cliff_extraction_1 0)
		(object_teleport mission_extraction_cliff_skip cliff_hide_flag)
		(fade_in 0.00 0.00 0.00 15)
		(sound_looping_start sound\sinomatixx\a30_ext_cliff_foley none 1.00)
		(sleep 2)
		(sound_looping_start sound\sinomatixx\a30_ext_cliff_music none 1.00)
		(sleep 13)
		(vehicle_hover foehammer_cliff false)
		(recording_play_and_delete foehammer_cliff foehammer_cliff_out)
		(camera_set cliff_extraction_2 500)
		(sleep 100)
		(sound_impulse_start sound\dialog\a30\a30_extract_060_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_060_cortana))
		(print cortana done)
		(sleep
			(-
				(camera_time) 30.00))
		(fade_out 0.00 0.00 0.00 30)
		(sleep 77)))

(script static void cliff_build
	(begin
		(switch_bsp 1)
		(game_speed 5.00)
		(object_destroy foehammer_cliff)
		(object_create foehammer_cliff)
		(unit_set_enterable_by_player foehammer_cliff false)
		(object_teleport foehammer_cliff foehammer_cliff_flag)
		(recording_play_and_hover foehammer_cliff foehammer_cliff_in)
		(sleep
			(recording_time foehammer_cliff))
		(game_speed 1.00)
		(print foehammer done)))

(script dormant void mission_extraction_cliff
	(begin
		(object_create foehammer_cliff)
		(unit_set_enterable_by_player foehammer_cliff false)
		(object_teleport foehammer_cliff foehammer_cliff_flag)
		(recording_play_and_hover foehammer_cliff foehammer_cliff_in)
		(sound_impulse_start sound\dialog\a30\a30_extract_010_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_010_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_020_pilot none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_020_pilot)))
		(sound_impulse_start sound\dialog\a30\a30_extract_030_cortana none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_030_cortana)))
		(sound_impulse_start sound\dialog\a30\a30_extract_040_cortana none 1.00)
		(sleep
			(+ 60.00
				(sound_impulse_time sound\dialog\a30\a30_extract_040_cortana)))
		(ai_migrate cliff_marine cliff_marine/waiting_marine)
		(sleep
			(recording_time foehammer_cliff))
		(sound_impulse_start sound\dialog\a30\a30_1141_cortana none 1.00)
		(activate_team_nav_point_object default_red player foehammer_cliff 1.00)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderlb)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderrb)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderlm)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderrm)
		(unit_set_enterable_by_player foehammer_cliff true)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1141_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_050_pilot none 1.00)
		(set global_timer
			(+
				(game_time) delay_lost))
		(if
			(game_is_cooperative)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_cliff p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_cliff p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_cliff p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_cliff p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost))
		(deactivate_team_nav_point_object player foehammer_cliff)
		(player_enable_input false)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 30)
		(ai_erase_all)
		(vehicle_load_magic foehammer_cliff p-riderlf mission_extraction_cliff)
		(vehicle_load_magic foehammer_cliff p-riderrf mission_extraction_cliff)
		(if mission_extraction_cliff mission_extraction_cliff) mission_extraction_cliff
		(game_won)))

(script static void mission_extraction_rubble_skip
	(begin
		(ai false)
		(object_beautify foehammer_rubble true)
		(camera_control true)
		(cinematic_start)
		(camera_set rubble_extraction_1 0)
		(object_teleport mission_extraction_rubble_skip rubble_hide_flag)
		(fade_in 0.00 0.00 0.00 15)
		(sound_looping_start sound\sinomatixx\a30_ext_rubble_foley none 1.00)
		(sleep 8)
		(sound_looping_start sound\sinomatixx\a30_ext_rubble_music none 1.00)
		(sleep 7)
		(vehicle_hover foehammer_rubble false)
		(recording_play_and_delete foehammer_rubble foehammer_rubble_out)
		(camera_set rubble_extraction_2 350)
		(sleep 60)
		(sound_impulse_start sound\dialog\a30\a30_extract_060_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_060_cortana))
		(print cortana done)
		(sleep
			(-
				(camera_time) 30.00))
		(fade_out 0.00 0.00 0.00 30)
		(sleep 65)))

(script static void rubble_build
	(begin
		(switch_bsp 1)
		(game_speed 5.00)
		(object_destroy foehammer_rubble)
		(object_create foehammer_rubble)
		(unit_set_enterable_by_player foehammer_rubble false)
		(object_teleport foehammer_rubble foehammer_rubble_flag)
		(recording_play_and_hover foehammer_rubble foehammer_rubble_in)
		(sleep
			(recording_time foehammer_rubble))
		(game_speed 1.00)
		(print foehammer done)))

(script dormant void mission_extraction_rubble
	(begin
		(object_create foehammer_rubble)
		(unit_set_enterable_by_player foehammer_rubble false)
		(object_teleport foehammer_rubble foehammer_rubble_flag)
		(recording_play_and_hover foehammer_rubble foehammer_rubble_in)
		(sound_impulse_start sound\dialog\a30\a30_extract_010_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_010_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_020_pilot none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_020_pilot)))
		(sound_impulse_start sound\dialog\a30\a30_extract_030_cortana none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_030_cortana)))
		(sound_impulse_start sound\dialog\a30\a30_extract_040_cortana none 1.00)
		(sleep
			(+ 60.00
				(sound_impulse_time sound\dialog\a30\a30_extract_040_cortana)))
		(ai_migrate rubble_marine rubble_marine/waiting_marine)
		(sleep
			(recording_time foehammer_rubble))
		(sound_impulse_start sound\dialog\a30\a30_1141_cortana none 1.00)
		(activate_team_nav_point_object default_red player foehammer_rubble 1.00)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderlb)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderrb)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderlm)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderrm)
		(unit_set_enterable_by_player foehammer_rubble true)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1141_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_050_pilot none 1.00)
		(set global_timer
			(+
				(game_time) delay_lost))
		(if
			(game_is_cooperative)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_rubble p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_rubble p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_rubble p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_rubble p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost))
		(deactivate_team_nav_point_object player foehammer_rubble)
		(player_enable_input false)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 30)
		(ai_erase_all)
		(vehicle_load_magic foehammer_rubble p-riderlf mission_extraction_rubble)
		(vehicle_load_magic foehammer_rubble p-riderrf mission_extraction_rubble)
		(if mission_extraction_rubble mission_extraction_rubble) mission_extraction_rubble
		(game_won)))

(script static void mission_extraction_river_skip
	(begin
		(ai false)
		(object_beautify foehammer_river true)
		(camera_control true)
		(cinematic_start)
		(camera_set river_extraction_1 0)
		(object_teleport mission_extraction_river_skip river_hide_flag)
		(fade_in 0.00 0.00 0.00 15)
		(sound_looping_start sound\sinomatixx\a30_ext_river_foley none 1.00)
		(sleep 8)
		(sound_looping_start sound\sinomatixx\a30_ext_river_music none 1.00)
		(sleep 7)
		(vehicle_hover foehammer_river false)
		(recording_play_and_delete foehammer_river foehammer_river_out)
		(camera_set river_extraction_2 600)
		(sleep 200)
		(sound_impulse_start sound\dialog\a30\a30_extract_060_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_060_cortana))
		(print cortana done)
		(sleep
			(-
				(camera_time) 30.00))
		(fade_out 0.00 0.00 0.00 30)
		(sleep 144)))

(script static void river_build
	(begin
		(switch_bsp 1)
		(game_speed 5.00)
		(object_destroy foehammer_river)
		(object_create foehammer_river)
		(unit_set_enterable_by_player foehammer_river false)
		(object_teleport foehammer_river foehammer_river_flag)
		(recording_play_and_hover foehammer_river foehammer_river_in)
		(sleep
			(recording_time foehammer_river))
		(game_speed 1.00)
		(print foehammer done)))

(script dormant void mission_extraction_river
	(begin
		(object_create foehammer_river)
		(unit_set_enterable_by_player foehammer_river false)
		(object_teleport foehammer_river foehammer_river_flag)
		(recording_play_and_hover foehammer_river foehammer_river_in)
		(sound_impulse_start sound\dialog\a30\a30_extract_010_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_extract_010_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_020_pilot none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_020_pilot)))
		(sound_impulse_start sound\dialog\a30\a30_extract_030_cortana none 1.00)
		(sleep
			(+ 30.00
				(sound_impulse_time sound\dialog\a30\a30_extract_030_cortana)))
		(sound_impulse_start sound\dialog\a30\a30_extract_040_cortana none 1.00)
		(sleep
			(+ 60.00
				(sound_impulse_time sound\dialog\a30\a30_extract_040_cortana)))
		(ai_migrate river_marine river_marine/waiting_marine)
		(sleep
			(recording_time foehammer_river))
		(sound_impulse_start sound\dialog\a30\a30_1141_cortana none 1.00)
		(activate_team_nav_point_object default_red player foehammer_river 1.00)
		(ai_go_to_vehicle river_marine foehammer_river riderlb)
		(ai_go_to_vehicle river_marine foehammer_river riderrb)
		(ai_go_to_vehicle river_marine foehammer_river riderlm)
		(ai_go_to_vehicle river_marine foehammer_river riderrm)
		(unit_set_enterable_by_player foehammer_river true)
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_1141_cortana))
		(sound_impulse_start sound\dialog\a30\a30_extract_050_pilot none 1.00)
		(set global_timer
			(+
				(game_time) delay_lost))
		(if
			(game_is_cooperative)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_river p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_river p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost)
			(sleep_until
				(or
					(vehicle_test_seat_list foehammer_river p-riderlf
						(players))
					(vehicle_test_seat_list foehammer_river p-riderrf
						(players))
					(< global_timer
						(game_time))) 1 delay_lost))
		(deactivate_team_nav_point_object player foehammer_river)
		(player_enable_input false)
		(fade_out 0.00 0.00 0.00 15)
		(sleep 30)
		(ai_erase_all)
		(vehicle_load_magic foehammer_river p-riderlf mission_extraction_river)
		(vehicle_load_magic foehammer_river p-riderrf mission_extraction_river)
		(if mission_extraction_river mission_extraction_river) mission_extraction_river
		(game_won)))

(script dormant void mission_lz_banshee
	(begin
		(object_create pass_banshee_1)
		(unit_set_enterable_by_player pass_banshee_1 false)
		(ai_place lz_banshee/pilot_1)
		(vehicle_load_magic pass_banshee_1 driver
			(ai_actors lz_banshee/pilot_1))
		(object_teleport pass_banshee_1 lz_banshee_simple_flag_1)
		(ai_command_list lz_banshee/pilot_1 lz_banshee_1)
		(object_create pass_banshee_2)
		(unit_set_enterable_by_player pass_banshee_2 false)
		(ai_place lz_banshee/pilot_2)
		(vehicle_load_magic pass_banshee_2 driver
			(ai_actors lz_banshee/pilot_2))
		(object_teleport pass_banshee_2 lz_banshee_simple_flag_2)
		(objects_predict pass_banshee_1)
		(ai_command_list lz_banshee/pilot_2 lz_banshee_2)
		(sleep 90)
		(ai_magically_see_players lz_banshee)
		(sleep_until
			(or
				(<
					(ai_strength lz_banshee) 0.60)
				(volume_test_objects pass_mouth
					(players))) 1 delay_fail)
		(sleep 90)
		(ai_command_list lz_banshee/pilot_1 lz_banshee_3)
		(ai_command_list lz_banshee/pilot_2 lz_banshee_3)
		(set mark_lz_banshee true)))

(script dormant void mission_lz_dropship
	(begin
		(object_create lz_cship)
		(unit_close lz_cship)
		(ai_place lz_search/cship_toon)
		(ai_braindead lz_search true)
		(vehicle_load_magic lz_cship passenger
			(ai_actors lz_search/cship_toon))
		(object_teleport lz_cship lz_cship_flag)
		(recording_play_and_hover lz_cship lz_cship_enter)
		(objects_predict lz_cship)
		(sleep
			(max 0.00
				(-
					(recording_time lz_cship) 750.00)))
		(ai_conversation lz_cship_enter)
		(sleep_until
			(< 4
				(ai_conversation_status lz_cship_enter)) 1)
		(sleep
			(recording_time lz_cship))
		(if
			(volume_test_objects lz_bridge
				(players))
			(begin
				(ai_conversation lz_cship_danger))
			(if
				(volume_test_objects lz_landing
					(players))
				(begin
					(ai_conversation lz_cship_danger))
				(if true
					(begin
						(ai_conversation lz_cship_safe)))))
		(set play_music_a30_01_alt true)
		(vehicle_hover lz_cship false)
		(recording_play_and_hover lz_cship lz_cship_landing_drop)
		(sleep
			(max 0.00
				(-
					(recording_time lz_cship) 60.00)))
		(unit_open lz_cship)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload lz_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload lz_cship cd-passengerr04)
				(sleep 5)))
		(ai_braindead lz_search false)
		(sleep 120)
		(vehicle_hover lz_cship false)
		(recording_play_and_delete lz_cship lz_cship_landing_exit)
		(sleep 30)
		(unit_close lz_cship)
		(object_set_collideable lz_cship false)
		(set play_music_a30_01 false)
		(sleep_until
			(=
				(ai_living_count lz_search) 0) 1)
		(set mark_lz_dropship true)))

(script dormant void mission_lz
	(begin
		(sleep_until
			(or
				(volume_test_objects plant_trigger
					(players))
				(volume_test_objects lz_bridge
					(players))) 1 delay_dawdle)
		(sleep_until
			(or
				(< 4
					(ai_conversation_status intro_1))
				(volume_test_objects lz_bridge
					(players))) 1)
		(ai_conversation lz_prompt_1)
		(sleep_until
			(or
				(< 4
					(ai_conversation_status lz_prompt_1))
				(volume_test_objects lz_bridge
					(players))) 1)
		(set mark_evade true)
		(set play_music_a30_01 true)
		(sleep_until
			(or
				(volume_test_objects plant_trigger
					(players))
				(volume_test_objects lz_bridge
					(players))) 1)
		(if
			(volume_test_objects plant_trigger
				(players))
			(ai_conversation flavor_plant))
		(if
			(volume_test_objects plant_trigger
				(players))
			(sleep_until
				(or
					(< 4
						(ai_conversation_status flavor_plant))
					(volume_test_objects lz_bridge
						(players))) 1))
		(wake mission_lz_dropship)
		(sleep_until
			(or mark_lz_dropship
				(volume_test_objects lz_ledge_safe
					(players))) 1)
		(wake mission_lz_banshee)
		(sleep_until
			(or mark_lz_banshee
				(volume_test_objects lz_ledge
					(players))) 1)
		(ai_migrate lz_search/cship_toon lz_search/search_low)
		(sleep_until
			(volume_test_objects lz_pass
				(players)) 1)
		(ai_place lz_search/pass_grunt)
		(ai_place lz_search/pass_elite)
		(objects_predict
			(ai_actors lz_search))))

(script dormant void obj_first_abandon
	(begin
		(set mark_protect true)
		(sleep_until
			(or global_first_end
				(and
					(< 0 obj_first_abandon)
					(not
						(or
							(volume_test_objects first_structure_1
								(players))
							(volume_test_objects first_structure_2
								(players)))))) 15)
		(if
			(not global_first_end)
			(ai_conversation first_abandon))))

(script dormant void obj_first_all_killed
	(begin
		(sleep_until
			(or global_first_end
				(< 0
					(ai_living_count first_marine))) 15)
		(sleep_until
			(or global_first_end
				(= 0
					(ai_living_count first_marine))))
		(sleep 60)
		(if
			(not global_first_end)
			(begin
				(sleep_until
					(game_safe_to_speak) 1 delay_dawdle)
				(ai_conversation first_all_killed)))))

(script dormant void mission_first_defend
	(begin
		(sleep_until global_first_wave_1 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_1_attack_toon)
		(set global_first_wave_1_defend true)
		(sleep_until global_first_wave_2 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_2_attack_toon)
		(set global_first_wave_2_defend true)
		(sleep_until global_first_wave_3 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_3_attack_toon)
		(set global_first_wave_3_defend true)
		(sleep_until global_first_wave_4 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_4_attack_toon)
		(set global_first_wave_4_defend true)
		(sleep_until global_first_wave_5 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_5_attack_toon)
		(set global_first_wave_5_defend true)
		(sleep_until global_first_wave_6 5)
		(sleep_until
			(volume_test_objects_all first_defend
				(players)) 15)
		(ai_retreat first_wave/wave_6_attack_toon)
		(set global_first_wave_6_defend true)))

(script dormant void mission_first_retreat
	(begin
		(sleep_until global_first_wave_1_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_1_defend_toon)
		(sleep_until global_first_wave_2_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_2_defend_toon)
		(sleep_until global_first_wave_3_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_3_defend_toon)
		(sleep_until global_first_wave_4_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_4_defend_toon)
		(sleep_until global_first_wave_5_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_5_defend_toon)
		(sleep_until global_first_wave_6_defend 5)
		(sleep_until
			(volume_test_objects_all first_retreat
				(players)) 15)
		(ai_retreat first_wave/wave_6_defend_toon)))

(script dormant void mission_first_marine
	(begin
		(sleep_until
			(or global_first_wave_5
				(and
					(!=
						(game_difficulty_get) normal) global_first_wave_2)
				(and
					(> 0.70
						(ai_living_fraction first_marine/right_toon))
					(> 0.70
						(ai_living_fraction first_marine/left_toon)))
				(or
					(> 0.30
						(ai_living_fraction first_marine/right_toon))
					(> 0.30
						(ai_living_fraction first_marine/left_toon)))) 15)
		(ai_defend first_marine)
		(sleep 90)
		(wake mission_first_defend)
		(sleep 90)
		(sleep_until
			(or
				(and
					(!=
						(game_difficulty_get) normal) global_first_wave_3) global_first_wave_6
				(and
					(> 0.30
						(ai_living_fraction first_marine/right_toon))
					(> 0.30
						(ai_living_fraction first_marine/left_toon)))) 15)
		(sleep 90)
		(ai_retreat first_marine)
		(if global_first_end
			(sleep -1))
		(ai_conversation first_retreat)
		(sleep 45)
		(wake mission_first_retreat)
		(sleep_until
			(= 0.00
				(ai_living_fraction first_marine)) 15)
		(if global_first_end
			(sleep -1))
		(ai_maneuver_enable first_wave false)
		(ai_follow_target_players first_wave)))

(script dormant void mission_first_wave_1
	(begin
		(object_create pass_cship)
		(ai_place first_wave/wave_1_lz_toon)
		(objects_predict
			(ai_actors first_wave))
		(ai_braindead first_wave/wave_1_lz_toon true)
		(vehicle_load_magic pass_cship passenger
			(ai_actors first_wave/wave_1_lz_toon))
		(object_teleport pass_cship pass_cship_flag)
		(vehicle_hover pass_cship true)
		(sleep_until
			(volume_test_objects first_trigger_1
				(players)) 5)
		(sleep 90)
		(ai_braindead first_wave/wave_1_lz_toon false)
		(ai_playfight first_wave true)
		(ai_playfight first_marine true)
		(begin_random
			(begin
				(vehicle_unload pass_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload pass_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_1 true)
		(sleep 60)
		(vehicle_hover pass_cship false)
		(recording_play_and_delete pass_cship back_cship_exit)
		(sleep 30)
		(unit_close pass_cship)
		(object_set_collideable pass_cship false)
		(if
			(not
				(volume_test_objects first_back_lz
					(players)))
			(ai_retreat first_wave/wave_1_lz_grunt))
		(sleep 90)
		(if
			(not
				(volume_test_objects first_back_lz
					(players)))
			(ai_retreat first_wave/wave_1_lz_toon))
		(sleep_until
			(not
				(volume_test_objects first_arrival
					(players))) 15)
		(ai_playfight first_wave false)
		(ai_playfight first_marine false)
		(ai_migrate first_wave/wave_1_lz_grunt first_wave/wave_1_attack)
		(sleep 240)
		(ai_migrate first_wave/wave_1_lz_elite first_wave/wave_1_attack)))

(script dormant void mission_first_wave_2
	(begin
		(object_create fort_cship)
		(unit_close fort_cship)
		(ai_place first_wave/wave_2_lz_toon)
		(ai_disregard
			(ai_actors first_wave/wave_2_lz_toon) true)
		(ai_braindead first_wave/wave_2_lz_toon true)
		(vehicle_load_magic fort_cship passenger
			(ai_actors first_wave/wave_2_lz_toon))
		(object_teleport fort_cship fort_cship_flag)
		(recording_play_and_hover fort_cship fort_cship_enter)
		(objects_predict fort_cship)
		(sleep 30)
		(sleep
			(recording_time fort_cship))
		(if
			(>
				(ai_living_count first_marine) 1)
			(sound_impulse_start sound\dialog\a30\a30_210_bisenti none 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_210_bisenti))
		(ai_disregard
			(ai_actors first_wave/wave_2_lz_toon) false)
		(ai_magically_see_encounter first_marine first_wave)
		(ai_migrate first_marine/base_toon first_marine/base_fort)
		(ai_migrate first_marine/left_toon first_marine/left_fort)
		(ai_migrate first_marine/right_toon first_marine/right_fort)
		(sleep_until
			(not
				(volume_test_objects first_fort_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover fort_cship false)
		(recording_play_and_hover fort_cship fort_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time fort_cship) 60.00)))
		(unit_open fort_cship)
		(ai_braindead first_wave/wave_2_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload fort_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_2 true)
		(sleep 120)
		(sleep_until
			(not
				(volume_test_objects first_structure_back
					(players))) 15 delay_dawdle)
		(vehicle_hover fort_cship false)
		(recording_play_and_delete fort_cship fort_cship_exit)
		(sleep 30)
		(unit_close fort_cship)
		(object_set_collideable fort_cship false)
		(sleep_until
			(not
				(volume_test_objects first_fort_lz
					(players))) 15)
		(ai_migrate first_wave/wave_2_grunt first_wave/wave_2_attack_left)
		(ai_migrate first_wave/wave_2_jackal first_wave/wave_2_attack_right)
		(ai_magically_see_players first_wave)
		(ai_magically_see_encounter first_wave first_marine)
		(sleep 240)
		(ai_migrate first_wave/wave_2_lz_toon first_wave/wave_2_attack_left)))

(script dormant void mission_first_wave_3
	(begin
		(object_create pipe_cship)
		(unit_close pipe_cship)
		(ai_place first_wave/wave_3_lz_toon)
		(ai_disregard
			(ai_actors first_wave/wave_3_lz_toon) true)
		(ai_braindead first_wave/wave_3_lz_toon true)
		(vehicle_load_magic pipe_cship passenger
			(ai_actors first_wave/wave_3_lz_toon))
		(object_teleport pipe_cship pipe_cship_flag)
		(recording_play_and_hover pipe_cship pipe_cship_enter)
		(objects_predict pipe_cship)
		(sleep
			(recording_time pipe_cship))
		(if
			(>
				(ai_living_count first_marine) 1)
			(sound_impulse_start sound\dialog\a30\a30_210_fitzgerald none 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_210_fitzgerald))
		(ai_disregard
			(ai_actors first_wave/wave_3_lz_toon) false)
		(ai_magically_see_encounter first_marine first_wave)
		(ai_migrate first_marine/base_toon first_marine/base_pipe)
		(ai_migrate first_marine/left_toon first_marine/left_pipe)
		(ai_migrate first_marine/right_toon first_marine/right_pipe)
		(sleep_until
			(not
				(volume_test_objects first_pipe_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover pipe_cship false)
		(recording_play_and_hover pipe_cship pipe_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time pipe_cship) 60.00)))
		(unit_open pipe_cship)
		(ai_braindead first_wave/wave_3_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload pipe_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_3 true)
		(sleep 120)
		(sleep_until
			(not
				(volume_test_objects first_structure_back
					(players))) 15 delay_dawdle)
		(vehicle_hover pipe_cship false)
		(recording_play_and_delete pipe_cship pipe_cship_exit)
		(sleep_until
			(not
				(volume_test_objects first_pipe_lz
					(players))) 15)
		(sleep 30)
		(unit_close pipe_cship)
		(object_set_collideable pipe_cship false)
		(ai_migrate first_wave/wave_3_grunt first_wave/wave_3_attack_left)
		(ai_magically_see_players first_wave)
		(ai_magically_see_encounter first_wave first_marine)
		(sleep 240)
		(ai_migrate first_wave/wave_3_lz_toon first_wave/wave_3_attack_right)))

(script dormant void mission_first_wave_4
	(begin
		(object_create back_cship)
		(unit_close back_cship)
		(ai_place first_wave/wave_4_lz_toon)
		(ai_disregard
			(ai_actors first_wave/wave_4_lz_toon) true)
		(ai_braindead first_wave/wave_4_lz_toon true)
		(vehicle_load_magic back_cship passenger
			(ai_actors first_wave/wave_4_lz_toon))
		(object_teleport back_cship back_cship_flag)
		(recording_play_and_hover back_cship back_cship_enter)
		(objects_predict back_cship)
		(sleep
			(recording_time back_cship))
		(if
			(>
				(ai_living_count first_marine) 1)
			(sound_impulse_start sound\dialog\a30\a30_220_bisenti none 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_220_bisenti))
		(ai_disregard
			(ai_actors first_wave/wave_4_lz_toon) false)
		(ai_magically_see_encounter first_marine first_wave)
		(ai_migrate first_marine/base_toon first_marine/base_back)
		(ai_migrate first_marine/left_toon first_marine/left_back)
		(ai_migrate first_marine/right_toon first_marine/right_back)
		(sleep_until
			(not
				(volume_test_objects first_back_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover back_cship false)
		(recording_play_and_hover back_cship back_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time back_cship) 60.00)))
		(unit_open back_cship)
		(ai_braindead first_wave/wave_4_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload back_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload back_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_4 true)
		(sleep 120)
		(sleep_until
			(not
				(volume_test_objects first_structure_front
					(players))) 15 delay_dawdle)
		(vehicle_hover back_cship false)
		(recording_play_and_delete back_cship back_cship_exit)
		(sleep 30)
		(unit_close back_cship)
		(object_set_collideable back_cship false)
		(sleep_until
			(not
				(volume_test_objects first_back_lz
					(players))) 15)
		(ai_migrate first_wave/wave_4_grunt first_wave/wave_4_attack)
		(ai_magically_see_players first_wave)
		(ai_magically_see_encounter first_wave first_marine)
		(sleep 240)
		(ai_migrate first_wave/wave_4_lz_toon first_wave/wave_4_attack)))

(script dormant void mission_first_wave_5
	(begin
		(object_create pipe_cship)
		(unit_close pipe_cship)
		(ai_place first_wave/wave_5_lz_toon)
		(ai_disregard
			(ai_actors first_wave/wave_5_lz_toon) true)
		(ai_braindead first_wave/wave_5_lz_toon true)
		(vehicle_load_magic pipe_cship passenger
			(ai_actors first_wave/wave_5_lz_toon))
		(object_teleport pipe_cship pipe_cship_flag)
		(recording_play_and_hover pipe_cship pipe_cship_enter)
		(objects_predict pipe_cship)
		(sleep
			(recording_time pipe_cship))
		(ai_disregard
			(ai_actors first_wave/wave_5_lz_toon) false)
		(ai_magically_see_encounter first_marine first_wave)
		(sleep_until
			(not
				(volume_test_objects first_pipe_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover pipe_cship false)
		(recording_play_and_hover pipe_cship pipe_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time pipe_cship) 60.00)))
		(unit_open pipe_cship)
		(ai_braindead first_wave/wave_5_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload pipe_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload pipe_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_5 true)
		(sleep 120)
		(sleep_until
			(not
				(volume_test_objects first_structure_back
					(players))) 15 delay_dawdle)
		(vehicle_hover pipe_cship false)
		(recording_play_and_delete pipe_cship pipe_cship_exit)
		(sleep 30)
		(unit_close pipe_cship)
		(object_set_collideable pipe_cship false)
		(sleep_until
			(not
				(volume_test_objects first_pipe_lz
					(players))) 15)
		(ai_migrate first_wave/wave_5_grunt first_wave/wave_5_attack_right)
		(ai_migrate first_wave/wave_5_elite first_wave/wave_5_attack_left)
		(ai_magically_see_players first_wave)
		(ai_magically_see_encounter first_wave first_marine)
		(sleep 240)
		(ai_migrate first_wave/wave_5_lz_toon first_wave/wave_5_attack_right)))

(script dormant void mission_first_wave_6
	(begin
		(object_create fort_cship)
		(unit_close fort_cship)
		(ai_place first_wave/wave_6_lz_toon)
		(ai_disregard
			(ai_actors first_wave/wave_6_lz_toon) true)
		(ai_braindead first_wave/wave_6_lz_toon true)
		(vehicle_load_magic fort_cship passenger
			(ai_actors first_wave/wave_6_lz_toon))
		(object_teleport fort_cship fort_cship_flag)
		(recording_play_and_hover fort_cship fort_cship_enter)
		(objects_predict fort_cship)
		(sleep
			(recording_time fort_cship))
		(ai_disregard
			(ai_actors first_wave/wave_6_lz_toon) false)
		(ai_magically_see_encounter first_marine first_wave)
		(sleep_until
			(not
				(volume_test_objects first_fort_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover fort_cship false)
		(recording_play_and_hover fort_cship fort_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time fort_cship) 60.00)))
		(unit_open fort_cship)
		(ai_braindead first_wave/wave_6_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload fort_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload fort_cship cd-passengerr04)
				(sleep 5)))
		(set global_first_wave_6 true)
		(sleep 120)
		(sleep_until
			(not
				(volume_test_objects first_structure_back
					(players))) 15 delay_dawdle)
		(vehicle_hover fort_cship false)
		(recording_play_and_delete fort_cship fort_cship_exit)
		(sleep 30)
		(unit_close fort_cship)
		(object_set_collideable fort_cship false)
		(sleep_until
			(not
				(volume_test_objects first_fort_lz
					(players))) 15)
		(ai_migrate first_wave/wave_6_grunt first_wave/wave_6_attack_left)
		(ai_migrate first_wave/wave_6_jackal first_wave/wave_6_attack_right)
		(ai_magically_see_players first_wave)
		(ai_magically_see_encounter first_wave first_marine)
		(sleep 240)
		(ai_migrate first_wave/wave_6_lz_toon first_wave/wave_6_attack_left)))

(script continuous void cont_first_kill
	(begin
		(sleep_until test_first_kill 10)
		(sleep_until
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors first_wave) 0) 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors first_wave) 0) 40.00))
			(object_destroy
				(list_get
					(ai_actors first_wave) 0)))))

(script dormant void objective_cave
	(begin
		(activate_team_nav_point_object default_red player jeep 0.50)
		(sleep_until
			(or
				(volume_test_objects cave_entrance
					(players))
				(vehicle_test_seat_list jeep w-driver
					(players))) 5 delay_lost)
		(if
			(not
				(vehicle_test_seat_list jeep w-driver
					(players)))
			(ai_conversation cave_no_jeep))
		(sleep_until
			(vehicle_test_seat_list jeep w-driver
				(players)))
		(deactivate_team_nav_point_object player jeep)
		(sleep 45)
		(sleep_until
			(not
				(volume_test_objects_all first_drop
					(players))) 1 delay_late)
		(if
			(and
				(not
					(game_is_cooperative))
				(= normal
					(game_difficulty_get)))
			(if
				(player0_joystick_set_is_normal)
				(display_scenario_help 3)
				(display_scenario_help 4)))
		(sleep_until
			(or
				(not
					(volume_test_objects_all first_drop
						(players)))
				(volume_test_objects cave_entrance
					(players))) 1 delay_late)
		(set play_music_a30_04 true)
		(sleep_until
			(volume_test_objects cave_entrance
				(players)) 1 delay_lost)
		(if
			(not
				(volume_test_objects cave_entrance
					(players)))
			(activate_team_nav_point_flag default_red player cave_nav_flag 0.00))
		(if
			(not
				(volume_test_objects cave_entrance
					(players)))
			(ai_conversation cave_prompt))
		(sleep_until
			(volume_test_objects cave_entrance
				(players)) 1)
		(ai_conversation cave_entrance)
		(deactivate_team_nav_point_flag player cave_nav_flag)
		(sleep_until
			(volume_test_objects cave_driving
				(players)) 5)
		(ai_conversation first_driving)
		(sleep_until
			(volume_test_objects cave_pretzel
				(players)) 5)
		(set play_music_a30_04 false)))

(script dormant void mission_first
	(begin
		(sleep_until
			(volume_test_objects first_arrival
				(players)) 5)
		(if
			(game_safe_to_speak)
			(ai_conversation first_arrival))
		(wake save_first_arrival)
		(ai_place first_marine)
		(objects_predict
			(ai_actors first_marine))
		(wake mission_first_wave_1)
		(sleep_until global_first_wave_1 5)
		(wake obj_first_all_killed)
		(sleep_until
			(> 3
				(ai_living_count first_wave)) 15)
		(sleep_until
			(= 0
				(ai_living_count first_wave)) 15 delay_fail)
		(if
			(< 0
				(ai_living_count first_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(ai_kill first_wave)
		(wake save_first_wave_1)
		(set play_music_a30_02 true)
		(ai_migrate first_marine/base_toon first_marine/base_search)
		(ai_migrate first_marine/left_toon first_marine/left_welcome)
		(ai_migrate first_marine/right_toon first_marine/right_search)
		(ai_conversation first_welcome)
		(sleep_until
			(< 2
				(ai_conversation_status first_welcome)) 1)
		(wake mission_first_wave_2)
		(sleep_until
			(< 4
				(ai_conversation_status first_welcome)) 1)
		(wake mission_first_marine)
		(wake obj_first_abandon)
		(wake save_first_welcome)
		(ai_migrate first_marine/left_toon first_marine/left_search)
		(sleep_until global_first_wave_2 5)
		(set play_music_a30_02 false)
		(sleep_until
			(> 3
				(ai_living_count first_wave)) 15)
		(wake mission_first_wave_3)
		(if
			(< 2
				(ai_living_count first_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(wake save_first_wave_2)
		(ai_migrate first_marine/base_toon first_marine/base_search)
		(ai_migrate first_marine/left_toon first_marine/left_search)
		(ai_migrate first_marine/right_toon first_marine/right_search)
		(sleep_until global_first_wave_3 5)
		(sleep_until
			(> 3
				(ai_living_count first_wave)) 15)
		(wake mission_first_wave_4)
		(if
			(< 2
				(ai_living_count first_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(wake save_first_wave_3)
		(ai_migrate first_marine/base_toon first_marine/base_search)
		(ai_migrate first_marine/left_toon first_marine/left_search)
		(ai_migrate first_marine/right_toon first_marine/right_search)
		(sleep_until global_first_wave_4 5)
		(sleep_until
			(> 3
				(ai_living_count first_wave)) 15)
		(wake save_first_wave_4)
		(wake mission_first_wave_5)
		(sleep_until global_first_wave_5 5)
		(set play_music_a30_03 true)
		(wake mission_first_wave_6)
		(sleep_until global_first_wave_6 5)
		(sleep_until
			(> 6
				(ai_living_count first_wave)) 15 delay_lost)
		(ai_maneuver_enable first_wave false)
		(ai_follow_target_players first_wave)
		(ai_magically_see_players first_wave)
		(set play_music_a30_03_alt true)
		(sleep_until
			(= 0
				(ai_living_count first_wave)) 15 delay_fail)
		(if
			(< 0
				(ai_living_count first_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(sleep delay_calm)
		(set play_music_a30_03_alt false)
		(set play_music_a30_03 false)
		(set global_first_end true)
		(set test_first_kill true)
		(wake save_first_wave_6)
		(ai_migrate first_marine first_marine/waiting_marine_1)
		(object_create foehammer_first)
		(unit_set_enterable_by_player foehammer_first false)
		(object_create jeep)
		(if
			(not
				(game_is_cooperative))
			(object_create gunner))
		(if
			(not
				(game_is_cooperative))
			(unit_enter_vehicle gunner jeep w-gunner))
		(ai_attach gunner first_marine/left_back)
		(unit_enter_vehicle jeep foehammer_first cargo)
		(object_teleport foehammer_first foehammer_first_flag)
		(recording_play_and_hover foehammer_first foehammer_first_in)
		(objects_predict foehammer_first)
		(ai_conversation first_evac_1)
		(sleep_until
			(or
				(= 0
					(recording_time foehammer_first))
				(< 4
					(ai_conversation_status first_evac_1))) 1)
		(object_create lifeboat_1)
		(object_teleport lifeboat_1 lifeboat_1_flag)
		(recording_play_and_delete lifeboat_1 lifeboat_1_in)
		(object_create lifeboat_3)
		(object_teleport lifeboat_3 lifeboat_3_flag)
		(recording_play_and_delete lifeboat_3 lifeboat_3_in)
		(object_create lifeboat_2)
		(object_teleport lifeboat_2 lifeboat_2_flag)
		(recording_play_and_delete lifeboat_2 lifeboat_2_in)
		(ai_conversation_stop first_evac_1)
		(ai_conversation first_evac_2)
		(sleep 210)
		(ai_migrate first_marine first_marine/waiting_marine_2)
		(sleep
			(recording_time foehammer_first))
		(wake objective_cave)
		(sleep_until
			(< 4
				(ai_conversation_status first_evac_2)) 1)
		(sleep_until
			(not
				(volume_test_objects first_drop
					(players))) 1)
		(unit_exit_vehicle jeep)
		(sleep 15)
		(ai_conversation first_evac_3)
		(set mark_search true)
		(vehicle_hover foehammer_first false)
		(recording_play_and_hover foehammer_first foehammer_first_drop)
		(sleep_until
			(< 4
				(ai_conversation_status first_evac_3)) 1)
		(ai_conversation first_evac_4)
		(sleep
			(recording_time foehammer_first))
		(set global_first_foehammer_waiting true)
		(set global_first_marine_rescued true)
		(wake save_first_waiting)
		(if
			(not
				(game_is_cooperative))
			(ai_go_to_vehicle first_marine jeep gunner))
		(if
			(not
				(game_is_cooperative))
			(ai_go_to_vehicle first_marine jeep passenger))
		(ai_go_to_vehicle first_marine foehammer_first rider)
		(sleep_until
			(= 0
				(ai_going_to_vehicle foehammer_first)) 45)
		(vehicle_hover foehammer_first false)
		(recording_play_and_delete foehammer_first foehammer_first_exit)))

(script dormant void obj_cave_prompt
	(begin
		(sleep_until
			(> 4.00
				(-
					(ai_living_count cave_floor)
					(ai_living_count cave_floor/plank_toon))) 15)
		(sleep_until
			(= 0.00
				(-
					(ai_living_count cave_floor)
					(ai_living_count cave_floor/plank_toon))) 15 delay_lost)
		(sleep_until
			(volume_test_objects bridge_edge
				(players)) 5 delay_lost)
		(sleep_until
			(game_safe_to_speak) 15)
		(if
			(and
				(=
					(structure_bsp_index) 0)
				(= 0.00
					(device_group_get bridge_control_position)))
			(ai_conversation cave_bridge_prompt))))

(script static void cutscene_bridge
	(begin
		(ai false)
		(player_enable_input false)
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(object_teleport cutscene_bridge player0_bridge_base)
		(object_teleport cutscene_bridge player1_bridge_base)
		(object_destroy chief)
		(object_destroy rifle)
		(object_create chief)
		(object_create rifle)
		(object_teleport chief chief_push_base)
		(objects_attach chief right hand rifle )
		(object_beautify chief true)
		(custom_animation chief cinematics\animations\chief\level_specific\b30\b30 b30holomapshort false)
		(camera_control true)
		(cinematic_start)
		(camera_set bridge_glory_2a 0)
		(camera_set bridge_glory_2b 120)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 120)
		(sound_looping_start sound\sinomatixx\a30_bridge_music none 1.00)
		(camera_set bridge_glory_1a 0)
		(device_set_position bridge 1.00)
		(camera_set bridge_glory_1b 300)
		(sleep 150)
		(camera_set bridge_glory_1c 300)
		(sleep 150)
		(camera_set bridge_glory_1d 180)
		(sleep 90)
		(camera_set bridge_glory_1e 200)
		(sleep
			(-
				(camera_time) 15.00))
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(object_destroy chief)
		(object_destroy rifle)
		(object_teleport cutscene_bridge player0_bridge_done)
		(object_teleport cutscene_bridge player1_bridge_done)
		(camera_control false)
		(cinematic_stop)
		(fade_in 1.00 1.00 1.00 15)
		(wake save_cave_bridge)
		(player_enable_input true)
		(ai true)))

(script dormant void mission_cave
	(begin
		(sleep_until
			(volume_test_objects cave_floor_entrance
				(players)) 15)
		(if
			(and
				(game_is_cooperative)
				(not
					(or
						(vehicle_test_seat_list jeep w-gunner
							(players))
						(vehicle_test_seat_list jeep w-passenger
							(players)))))
			(volume_teleport_players_not_inside cave_floor_entrance cave_flag))
		(wake save_cave_floor_enter)
		(ai_place cave_floor)
		(objects_predict
			(ai_actors cave_floor))
		(wake obj_cave_prompt)
		(set play_music_a30_05 true)
		(sleep_until
			(or
				(volume_test_objects cave_gap
					(players))
				(< 0.00
					(device_group_get bridge_control_position))) 1)
		(ai_timer_expire cave_floor/plank_elite)
		(set play_music_a30_05_alt true)
		(sleep_until
			(< 0.00
				(device_group_get bridge_control_position)) 1 delay_late)
		(set play_music_a30_05_alt false)
		(sleep_until
			(< 0.00
				(device_group_get bridge_control_position)) 1)
		(set play_music_a30_05 false)
		(if
			(game_all_quiet) mission_cave)
		(sleep_until
			(volume_test_objects cave_floor_exit
				(players)) 15)
		(wake save_cave_floor_exit)
		(ai_conversation second_driving)
		(sleep_until
			(=
				(structure_bsp_index) 1))
		(device_set_position_immediate bridge 0.00)))

(script dormant void obj_cliff_abandon
	(begin
		(deactivate_team_nav_point_flag player cliff_nav_flag)
		(deactivate_team_nav_point_flag player rubble_nav_flag)
		(deactivate_team_nav_point_flag player river_nav_flag)
		(ai_conversation cliff_prompt)
		(sleep_until
			(not
				(volume_test_objects_all cliff_all
					(players))) 15)
		(if global_two_marine_rescued
			(begin
				(ai_conversation cliff_abandon_final))
			(if global_cliff_dead
				(begin
					(sleep -1))
				(if global_cliff_all_killed
					(begin
						(ai_conversation cliff_abandon_killed))
					(if global_cliff_welcome
						(begin
							(ai_conversation cliff_abandon_welcome))
						(if true
							(begin
								(ai_conversation cliff_abandon)))))))))

(script dormant void obj_cliff_all_killed
	(begin
		(sleep_until
			(or global_cliff_end
				(= 0
					(ai_living_count cliff_marine))) 15)
		(sleep 60)
		(if
			(not global_cliff_end)
			(set global_cliff_all_killed true))
		(if
			(and
				(volume_test_objects cliff_all
					(players))
				(not global_cliff_end))
			(ai_conversation cliff_all_killed))
		(if
			(not
				(and global_river_end global_rubble_end))
			(set global_cliff_end true))))

(script dormant void obj_cliff_arrival
	(begin
		(sleep_until
			(volume_test_objects cliff_arrival
				(players)) 15)
		(if
			(not global_cliff_welcome)
			(ai_conversation cliff_arrival))
		(wake save_cliff_arrival)))

(script continuous void cont_cliff_kill
	(begin
		(sleep_until test_cliff_kill 10)
		(sleep_until
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors cliff_wave) 0) 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors cliff_wave) 0) 40.00))
			(object_destroy
				(list_get
					(ai_actors cliff_wave) 0)))))

(script dormant void mission_cliff_marine
	(begin
		(sleep_until
			(or
				(<
					(ai_living_fraction cliff_wave) 0.50)
				(volume_test_objects cliff_right_fort_first_floor
					(players))
				(volume_test_objects cliff_left_fort_first_floor
					(players))) 5)
		(if
			(not
				(volume_test_objects cliff_inside_left_bottom
					(players)))
			(sound_impulse_start sound\dialog\a30\a30_540_cortana none 1.00))
		(sleep
			(sound_impulse_time sound\dialog\a30\a30_540_cortana))
		(ai_timer_expire cliff_wave/left_fort_inside_grunt)
		(ai_timer_expire cliff_wave/right_fort_inside_grunt)
		(sleep_until
			(or
				(<
					(ai_living_fraction cliff_wave) 0.30)
				(volume_test_objects cliff_right_fort_second_floor
					(players))
				(volume_test_objects cliff_left_fort_second_floor
					(players))) 5)
		(if
			(or
				(volume_test_objects cliff_right_fort_second_floor
					(players))
				(volume_test_objects cliff_left_fort_second_floor
					(players)))
			(ai_place cliff_wave/inside_bottom_jackal))
		(ai_place cliff_marine)
		(objects_predict
			(ai_actors cliff_marine))
		(objects_predict
			(ai_actors cliff_wave))
		(sleep_until
			(or
				(<
					(ai_living_fraction cliff_wave) 0.30)
				(volume_test_objects cliff_inside_left_bottom
					(players))) 5)
		(sleep_until
			(<
				(ai_living_count cliff_wave/inside_bottom_jackal) 3) 1 delay_late)
		(if
			(<
				(ai_living_fraction cliff_wave) 0.30)
			(set global_cliff_welcome true))
		(sleep_until
			(game_safe_to_speak) 1)
		(wake save_cliff_welcome)
		(ai_conversation cliff_welcome)
		(sleep_until
			(< 4
				(ai_conversation_status cliff_welcome)) 1)
		(set global_cliff_welcome true)))

(script dormant void mission_cliff
	(begin
		(wake obj_cliff_arrival)
		(sleep_until
			(or
				(volume_test_objects cliff_1
					(players))
				(volume_test_objects cliff_2
					(players))) 15)
		(set global_cliff_start true)
		(if
			(or global_river_end global_rubble_end)
			(set cont_banshee_kill true))
		(ai_place cliff_wave/right_fort_elite)
		(ai_place cliff_wave/right_fort_grunt)
		(ai_place cliff_wave/right_fort_far_jackal)
		(ai_place cliff_wave/right_fort_inside_grunt)
		(ai_place cliff_wave/left_fort_elite)
		(ai_place cliff_wave/left_fort_grunt)
		(ai_place cliff_wave/left_fort_far_jackal)
		(ai_place cliff_wave/left_fort_farther_jackal)
		(ai_place cliff_wave/left_fort_inside_grunt)
		(ai_place cliff_wave/main_top_elite)
		(ai_place cliff_wave/main_near_grunt)
		(ai_place cliff_wave/main_far_grunt)
		(objects_predict
			(ai_actors cliff_wave))
		(sleep 90)
		(sleep_until
			(volume_test_objects cliff_all
				(players)) 1)
		(wake obj_cliff_abandon)
		(wake mission_cliff_marine)
		(sleep_until global_cliff_welcome 1)
		(wake obj_cliff_all_killed)
		(ai_maneuver_enable cliff_marine false)
		(ai_follow_target_players cliff_marine)
		(if
			(and global_river_end global_rubble_end)
			(set play_music_a30_07 true))
		(sleep_until
			(> 7
				(ai_living_count cliff_wave)) 15)
		(ai_migrate cliff_wave cliff_wave/main_near)
		(ai_maneuver_enable cliff_wave false)
		(ai_follow_target_players cliff_wave)
		(ai_magically_see_players cliff_wave)
		(sleep_until
			(= 0
				(ai_living_count cliff_wave)) 15 delay_late)
		(if
			(not
				(or global_cliff_all_killed
					(= 0
						(ai_living_count cliff_wave))))
			(ai_conversation cliff_cleanup))
		(sleep_until
			(= 0
				(ai_living_count cliff_wave)) 15 delay_lost)
		(set test_cliff_kill true)
		(ai_conversation_stop cliff_welcome)
		(sleep delay_calm)
		(ai_follow_target_disable cliff_marine)
		(ai_maneuver_enable cliff_marine true)
		(set global_cliff_end true)
		(set global_cliff_dead true)
		(sleep 10)
		(set play_music_a30_07 false)
		(if
			(and global_river_end global_rubble_end)
			(wake mission_extraction_cliff))
		(if
			(and global_river_end global_rubble_end)
			(set global_extraction true))
		(if
			(and global_river_end global_rubble_end)
			(sleep -1))
		(if global_cliff_all_killed
			(ai_conversation cliff_abandon_killed))
		(if global_cliff_all_killed
			(sleep -1))
		(object_create foehammer_cliff)
		(unit_set_enterable_by_player foehammer_cliff false)
		(if
			(or
				(volume_test_objects cliff_all jeep)
				(volume_test_objects cliff_all jeep2)
				(volume_test_objects cliff_all jeep3))
			(begin
				(sleep 1))
			(if mark_jeep3
				(begin
					(sleep 1))
				(if mark_jeep2
					(begin
						(begin
							(object_create jeep3)
							(unit_enter_vehicle jeep3 foehammer_cliff cargo)
							(set mark_jeep3 true)))
					(if true
						(begin
							(begin
								(object_create jeep2)
								(unit_enter_vehicle jeep2 foehammer_cliff cargo)
								(set mark_jeep2 true)))))))
		(object_teleport foehammer_cliff foehammer_cliff_flag)
		(recording_play_and_hover foehammer_cliff foehammer_cliff_in)
		(sleep 210)
		(ai_migrate cliff_marine cliff_marine/waiting_marine)
		(sleep
			(recording_time foehammer_cliff))
		(unit_exit_vehicle jeep)
		(unit_exit_vehicle jeep2)
		(unit_exit_vehicle jeep3)
		(set global_cliff_marine_rescued true)
		(wake save_cliff_rescued)
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects cliff_all jeep)
				(begin
					(ai_go_to_vehicle cliff_marine jeep gunner))
				(if
					(volume_test_objects cliff_all jeep2)
					(begin
						(ai_go_to_vehicle cliff_marine jeep2 gunner))
					(if
						(volume_test_objects cliff_all jeep3)
						(begin
							(ai_go_to_vehicle cliff_marine jeep3 gunner))))))
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects cliff_all jeep)
				(begin
					(ai_go_to_vehicle cliff_marine jeep passenger))
				(if
					(volume_test_objects cliff_all jeep2)
					(begin
						(ai_go_to_vehicle cliff_marine jeep2 passenger))
					(if
						(volume_test_objects cliff_all jeep3)
						(begin
							(ai_go_to_vehicle cliff_marine jeep3 passenger))))))
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderlb)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderrb)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderlm)
		(ai_go_to_vehicle cliff_marine foehammer_cliff riderrm)
		(sleep_until
			(= 0
				(ai_going_to_vehicle foehammer_cliff)) 15)
		(sleep 60)
		(vehicle_hover foehammer_cliff false)
		(recording_play_and_delete foehammer_cliff foehammer_cliff_out)))

(script dormant void obj_rubble_abandon
	(begin
		(deactivate_team_nav_point_flag player cliff_nav_flag)
		(deactivate_team_nav_point_flag player rubble_nav_flag)
		(deactivate_team_nav_point_flag player river_nav_flag)
		(sleep_until
			(not
				(volume_test_objects_all rubble_all
					(players))) 15)
		(if global_two_marine_rescued
			(begin
				(ai_conversation rubble_abandon_final))
			(if global_rubble_dead
				(begin
					(sleep -1))
				(if global_rubble_all_killed
					(begin
						(ai_conversation rubble_abandon_killed))
					(if global_rubble_welcome
						(begin
							(ai_conversation rubble_abandon_welcome))
						(if true
							(begin
								(ai_conversation rubble_abandon)))))))))

(script dormant void obj_rubble_all_killed
	(begin
		(sleep_until
			(or global_rubble_end
				(= 0
					(ai_living_count rubble_marine))) 15)
		(sleep 60)
		(if
			(not global_rubble_end)
			(set global_rubble_all_killed true))
		(if
			(and
				(volume_test_objects rubble_all
					(players))
				(not global_rubble_end))
			(ai_conversation rubble_all_killed))
		(if
			(not
				(and global_river_end global_cliff_end))
			(set global_rubble_end true))))

(script dormant void mission_rubble_defend
	(begin
		(sleep_until global_rubble_wave_2 5)
		(sleep_until
			(volume_test_objects_all rubble_defend
				(players)) 15)
		(ai_retreat rubble_wave/wave_2_attack_toon)
		(set global_rubble_wave_2_defend true)
		(sleep_until global_rubble_wave_3 5)
		(sleep_until
			(volume_test_objects_all rubble_defend
				(players)) 15)
		(ai_retreat rubble_wave/wave_3_attack_toon)
		(set global_rubble_wave_3_defend true)
		(sleep_until global_rubble_wave_4 5)
		(sleep_until
			(volume_test_objects_all rubble_defend
				(players)) 15)
		(ai_retreat rubble_wave/wave_4_attack_toon)
		(set global_rubble_wave_4_defend true)
		(sleep_until global_rubble_wave_5 5)
		(sleep_until
			(volume_test_objects_all rubble_defend
				(players)) 15)
		(ai_retreat rubble_wave/wave_5_attack_toon)
		(set global_rubble_wave_5_defend true)))

(script dormant void mission_rubble_retreat
	(begin
		(sleep_until global_rubble_wave_2_defend 5)
		(sleep_until
			(volume_test_objects_all rubble_retreat
				(players)) 15)
		(ai_retreat rubble_wave/wave_2_defend_toon)
		(sleep_until global_rubble_wave_3_defend 5)
		(sleep_until
			(volume_test_objects_all rubble_retreat
				(players)) 15)
		(ai_retreat rubble_wave/wave_3_defend_toon)
		(sleep_until global_rubble_wave_4_defend 5)
		(sleep_until
			(volume_test_objects_all rubble_retreat
				(players)) 15)
		(ai_retreat rubble_wave/wave_4_defend_toon)
		(sleep_until global_rubble_wave_5_defend 5)
		(sleep_until
			(volume_test_objects_all rubble_retreat
				(players)) 15)
		(ai_retreat rubble_wave/wave_5_defend_toon)))

(script dormant void mission_rubble_marine
	(begin
		(ai_place rubble_marine)
		(objects_predict
			(ai_actors rubble_marine))
		(sleep_until global_rubble_wave_2 1)
		(sleep 90)
		(sleep_until
			(or global_rubble_wave_3
				(!=
					(game_difficulty_get) normal)
				(> 0.50
					(ai_living_fraction rubble_marine))) 15)
		(ai_migrate rubble_marine rubble_marine/fight_marine)
		(sleep 90)
		(wake mission_rubble_defend)
		(sleep 90)
		(sleep_until
			(or
				(=
					(game_difficulty_get) impossible) global_rubble_wave_4
				(> 0.25
					(ai_living_fraction rubble_marine))) 15)
		(sleep 90)
		(ai_migrate rubble_marine rubble_marine/iron_marine)
		(ai_conversation rubble_retreat)
		(sleep 45)
		(wake mission_rubble_retreat)
		(sleep_until
			(or global_rubble_wave_5
				(= 0.00
					(ai_living_fraction rubble_marine))) 15)
		(ai_maneuver_enable rubble_wave false)
		(ai_follow_target_players rubble_wave)))

(script dormant void mission_rubble_wave_2
	(begin
		(object_create rubble_rock_cship)
		(unit_close rubble_rock_cship)
		(ai_place rubble_wave/wave_2_lz_toon)
		(ai_disregard
			(ai_actors rubble_wave/wave_2_lz_toon) true)
		(ai_braindead rubble_wave/wave_2_lz_toon true)
		(vehicle_load_magic rubble_rock_cship passenger
			(ai_actors rubble_wave/wave_2_lz_toon))
		(object_teleport rubble_rock_cship rubble_rock_cship_flag)
		(recording_play_and_hover rubble_rock_cship rubble_rock_cship_enter)
		(objects_predict rubble_rock_cship)
		(sleep
			(recording_time rubble_rock_cship))
		(ai_conversation rubble_wave_2_alert)
		(sleep_until
			(< 4
				(ai_conversation_status rubble_wave_2_alert)) 1 delay_dawdle)
		(ai_disregard
			(ai_actors rubble_wave/wave_2_lz_toon) false)
		(ai_migrate rubble_marine rubble_marine/fight_marine)
		(ai_magically_see_encounter rubble_marine rubble_wave)
		(sleep_until
			(not
				(volume_test_objects rubble_rock_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover rubble_rock_cship false)
		(recording_play_and_hover rubble_rock_cship rubble_rock_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time rubble_rock_cship) 60.00)))
		(unit_open rubble_rock_cship)
		(ai_braindead rubble_wave/wave_2_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr04)
				(sleep 5)))
		(set global_rubble_wave_2 true)
		(sleep 120)
		(vehicle_hover rubble_rock_cship false)
		(recording_play_and_delete rubble_rock_cship rubble_rock_cship_exit)
		(sleep 30)
		(unit_close rubble_rock_cship)
		(object_set_collideable rubble_rock_cship false)
		(sleep_until
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players))
				(volume_test_objects_all rubble_attack
					(players))) 15)
		(ai_migrate rubble_wave/wave_2_jackal rubble_wave/wave_2_attack_toon)
		(sleep 90)
		(ai_migrate rubble_wave/wave_2_lz_toon rubble_wave/wave_2_attack_toon)
		(if
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players)))
			(ai_migrate rubble_wave/wave_2_attack_toon rubble_wave/wave_2_defend_toon))
		(ai_magically_see_players rubble_wave)
		(ai_magically_see_encounter rubble_wave rubble_marine)))

(script dormant void mission_rubble_wave_3
	(begin
		(object_create rubble_middle_cship)
		(unit_close rubble_middle_cship)
		(ai_place rubble_wave/wave_3_lz_toon)
		(ai_disregard
			(ai_actors rubble_wave/wave_3_lz_toon) true)
		(ai_braindead rubble_wave/wave_3_lz_toon true)
		(vehicle_load_magic rubble_middle_cship passenger
			(ai_actors rubble_wave/wave_3_lz_toon))
		(object_teleport rubble_middle_cship rubble_middle_cship_flag)
		(recording_play_and_hover rubble_middle_cship rubble_middle_cship_enter)
		(objects_predict rubble_middle_cship)
		(sleep
			(recording_time rubble_middle_cship))
		(ai_conversation rubble_wave_3_alert)
		(sleep_until
			(< 4
				(ai_conversation_status rubble_wave_3_alert)) 1 delay_dawdle)
		(ai_disregard
			(ai_actors rubble_wave/wave_3_lz_toon) false)
		(ai_magically_see_encounter rubble_marine rubble_wave)
		(sleep_until
			(not
				(volume_test_objects rubble_middle_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover rubble_middle_cship false)
		(recording_play_and_hover rubble_middle_cship rubble_middle_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time rubble_middle_cship) 60.00)))
		(unit_open rubble_middle_cship)
		(ai_braindead rubble_wave/wave_3_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_middle_cship cd-passengerr04)
				(sleep 5)))
		(set global_rubble_wave_3 true)
		(sleep 120)
		(vehicle_hover rubble_middle_cship false)
		(recording_play_and_delete rubble_middle_cship rubble_middle_cship_exit)
		(sleep 30)
		(unit_close rubble_middle_cship)
		(object_set_collideable rubble_middle_cship false)
		(sleep_until
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players))
				(volume_test_objects_all rubble_attack
					(players))) 15)
		(ai_migrate rubble_wave/wave_3_grunt rubble_wave/wave_3_attack_toon)
		(sleep 90)
		(ai_migrate rubble_wave/wave_3_lz_toon rubble_wave/wave_3_attack_toon)
		(if
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players)))
			(ai_migrate rubble_wave/wave_3_attack_toon rubble_wave/wave_3_defend_toon))
		(ai_magically_see_players rubble_wave)
		(ai_magically_see_encounter rubble_wave rubble_marine)))

(script dormant void mission_rubble_wave_4
	(begin
		(object_create rubble_rock_cship)
		(unit_close rubble_rock_cship)
		(ai_place rubble_wave/wave_4_lz_toon)
		(ai_disregard
			(ai_actors rubble_wave/wave_4_lz_toon) true)
		(ai_braindead rubble_wave/wave_4_lz_toon true)
		(vehicle_load_magic rubble_rock_cship passenger
			(ai_actors rubble_wave/wave_4_lz_toon))
		(object_teleport rubble_rock_cship rubble_rock_cship_flag)
		(recording_play_and_hover rubble_rock_cship rubble_rock_cship_enter)
		(objects_predict rubble_rock_cship)
		(sleep
			(recording_time rubble_rock_cship))
		(ai_conversation rubble_wave_4_alert)
		(sleep_until
			(< 4
				(ai_conversation_status rubble_wave_2_alert)) 1 delay_dawdle)
		(ai_disregard
			(ai_actors rubble_wave/wave_4_lz_toon) false)
		(ai_magically_see_encounter rubble_marine rubble_wave)
		(sleep_until
			(not
				(volume_test_objects rubble_rock_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover rubble_rock_cship false)
		(recording_play_and_hover rubble_rock_cship rubble_rock_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time rubble_rock_cship) 60.00)))
		(unit_open rubble_rock_cship)
		(ai_braindead rubble_wave/wave_4_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_rock_cship cd-passengerr04)
				(sleep 5)))
		(set global_rubble_wave_4 true)
		(sleep 120)
		(vehicle_hover rubble_rock_cship false)
		(recording_play_and_delete rubble_rock_cship rubble_rock_cship_exit)
		(sleep 30)
		(unit_close rubble_rock_cship)
		(object_set_collideable rubble_rock_cship false)
		(sleep_until
			(volume_test_objects_all rubble_attack
				(players)) 15)
		(sleep_until
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players))
				(volume_test_objects_all rubble_attack
					(players))) 15)
		(ai_migrate rubble_wave/wave_4_grunt rubble_wave/wave_4_attack_toon)
		(sleep 90)
		(ai_migrate rubble_wave/wave_4_lz_toon rubble_wave/wave_4_attack_toon)
		(if
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players)))
			(ai_migrate rubble_wave/wave_4_attack_toon rubble_wave/wave_4_defend_toon))
		(ai_magically_see_players rubble_wave)
		(ai_magically_see_encounter rubble_wave rubble_marine)))

(script dormant void mission_rubble_wave_5
	(begin
		(object_create rubble_boat_cship)
		(unit_close rubble_boat_cship)
		(ai_place rubble_wave/wave_5_lz_toon)
		(ai_disregard
			(ai_actors rubble_wave/wave_5_lz_toon) true)
		(ai_braindead rubble_wave/wave_5_lz_toon true)
		(vehicle_load_magic rubble_boat_cship passenger
			(ai_actors rubble_wave/wave_5_lz_toon))
		(object_teleport rubble_boat_cship rubble_boat_cship_flag)
		(recording_play_and_hover rubble_boat_cship rubble_boat_cship_enter)
		(objects_predict rubble_boat_cship)
		(sleep
			(recording_time rubble_boat_cship))
		(ai_disregard
			(ai_actors rubble_wave/wave_5_lz_toon) false)
		(ai_magically_see_encounter rubble_marine rubble_wave)
		(sleep_until
			(not
				(volume_test_objects rubble_rock_lz
					(players))) 15 delay_dawdle)
		(vehicle_hover rubble_boat_cship false)
		(recording_play_and_hover rubble_boat_cship rubble_boat_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time rubble_boat_cship) 60.00)))
		(unit_open rubble_boat_cship)
		(ai_braindead rubble_wave/wave_5_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload rubble_boat_cship cd-passengerr04)
				(sleep 5)))
		(set global_rubble_wave_5 true)
		(sleep 120)
		(vehicle_hover rubble_boat_cship false)
		(recording_play_and_delete rubble_boat_cship rubble_boat_cship_exit)
		(sleep 30)
		(unit_close rubble_boat_cship)
		(object_set_collideable rubble_boat_cship false)
		(sleep_until
			(volume_test_objects_all rubble_attack
				(players)) 15)
		(sleep_until
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players))
				(volume_test_objects_all rubble_attack
					(players))) 15)
		(ai_migrate rubble_wave/wave_5_jackal rubble_wave/wave_5_attack_toon)
		(sleep 90)
		(ai_retreat rubble_wave/wave_5_lz_toon)
		(if
			(or
				(vehicle_test_seat_list jeep w-driver
					(players))
				(vehicle_test_seat_list jeep2 w-driver
					(players))
				(vehicle_test_seat_list jeep3 w-driver
					(players)))
			(ai_migrate rubble_wave/wave_5_attack_toon rubble_wave/wave_5_defend_toon))
		(ai_magically_see_players rubble_wave)
		(ai_magically_see_encounter rubble_wave rubble_marine)))

(script continuous void cont_rubble_kill
	(begin
		(sleep_until test_rubble_kill 10)
		(sleep_until
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors rubble_wave) 0) 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors rubble_wave) 0) 40.00))
			(object_destroy
				(list_get
					(ai_actors rubble_wave) 0)))))

(script dormant void mission_rubble
	(begin
		(sleep_until
			(or
				(volume_test_objects rubble_1
					(players))
				(volume_test_objects rubble_2
					(players))) 15)
		(set global_rubble_start true)
		(if
			(or global_cliff_end global_river_end)
			(set cont_banshee_kill true))
		(ai_place rubble_wave/wave_1_toon)
		(objects_predict
			(ai_actors rubble_wave))
		(ai_playfight rubble_wave true)
		(ai_playfight rubble_marine true)
		(ai_try_to_fight rubble_wave rubble_marine)
		(wake mission_rubble_marine)
		(sleep_until
			(volume_test_objects rubble_arrival
				(players)) 15)
		(ai_conversation rubble_arrival)
		(deactivate_team_nav_point_flag player cliff_nav_flag)
		(deactivate_team_nav_point_flag player rubble_nav_flag)
		(deactivate_team_nav_point_flag player river_nav_flag)
		(wake save_rubble_welcome)
		(sleep_until
			(or
				(< 0.50
					(ai_living_fraction rubble_wave))
				(volume_test_objects rubble_attack
					(players))) 15)
		(ai_playfight rubble_wave false)
		(ai_playfight rubble_marine false)
		(sleep_until
			(or
				(<
					(ai_living_count rubble_wave) 3)
				(volume_test_objects rubble_attack
					(players))) 15)
		(sleep_until
			(and
				(<
					(ai_living_count rubble_wave) 3)
				(volume_test_objects rubble_attack
					(players))) 15 delay_late)
		(ai_conversation rubble_welcome)
		(sleep_until
			(< 4
				(ai_conversation_status rubble_welcome)) 1 delay_late)
		(set global_rubble_welcome true)
		(wake obj_rubble_abandon)
		(wake obj_rubble_all_killed)
		(ai_try_to_fight_nothing rubble_wave)
		(wake mission_rubble_wave_2)
		(sleep_until global_rubble_wave_2 5)
		(set global_rubble_count
			(ai_living_count rubble_wave))
		(sleep_until
			(>
				(- global_rubble_count 1.00)
				(ai_living_count rubble_wave)) 15 delay_late)
		(sleep_until
			(> 4
				(ai_living_count rubble_wave)) 15 delay_late)
		(wake mission_rubble_wave_3)
		(if
			(< 2
				(ai_living_count rubble_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(wake save_rubble_wave_2)
		(sleep_until global_rubble_wave_3 5)
		(set global_rubble_count
			(ai_living_count rubble_wave))
		(sleep_until
			(>
				(- global_rubble_count 1.00)
				(ai_living_count rubble_wave)) 15 delay_late)
		(sleep_until
			(> 4
				(ai_living_count rubble_wave)) 15 delay_dawdle)
		(wake mission_rubble_wave_4)
		(if
			(< 2
				(ai_living_count rubble_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(wake save_rubble_wave_3)
		(sleep_until global_rubble_wave_4 5)
		(if
			(and global_river_end global_cliff_end)
			(set play_music_a30_07 true))
		(set global_rubble_count
			(ai_living_count rubble_wave))
		(sleep_until
			(>
				(- global_rubble_count 1.00)
				(ai_living_count rubble_wave)) 15 delay_dawdle)
		(wake mission_rubble_wave_5)
		(if
			(< 0
				(ai_living_count rubble_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(wake save_rubble_wave_4)
		(sleep_until global_rubble_wave_5 5)
		(sleep_until
			(> 5
				(ai_living_count rubble_wave)) 15)
		(ai_maneuver_enable rubble_wave false)
		(ai_follow_target_players rubble_wave)
		(ai_magically_see_players rubble_wave)
		(sleep_until
			(= 0
				(ai_living_count rubble_wave)) 15 delay_lost)
		(if
			(not
				(or global_rubble_all_killed
					(= 0
						(ai_living_count rubble_wave))))
			(ai_conversation rubble_cleanup))
		(sleep_until
			(= 0
				(ai_living_count rubble_wave)) 15 delay_lost)
		(if
			(< 0
				(ai_living_count rubble_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(set test_rubble_kill true)
		(ai_conversation_stop rubble_welcome)
		(sleep delay_calm)
		(set global_rubble_end true)
		(set global_rubble_dead true)
		(sleep 10)
		(set play_music_a30_07 false)
		(if
			(and global_river_end global_cliff_end)
			(wake mission_extraction_rubble))
		(if
			(and global_river_end global_cliff_end)
			(set global_extraction true))
		(if
			(and global_river_end global_cliff_end)
			(sleep -1))
		(if global_rubble_all_killed
			(ai_conversation rubble_abandon_killed))
		(if global_rubble_all_killed
			(sleep -1))
		(sleep 10)
		(object_create foehammer_rubble)
		(unit_set_enterable_by_player foehammer_rubble false)
		(if
			(or
				(volume_test_objects rubble_all jeep)
				(volume_test_objects rubble_all jeep2)
				(volume_test_objects rubble_all jeep3))
			(begin
				(sleep 1))
			(if mark_jeep3
				(begin
					(sleep 1))
				(if mark_jeep2
					(begin
						(begin
							(object_create jeep3)
							(unit_enter_vehicle jeep3 foehammer_rubble cargo)
							(set mark_jeep3 true)))
					(if true
						(begin
							(begin
								(object_create jeep2)
								(unit_enter_vehicle jeep2 foehammer_rubble cargo)
								(set mark_jeep2 true)))))))
		(object_teleport foehammer_rubble foehammer_rubble_flag)
		(recording_play_and_hover foehammer_rubble foehammer_rubble_in)
		(sleep 210)
		(ai_migrate rubble_marine rubble_marine/waiting_marine)
		(sleep
			(recording_time foehammer_rubble))
		(unit_exit_vehicle jeep)
		(unit_exit_vehicle jeep2)
		(unit_exit_vehicle jeep3)
		(set global_rubble_marine_rescued true)
		(wake save_rubble_rescued)
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects rubble_all jeep)
				(begin
					(ai_go_to_vehicle rubble_marine jeep gunner))
				(if
					(volume_test_objects rubble_all jeep2)
					(begin
						(ai_go_to_vehicle rubble_marine jeep2 gunner))
					(if
						(volume_test_objects rubble_all jeep3)
						(begin
							(ai_go_to_vehicle rubble_marine jeep3 gunner))))))
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects rubble_all jeep)
				(begin
					(ai_go_to_vehicle rubble_marine jeep passenger))
				(if
					(volume_test_objects rubble_all jeep2)
					(begin
						(ai_go_to_vehicle rubble_marine jeep2 passenger))
					(if
						(volume_test_objects rubble_all jeep3)
						(begin
							(ai_go_to_vehicle rubble_marine jeep3 passenger))))))
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderlb)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderrb)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderlm)
		(ai_go_to_vehicle rubble_marine foehammer_rubble riderrm)
		(sleep_until
			(= 0
				(ai_going_to_vehicle foehammer_rubble)) 15)
		(sleep 60)
		(vehicle_hover foehammer_rubble false)
		(recording_play_and_delete foehammer_rubble foehammer_rubble_out)))

(script dormant void mission_river_defend
	(begin
		(sleep_until global_river_wave_2 5)
		(sleep_until
			(volume_test_objects_all river_attack
				(players)) 15)
		(ai_retreat river_wave/wave_2_attack_toon)
		(set global_river_wave_2_defend true)
		(sleep_until global_river_wave_3 5)
		(sleep_until
			(volume_test_objects_all river_attack
				(players)) 15)
		(ai_retreat river_wave/wave_3_attack_toon)
		(set global_river_wave_3_defend true)))

(script dormant void mission_river_retreat
	(begin
		(sleep_until global_river_wave_2_defend 5)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_2_defend_toon)
		(sleep_until global_river_wave_3_defend 5)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_3_defend_toon)))

(script dormant void mission_river_marine
	(begin
		(ai_place river_marine)
		(objects_predict
			(ai_actors river_marine))
		(ai_disregard
			(ai_actors river_wave) true)
		(sleep_until
			(volume_test_objects river_retreat
				(players)) 15)
		(ai_defend river_marine)
		(sleep 90)
		(wake mission_river_defend)
		(sleep 90)
		(sleep_until
			(or global_river_wave_3
				(> 0.30
					(ai_living_fraction river_marine))) 15)
		(sleep 90)
		(ai_retreat river_marine)
		(sleep 45)
		(wake mission_river_retreat)
		(sleep_until
			(= 0.00
				(ai_living_fraction river_marine)) 15)
		(ai_migrate river_wave river_wave/wave_2_retreat)
		(ai_follow_target_players river_wave)))

(script dormant void obj_river_abandon
	(begin
		(deactivate_team_nav_point_flag player cliff_nav_flag)
		(deactivate_team_nav_point_flag player rubble_nav_flag)
		(deactivate_team_nav_point_flag player river_nav_flag)
		(sleep_until
			(not
				(volume_test_objects_all river_all
					(players))) 15)
		(if global_two_marine_rescued
			(begin
				(ai_conversation river_abandon_final))
			(if global_river_dead
				(begin
					(sleep -1))
				(if global_river_all_killed
					(begin
						(ai_conversation river_abandon_killed))
					(if global_river_welcome
						(begin
							(ai_conversation river_abandon_welcome))
						(if true
							(begin
								(ai_conversation river_abandon)))))))))

(script dormant void obj_river_all_killed
	(begin
		(sleep_until
			(or global_river_end
				(= 0
					(ai_living_count river_marine))) 15)
		(sleep 60)
		(if
			(not global_river_end)
			(set global_river_all_killed true))
		(if
			(and
				(volume_test_objects river_all
					(players))
				(not global_river_end))
			(ai_conversation river_all_killed))
		(if
			(not
				(and global_rubble_end global_cliff_end))
			(set global_river_end true))))

(script dormant void mission_river_wave_1
	(begin
		(ai_place river_wave/wave_1_toon)
		(objects_predict
			(ai_actors river_wave))
		(ai_disregard
			(ai_actors river_marine) true)))

(script dormant void mission_river_wave_2
	(begin
		(ai_place river_wave/wave_3_lz_toon)
		(objects_predict
			(ai_actors river_wave))
		(set global_river_wave_2 true)
		(sleep_until
			(volume_test_objects_all river_attack
				(players)) 15)
		(ai_retreat river_wave/wave_3_jackal)
		(sleep 300)
		(ai_retreat river_wave/wave_3_lz_toon)
		(ai_magically_see_players river_wave)
		(ai_magically_see_encounter river_wave river_marine)
		(sleep delay_late)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_3_attack_toon)
		(sleep delay_late)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_3_defend_toon)))

(script dormant void mission_river_wave_3
	(begin
		(object_create river_boat_cship)
		(unit_close river_boat_cship)
		(ai_place river_wave/wave_2_lz_toon)
		(ai_disregard
			(ai_actors river_wave/wave_2_lz_toon) true)
		(ai_braindead river_wave/wave_2_lz_toon true)
		(vehicle_load_magic river_boat_cship passenger
			(ai_actors river_wave/wave_2_lz_toon))
		(object_teleport river_boat_cship river_boat_cship_flag)
		(recording_play_and_hover river_boat_cship river_boat_cship_enter)
		(objects_predict river_boat_cship)
		(sleep
			(recording_time river_boat_cship))
		(ai_disregard
			(ai_actors river_wave/wave_2_lz_toon) false)
		(ai_disregard
			(ai_actors river_marine) false)
		(ai_magically_see_encounter river_marine river_wave)
		(sleep_until
			(not
				(volume_test_objects river_boat_lz
					(players))) 15)
		(vehicle_hover river_boat_cship false)
		(recording_play_and_hover river_boat_cship river_boat_cship_drop)
		(sleep
			(max 0.00
				(-
					(recording_time river_boat_cship) 60.00)))
		(unit_open river_boat_cship)
		(ai_braindead river_wave/wave_2_lz_toon false)
		(sleep 60)
		(begin_random
			(begin
				(vehicle_unload river_boat_cship cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload river_boat_cship cd-passengerr04)
				(sleep 5)))
		(set global_river_wave_3 true)
		(sleep 120)
		(vehicle_hover river_boat_cship false)
		(recording_play_and_delete river_boat_cship river_boat_cship_exit)
		(sleep 30)
		(unit_close river_boat_cship)
		(sleep_until
			(volume_test_objects_all river_attack
				(players)) 15)
		(ai_retreat river_wave/wave_2_grunt)
		(sleep 300)
		(ai_retreat river_wave/wave_2_lz_toon)
		(ai_magically_see_players river_wave)
		(ai_magically_see_encounter river_wave river_marine)
		(sleep delay_late)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_2_attack_toon)
		(sleep delay_late)
		(sleep_until
			(volume_test_objects_all river_retreat
				(players)) 15)
		(ai_retreat river_wave/wave_2_defend_toon)))

(script continuous void cont_river_kill
	(begin
		(sleep_until test_river_kill 10)
		(sleep_until
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors river_wave) 0) 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players)
					(list_get
						(ai_actors river_wave) 0) 40.00))
			(object_destroy
				(list_get
					(ai_actors river_wave) 0)))))

(script dormant void mission_river
	(begin
		(sleep_until
			(or
				(volume_test_objects river_1
					(players))
				(volume_test_objects river_2
					(players))) 15)
		(set global_river_start true)
		(if
			(or global_cliff_end global_rubble_end)
			(set cont_banshee_kill true))
		(wake save_river_arrival)
		(wake mission_river_marine)
		(wake mission_river_wave_1)
		(sleep_until
			(volume_test_objects river_attack
				(players)) 15)
		(sleep_until
			(game_safe_to_speak) 1)
		(ai_conversation river_arrival)
		(deactivate_team_nav_point_flag player cliff_nav_flag)
		(deactivate_team_nav_point_flag player rubble_nav_flag)
		(deactivate_team_nav_point_flag player river_nav_flag)
		(sleep_until
			(< 4
				(ai_conversation_status river_arrival)) 1 delay_dawdle)
		(wake save_river_welcome)
		(ai_conversation river_welcome)
		(sleep_until
			(volume_test_objects river_retreat
				(players)) 1 delay_late)
		(sleep_until
			(< 4
				(ai_conversation_status river_welcome)) 1 delay_dawdle)
		(set global_river_welcome true)
		(wake obj_river_abandon)
		(wake obj_river_all_killed)
		(wake mission_river_wave_2)
		(ai_disregard
			(ai_actors river_wave) false)
		(ai_disregard
			(ai_actors river_marine) false)
		(sleep_until global_river_wave_2 5)
		(sleep_until
			(> 0.50
				(ai_living_fraction river_wave)) 15)
		(ai_migrate river_wave river_wave/wave_2_retreat)
		(ai_maneuver_enable river_wave false)
		(ai_follow_target_players river_wave)
		(sleep_until
			(> 9
				(ai_living_count river_wave)) 15 delay_late)
		(if
			(< 6
				(ai_living_count river_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(ai_follow_target_disable river_wave)
		(ai_maneuver_enable river_wave true)
		(wake save_river_wave_2)
		(wake mission_river_wave_3)
		(sleep_until global_river_wave_3 5)
		(if
			(and global_rubble_end global_cliff_end)
			(set play_music_a30_07 true))
		(sleep_until
			(> 6
				(ai_living_count river_wave)) 15)
		(ai_migrate river_wave river_wave/wave_2_retreat)
		(ai_maneuver_enable river_wave false)
		(ai_follow_target_players river_wave)
		(ai_magically_see_players river_wave)
		(sleep_until
			(= 0
				(ai_living_count river_wave)) 15 delay_late)
		(if
			(not
				(or global_river_all_killed
					(= 0
						(ai_living_count river_wave))))
			(ai_conversation river_cleanup))
		(sleep_until
			(= 0
				(ai_living_count river_wave)) 15 delay_lost)
		(if
			(< 0
				(ai_living_count river_wave))
			(sleep_until
				(game_all_quiet) 1 delay_dawdle))
		(set test_river_kill true)
		(ai_conversation_stop river_welcome)
		(sleep delay_calm)
		(set global_river_end true)
		(set global_river_dead true)
		(sleep 10)
		(set play_music_a30_07 false)
		(if
			(and global_rubble_end global_cliff_end)
			(wake mission_extraction_river))
		(if
			(and global_rubble_end global_cliff_end)
			(set global_extraction true))
		(if
			(and global_rubble_end global_cliff_end)
			(sleep -1))
		(if global_river_all_killed
			(ai_conversation river_abandon_killed))
		(if global_river_all_killed
			(sleep -1))
		(sleep 10)
		(object_create foehammer_river)
		(unit_set_enterable_by_player foehammer_river false)
		(if
			(or
				(volume_test_objects river_all jeep)
				(volume_test_objects river_all jeep2)
				(volume_test_objects river_all jeep3))
			(begin
				(sleep 1))
			(if mark_jeep3
				(begin
					(sleep 1))
				(if mark_jeep2
					(begin
						(begin
							(object_create jeep3)
							(unit_enter_vehicle jeep3 foehammer_river cargo)
							(set mark_jeep3 true)))
					(if true
						(begin
							(begin
								(object_create jeep2)
								(unit_enter_vehicle jeep2 foehammer_river cargo)
								(set mark_jeep2 true)))))))
		(object_teleport foehammer_river foehammer_river_flag)
		(recording_play_and_hover foehammer_river foehammer_river_in)
		(sleep 210)
		(ai_migrate river_marine river_marine/waiting_marine)
		(sleep
			(recording_time foehammer_river))
		(unit_exit_vehicle jeep)
		(unit_exit_vehicle jeep2)
		(unit_exit_vehicle jeep3)
		(set global_river_marine_rescued true)
		(wake save_river_rescued)
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects river_all jeep)
				(begin
					(ai_go_to_vehicle river_marine jeep gunner))
				(if
					(volume_test_objects river_all jeep2)
					(begin
						(ai_go_to_vehicle river_marine jeep2 gunner))
					(if
						(volume_test_objects river_all jeep3)
						(begin
							(ai_go_to_vehicle river_marine jeep3 gunner))))))
		(if
			(game_is_cooperative)
			(begin
				(sleep 1))
			(if
				(volume_test_objects river_all jeep)
				(begin
					(ai_go_to_vehicle river_marine jeep passenger))
				(if
					(volume_test_objects river_all jeep2)
					(begin
						(ai_go_to_vehicle river_marine jeep2 passenger))
					(if
						(volume_test_objects river_all jeep3)
						(begin
							(ai_go_to_vehicle river_marine jeep3 passenger))))))
		(ai_go_to_vehicle river_marine foehammer_river riderlb)
		(ai_go_to_vehicle river_marine foehammer_river riderrb)
		(ai_go_to_vehicle river_marine foehammer_river riderlm)
		(ai_go_to_vehicle river_marine foehammer_river riderrm)
		(sleep_until
			(= 0
				(ai_going_to_vehicle foehammer_river)) 15)
		(sleep 60)
		(vehicle_hover foehammer_river false)
		(recording_play_and_delete foehammer_river foehammer_river_out)))

(script continuous void cont_banshee_kill
	(begin
		(sleep_until cont_banshee_kill 10)
		(sleep_until
			(not
				(objects_can_see_object
					(players) mid_banshee_1 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players) mid_banshee_1 40.00))
			(begin
				(object_destroy mid_banshee_1)
				(ai_erase mid_banshee/pilot_1)))
		(sleep_until
			(not
				(objects_can_see_object
					(players) mid_banshee_2 40.00)) 10)
		(sleep 75)
		(if
			(not
				(objects_can_see_object
					(players) mid_banshee_2 40.00))
			(begin
				(object_destroy mid_banshee_2)
				(ai_erase mid_banshee/pilot_2)))))

(script dormant void mission_mid_banshee
	(begin
		(object_create mid_banshee_1)
		(unit_set_enterable_by_player mid_banshee_1 false)
		(object_create mid_banshee_2)
		(unit_set_enterable_by_player mid_banshee_2 false)
		(ai_place mid_banshee)
		(vehicle_load_magic mid_banshee_1 driver
			(ai_actors mid_banshee/pilot_1))
		(object_teleport mid_banshee_1 mid_banshee_flag_1)
		(vehicle_load_magic mid_banshee_2 driver
			(ai_actors mid_banshee/pilot_2))
		(object_teleport mid_banshee_2 mid_banshee_flag_2)
		(objects_predict mid_banshee_1)))

(script dormant void mission_mid_cliff_1
	(begin
		(ai_place mid_cliff_1)
		(object_create midcliff_cship_1)
		(object_teleport midcliff_cship_1 midcliff_1_flag)
		(vehicle_hover midcliff_cship_1 true)
		(objects_predict
			(ai_actors mid_cliff_1))
		(objects_predict midcliff_cship_1)
		(sleep_until
			(or
				(volume_test_objects midcliff_1_trigger
					(players))
				(<
					(ai_strength mid_cliff_1) 0.90)
				(objects_can_see_object
					(players) midcliff_cship_1 5.00)) 1)
		(vehicle_hover midcliff_cship_1 false)
		(recording_play_and_delete midcliff_cship_1 midcliff_1_cship_exit)))

(script dormant void mission_mid_cliff_2
	(begin
		(ai_place mid_cliff_2)
		(object_create midcliff_cship_2)
		(object_teleport midcliff_cship_2 midcliff_2_flag)
		(vehicle_hover midcliff_cship_2 true)
		(objects_predict
			(ai_actors mid_cliff_2))
		(objects_predict midcliff_cship_2)
		(sleep_until
			(or
				(volume_test_objects midcliff_2_trigger
					(players))
				(<
					(ai_strength mid_cliff_2) 0.90)
				(objects_can_see_object
					(players) midcliff_cship_2 5.00)) 1)
		(vehicle_hover midcliff_cship_2 false)
		(recording_play_and_delete midcliff_cship_2 midcliff_2_cship_exit)))

(script dormant void mission_mid_rubble_1
	(begin
		(ai_place mid_rubble_1)
		(object_create midrubble_cship_1)
		(object_teleport midrubble_cship_1 midrubble_1_flag)
		(vehicle_hover midrubble_cship_1 true)
		(objects_predict
			(ai_actors mid_rubble_1))
		(objects_predict midrubble_cship_1)
		(sleep_until
			(or
				(volume_test_objects midrubble_1_trigger
					(players))
				(<
					(ai_strength mid_rubble_1) 0.90)
				(objects_can_see_object
					(players) midrubble_cship_1 5.00)) 1)
		(vehicle_hover midrubble_cship_1 false)
		(recording_play_and_delete midrubble_cship_1 midrubble_1_cship_exit)))

(script dormant void mission_mid_river_1
	(begin
		(ai_place mid_river_1)
		(object_create midriver_cship_1)
		(object_teleport midriver_cship_1 midriver_1_flag)
		(vehicle_hover midriver_cship_1 true)
		(objects_predict
			(ai_actors mid_river_1))
		(objects_predict midriver_cship_1)
		(sleep_until
			(or
				(volume_test_objects midriver_1_trigger
					(players))
				(<
					(ai_strength mid_river_1) 0.90)
				(objects_can_see_object
					(players) midriver_cship_1 5.00)) 1)
		(vehicle_hover midriver_cship_1 false)
		(recording_play_and_delete midriver_cship_1 midriver_1_cship_exit)))

(script dormant void mission_obj
	(begin
		(sleep_until
			(or global_cliff_end global_rubble_end global_river_end) 15)
		(set mark_search2 true)
		(if
			(volume_test_objects_all cliff_all
				(players))
			(begin
				(begin
					(wake mission_mid_rubble_1)))
			(if
				(volume_test_objects_all rubble_all
					(players))
				(begin
					(begin
						(wake mission_mid_cliff_1)
						(wake mission_mid_river_1)))
				(if
					(volume_test_objects_all river_all
						(players))
					(begin
						(begin
							(wake mission_mid_cliff_2)
							(ai_place mid_rubble_2))))))
		(wake mission_mid_banshee)
		(if
			(and global_cliff_end
				(not global_cliff_dead))
			(begin
				(sleep 1))
			(if
				(and global_river_end
					(not global_river_dead))
				(begin
					(sleep 1))
				(if
					(and global_rubble_end
						(not global_rubble_dead))
					(begin
						(sleep 1))
					(if
						(and global_cliff_end
							(not global_cliff_all_killed))
						(begin
							(wake cutscene_one_rescued_cliff))
						(if
							(and global_rubble_end
								(not global_rubble_all_killed))
							(begin
								(wake cutscene_one_rescued_rubble))
							(if
								(and global_river_end
									(not global_river_all_killed))
								(begin
									(wake cutscene_one_rescued_river))
								(if true
									(begin
										(wake dialog_one_rescued_killed)))))))))
		(sleep_until
			(not
				(or
					(volume_test_objects_all cliff_all
						(players))
					(volume_test_objects_all rubble_all
						(players))
					(volume_test_objects_all river_all
						(players)))) 1)
		(sleep_until
			(or
				(and global_cliff_end global_rubble_end)
				(and global_cliff_end global_river_end)
				(and global_rubble_end global_river_end)) 15 delay_lost)
		(if
			(not
				(or
					(and global_cliff_start global_rubble_start
						(or
							(volume_test_objects cliff_all
								(players))
							(volume_test_objects rubble_all
								(players))))
					(and global_cliff_start global_river_start
						(or
							(volume_test_objects cliff_all
								(players))
							(volume_test_objects river_all
								(players))))
					(and global_rubble_start global_river_start
						(or
							(volume_test_objects rubble_all
								(players))
							(volume_test_objects river_all
								(players))))))
			(begin
				(wake dialog_one_rescued_prompt)
				(if
					(and global_cliff_end global_rubble_end)
					(begin
						(sleep 1))
					(if
						(and global_cliff_end global_river_end)
						(begin
							(sleep 1))
						(if
							(and global_rubble_end global_river_end)
							(begin
								(sleep 1))
							(if
								(not global_river_end)
								(begin
									(activate_team_nav_point_flag default_red player river_nav_flag 0.00))
								(if
									(not global_rubble_end)
									(begin
										(activate_team_nav_point_flag default_red player rubble_nav_flag 0.00))
									(if
										(not global_cliff_end)
										(begin
											(activate_team_nav_point_flag default_red player cliff_nav_flag 0.00))))))))))
		(sleep_until
			(or
				(and global_cliff_end global_rubble_end)
				(and global_cliff_end global_river_end)
				(and global_rubble_end global_river_end)) 15)
		(set mark_search3 true)
		(if
			(volume_test_objects_all cliff_all
				(players))
			(begin
				(begin
					(wake mission_mid_rubble_1)))
			(if
				(volume_test_objects_all rubble_all
					(players))
				(begin
					(begin
						(wake mission_mid_cliff_1)
						(wake mission_mid_river_1)))
				(if
					(volume_test_objects_all river_all
						(players))
					(begin
						(begin
							(wake mission_mid_cliff_2)
							(ai_place mid_rubble_2))))))
		(if
			(and
				(volume_test_objects_all cliff_all
					(players)) global_cliff_end
				(not global_cliff_dead))
			(begin
				(sleep 1))
			(if
				(and
					(volume_test_objects_all rubble_all
						(players)) global_rubble_end
					(not global_rubble_dead))
				(begin
					(sleep 1))
				(if
					(and
						(volume_test_objects_all river_all
							(players)) global_river_end
						(not global_river_dead))
					(begin
						(sleep 1))
					(if
						(and
							(volume_test_objects_all cliff_all
								(players)) global_cliff_end
							(not global_cliff_all_killed))
						(begin
							(wake dialog_two_rescued))
						(if
							(and
								(volume_test_objects_all rubble_all
									(players)) global_rubble_end
								(not global_rubble_all_killed))
							(begin
								(wake dialog_two_rescued))
							(if
								(and
									(volume_test_objects_all river_all
										(players)) global_river_end
									(not global_river_all_killed))
								(begin
									(wake dialog_two_rescued))
								(if
									(and
										(not
											(volume_test_objects_all cliff_all
												(players)))
										(not
											(volume_test_objects_all rubble_all
												(players)))
										(not
											(volume_test_objects_all river_all
												(players))))
									(begin
										(sleep 1))
									(if true
										(begin
											(wake dialog_two_rescued_killed))))))))))
		(sleep_until
			(not
				(or
					(volume_test_objects_all cliff_all
						(players))
					(volume_test_objects_all rubble_all
						(players))
					(volume_test_objects_all river_all
						(players)))) 1)
		(sleep_until
			(and global_cliff_end global_rubble_end global_river_end) 15 delay_dawdle)
		(ai_conversation third_driving)
		(sleep_until
			(and global_cliff_end global_rubble_end global_river_end) 15 delay_lost)
		(if
			(not
				(and global_cliff_start global_rubble_start global_river_start))
			(wake dialog_two_rescued_prompt))
		(if
			(not
				(and global_cliff_start global_rubble_start global_river_start
					(or
						(volume_test_objects_all cliff_all
							(players))
						(volume_test_objects_all rubble_all
							(players))
						(volume_test_objects_all river_all
							(players)))))
			(if
				(and global_rubble_end global_river_end)
				(begin
					(activate_team_nav_point_flag default_red player cliff_nav_flag 0.00))
				(if
					(and global_cliff_end global_river_end)
					(begin
						(activate_team_nav_point_flag default_red player rubble_nav_flag 0.00))
					(if
						(and global_rubble_end global_cliff_end)
						(begin
							(activate_team_nav_point_flag default_red player river_nav_flag 0.00))))))))

(script static void cutscene_intro
	(begin
		(objects_predict intro_pod)
		(object_beautify intro_pod true)
		(cinematic_start)
		(camera_control true)
		(fade_out 0.00 0.00 0.00 0)
		(camera_set intro_1 0)
		(camera_set intro_2 210)
		(fade_in 0.00 0.00 0.00 30)
		(sound_looping_start sound\sinomatixx\a30_insertion_foley none 1.00)
		(sound_looping_start sound\sinomatixx\a30_insertion_music none 1.00)
		(sleep 90)
		(cinematic_set_title arrival)
		(sleep 30)
		(camera_set intro_3 150)
		(object_destroy intro_pod)
		(object_destroy pilot_intro)
		(object_create pilot_intro)
		(object_create intro_pod)
		(objects_attach intro_pod driver pilot_intro )
		(custom_animation pilot_intro cinematics\animations\pilot\x30\x30 idle false)
		(game_skip_ticks 5)
		(object_teleport intro_pod intro_pod_flag)
		(recording_play intro_pod intro_pod_fly)
		(sleep 60)
		(sound_impulse_start sound\dialog\a30\a30_insert_010_cortana none 1.00)
		(sleep 30)
		(sleep
			(camera_time))
		(fade_out 1.00 1.00 1.00 10)
		(sleep 10)
		(camera_set_relative intro_pod_follow 0 intro_pod)
		(sound_impulse_start sound\dialog\a30\a30_insert_020_lifeboatpilot none 1.00)
		(print pilot: damn! airbrake failure! we're losing them!)
		(player_effect_set_max_rumble 0.30 0.30)
		(player_effect_start 1.00 1.00)
		(fade_in 1.00 1.00 1.00 10)
		(sleep 30)
		(custom_animation intro_pod vehicles\lifepod_entry\lifepod_entry vehicle airbrakes-off true)
		(print <airbrakes pop off>)
		(sleep 90)
		(fade_out 1.00 1.00 1.00 10)
		(sleep 10)
		(objects_detach intro_pod pilot_intro)
		(object_destroy intro_pod)
		(object_destroy pilot_intro)
		(object_create_anew intro_pod_2)
		(object_create_anew chief)
		(object_create_anew pilot_intro)
		(objects_attach intro_pod_2 driver pilot_intro )
		(custom_animation pilot_intro cinematics\animations\pilot\x30\x30 heads_up false)
		(game_skip_ticks 5)
		(unit_enter_vehicle chief intro_pod_2 stand)
		(object_teleport intro_pod_2 intro_pod_2_base)
		(cinematic_set_near_clip_distance 0.01)
		(camera_set_first_person chief)
		(recording_play chief chief_intro_cam)
		(recording_play intro_pod_2 intro_pod_fly_2)
		(player_effect_set_max_rotation 0.00 0.50 0.50)
		(player_effect_set_max_rumble 0.50 0.50)
		(fade_in 1.00 1.00 1.00 10)
		(sound_impulse_start sound\dialog\a30\a30_insert_030_lifeboatpilot none 1.00)
		(sleep 165)
		(sound_impulse_start sound\sfx\vehicles\lifeboat_crash none 1.00)
		(fade_out 1.00 1.00 1.00 0)
		(camera_control false)
		(sleep 30)
		(player_effect_set_max_rumble 1.00 1.00)
		(player_effect_stop 4.00)
		(object_destroy intro_tree)
		(object_destroy chief)
		(object_destroy pilot_intro)
		(object_destroy intro_pod_2)
		(sleep 90)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 1 1 3.00 0.00 7.00)))

(script static void intro_build
	(begin
		(object_teleport intro_pod_2 intro_pod_2_base)))

(script dormant void setup_dead
	(begin
		(object_create pilot_intro)
		(object_create dead_marine_1)
		(object_create dead_marine_2)
		(object_create dead_marine_3)
		(objects_attach pod_of_death rider left b dead_marine_1 )
		(objects_attach pod_of_death rider right c dead_marine_2 )
		(objects_attach pod_of_death rider right a dead_marine_3 )
		(objects_attach pod_of_death driver pilot_intro )
		(custom_animation dead_marine_1 cinematics\animations\marines\x30\x30 death_pose_1 false)
		(custom_animation dead_marine_2 cinematics\animations\marines\x30\x30 death_pose_2 false)
		(custom_animation dead_marine_3 cinematics\animations\marines\x30\x30 death_pose_1 false)
		(custom_animation pilot_intro cinematics\animations\pilot\x30\x30 death_pose false)
		(ai_disregard pilot_intro true)
		(ai_disregard dead_marine_1 true)
		(ai_disregard dead_marine_2 true)
		(ai_disregard dead_marine_3 true)))

(script static void death_pod_load
	(begin
		(object_destroy pilot_intro)
		(object_destroy dead_marine_1)
		(object_destroy dead_marine_2)
		(object_destroy dead_marine_3)))

(script startup void mission_a30
	(begin
		(hud_show_motion_sensor false)
		(fade_out 0.00 0.00 0.00 0)
		(print mission script is running)
		(ai_allegiance player human)
		(if mission_a30 mission_a30) mission_a30
		(wake setup_dead)
		(fade_out 1.00 1.00 1.00 0)
		(cinematic_show_letterbox true)
		(player_camera_control false)
		(player_enable_input false)
		(show_hud false)
		(sleep 30)
		(fade_in 1.00 1.00 1.00 120)
		(sleep 30)
		(ai_conversation intro_1)
		(sleep 120)
		(cinematic_show_letterbox false)
		(player_camera_control true)
		(player_enable_input true)
		(hud_show_motion_sensor true)
		(show_hud true)
		(cinematic_stop)
		(wake objectives_a30)
		(wake music_a30)
		(sleep_until
			(not
				(volume_test_objects_all lz_lifeboat
					(players))) 1)
		(wake save_mission_start)
		(ai_conversation intro_1b)
		(wake mission_lz)
		(wake mission_first)
		(wake mission_cave)
		(sleep_until
			(volume_test_objects cave_exit
				(players)) 1)
		(wake mission_cliff)
		(wake mission_rubble)
		(wake mission_river)
		(wake mission_obj)
		(set play_music_a30_06 true)
		(sleep 30)
		(show_hud false)
		(cinematic_show_letterbox true)
		(sleep 30)
		(cinematic_set_title reunion)
		(sleep 150)
		(cinematic_show_letterbox false)
		(show_hud true)
		(game_save_no_timeout)
		(sleep_until
			(or global_cliff_start global_rubble_start global_river_start) 1)
		(set play_music_a30_06 false)))

(script startup void mission_killer
	(begin
		(sleep_until global_extraction 1)
		(sleep -1 mission_cliff)
		(sleep -1 mission_rubble)
		(sleep -1 mission_river)))
