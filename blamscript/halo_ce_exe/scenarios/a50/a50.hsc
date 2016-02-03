(global bool global_dialog_on false)

(global bool global_music_on false)

(global long global_delay_music
	(* 30.00 300.00))

(global long global_delay_music_alt
	(* 30.00 300.00))

(global bool mission_begin false)

(global bool area2_marine_migrate false)

(global bool area2_marine_migrate_2 false)

(global long default_encounter_delay 150)

(global long default_gravity_delay 150)

(global long default_muster_delay 150)

(global long default_sleep_expire 450)

(global short area4_location_index 0)

(global long default_turret_gunner_delay
	(* 30.00 30.00))

(global bool area4_covenant_reins true)

(global bool area4_pelican_a true)

(global bool area4_cov_dropship true)

(global bool area4_marine_reins true)

(global bool area5_pelican true)

(global bool area5_e_spawn true)

(global short area5_e_spawn_counter 0)

(global short area5_e_squad_index 2)

(global bool area5_g_spawn true)

(global short area5_g_spawn_counter 0)

(global short area5_g_squad_index 2)

(global bool area5_o_spawn true)

(global short area5_o_spawn_counter 0)

(global short area5_o_squad_index 2)

(global bool area5_q_spawn true)

(global short area5_q_spawn_counter 0)

(global short area5_q_squad_index 2)

(global bool muster_bay_door_unlocked false)

(global bool grav_frontleft true)

(global bool grav_rearleft true)

(global bool grav_frontright true)

(global bool grav_rearright true)

(global short gravity_enc_index 0)

(global short enc_grav_frontleft_index 2)

(global short enc_grav_frontright_index 2)

(global short enc_grav_rearleft_index 2)

(global short enc_grav_rearright_index 2)

(global bool gravity_wave false)

(global short ini_grav_wave_index 0)

(global short gravity_wave_index 0)

(global short grav_cov_limit 1)

(global long grav_frontleft_delay 60)

(global long grav_frontright_delay 60)

(global long grav_rearleft_delay 60)

(global long grav_rearright_delay 60)

(global long grav_mar_return_delay 270)

(global bool grav_mus_hall true)

(global short grav_mus_hall_index 0)

(global short enc_grav_mus_hall_index 1)

(global bool muster_ledge false)

(global short ini_muster_ledge_index 2)

(global short muster_ledge_index 0)

(global bool muster_door_nav true)

(global bool muster_l1 true)

(global bool muster_l2 true)

(global bool muster_l3 true)

(global bool muster_r1 true)

(global bool muster_r2 true)

(global bool muster_r3 true)

(global short muster_enc_index 0)

(global short enc_mus_bot_l1_index 2)

(global short enc_mus_bot_l2_index 2)

(global short enc_mus_bot_l3_index 2)

(global short enc_mus_bot_r1_index 2)

(global short enc_mus_bot_r2_index 2)

(global short enc_mus_bot_r3_index 2)

(global bool muster_wave false)

(global short ini_muster_wave_index 0)

(global short muster_wave_index 0)

(global short muster_cov_limit 1)

(global short hangar_location_index 0)

(global bool pelican_hangar_a_trigger true)

(global bool captain_rescued false)

(global short player_location_index 0)

(global bool play_music_a50_01 true)

(global bool play_music_a50_02 true)

(global bool play_music_a50_03 true)

(global bool play_music_a50_04 true)

(global bool play_music_a50_05 true)

(global bool play_music_a50_06 true)

(global bool play_music_a50_07 true)

(global bool play_music_a50_071 true)

(global bool play_music_a50_072 true)

(global bool play_music_a50_08 true)

(global bool play_music_a50_09 true)

(global bool play_music_a50_10 true)

(global bool play_music_a50_11 true)

(global bool area4_turret_spawn true)

(global short area4_turret_counter 0)

(global short area4_turret_limit 0)

(global bool area5_turret_spawn true)

(global short area5_turret_counter 0)

(global short area5_turret_limit 0)

(global short area5_index 2)

(global long area5_spawn_delay 120)

(global bool hangar_first_a true)

(global short hangar_first_counter_a 0)

(global short hangar_first_limit_a 2)

(global bool hangar_first_e true)

(global short hangar_first_counter_e 0)

(global short hangar_first_limit_e 2)

(global bool hangar_first_i true)

(global short hangar_first_counter_i 0)

(global short hangar_first_limit_i 2)

(global bool hangar_first_q true)

(global short hangar_first_counter_q 0)

(global short hangar_first_limit_q 2)

(global bool hangar_first_s true)

(global short hangar_first_counter_s 0)

(global short hangar_first_limit_s 1)

(global bool hangar_first_y true)

(global short hangar_first_counter_y 0)

(global short hangar_first_limit_y 2)

(global bool hangar_second_a true)

(global short hangar_second_counter_a 0)

(global short hangar_second_limit_a 2)

(global bool hangar_second_e true)

(global short hangar_second_counter_e 0)

(global short hangar_second_limit_e 2)

(global bool hangar_second_i true)

(global short hangar_second_counter_i 0)

(global short hangar_second_limit_i 2)

(global bool hangar_second_q true)

(global short hangar_second_counter_q 0)

(global short hangar_second_limit_q 2)

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

(script continuous void general_save
	(begin
		(if
			(= mission_begin false)
			(sleep -1))
		(game_save_no_timeout)
		(sleep -1)))

(script static void cutscene_rescue
	(begin
		(switch_bsp 3)
		(sound_looping_start sound\sinomatixx_music\a50_rescue_music none 1.00)
		(sound_looping_start sound\sinomatixx_foley\a50_rescue_foley1 none 1.00)
		(sound_class_set_gain device_door 0.00 0)
		(cinematic_start)
		(camera_control true)
		(object_create_anew keyes)
		(object_create_anew chief)
		(object_create_anew chief_ar)
		(object_pvs_activate chief)
		(object_beautify chief true)
		(object_beautify keyes true)
		(unit_set_emotion keyes 1)
		(object_teleport keyes keyes_rescue_base)
		(objects_attach chief right hand chief_ar )
		(camera_set rescue_1b 0)
		(custom_animation keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison1 false)
		(custom_animation chief cinematics\animations\chief\level_specific\a50\a50 a50helpkeyesup false)
		(object_teleport chief chief_helpup_base)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(sound_impulse_start sound\dialog\a50\a50_prison_020_captkeyes keyes 1.00)
		(print keyes: coming here was reckless. you two know better than this. thank you.)
		(sleep 45)
		(camera_set rescue_1c 0)
		(sleep 60)
		(camera_set rescue_1d 0)
		(camera_set rescue_1e 90)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_020_captkeyes))
		(object_create_anew_containing marine_speech)
		(object_create_anew marine1_plasma)
		(object_create_anew marine2_plasma)
		(object_create_anew marine3_plasma)
		(object_create_anew keyes_needler)
		(object_beautify marine_speech_1 true)
		(object_beautify marine1_plasma true)
		(object_beautify keyes_needler true)
		(objects_attach marine_speech_1 right hand marine1_plasma )
		(objects_attach marine_speech_2 right hand marine2_plasma )
		(objects_attach marine_speech_3 right hand marine3_plasma )
		(unit_stop_custom_animation keyes)
		(object_teleport keyes keyes_walk_base)
		(object_teleport chief chief_walk_base)
		(recording_play keyes keyes_walk_1)
		(camera_set keyes_walk_1a 0)
		(camera_set keyes_walk_1b 250)
		(sleep 60)
		(recording_play chief chief_walk_1)
		(sleep 30)
		(sound_impulse_start sound\dialog\a50\a50_prison_030_captkeyes keyes 1.00)
		(print keyes: marines!  secure weapons and get ready to move a-sap!)
		(camera_set keyes_walk_1c 250)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_030_captkeyes))
		(sound_impulse_start sound\dialog\a50\a50_prison_040_marines marine_speech_1 1.00)
		(sound_impulse_start sound\dialog\a50\a50_prison_040_marines marine_speech_2 1.00)
		(sound_impulse_start sound\dialog\a50\a50_prison_040_marines marine_speech_3 1.00)
		(object_teleport marine_speech_1 marine1_run_base)
		(object_teleport marine_speech_2 marine2_run_base)
		(object_teleport marine_speech_3 marine3_run_base)
		(recording_play marine_speech_1 marine1_run)
		(recording_play marine_speech_2 marine2_run)
		(recording_play marine_speech_3 marine3_run)
		(sleep 30)
		(sleep
			(-
				(recording_time keyes) 150.00))
		(custom_animation keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison2 false)
		(camera_set let_slip_1a 0)
		(camera_set let_slip_1b 300)
		(unit_set_emotion keyes 3)
		(sleep 20)
		(sound_impulse_start sound\dialog\a50\a50_prison_060_captkeyes keyes 1.00)
		(print keyes: while the covenant had us locked up in here the guards let slip some intel about this ring world. they call it halo)
		(sleep 200)
		(recording_kill chief)
		(object_teleport chief chief_speech_base)
		(unit_set_seat chief alert)
		(sleep
			(-
				(sound_impulse_time sound\dialog\a50\a50_prison_060_captkeyes) 15.00))
		(object_teleport marine_speech_1 marine1_speech_base)
		(object_teleport marine_speech_2 marine2_speech_base)
		(object_teleport marine_speech_3 marine3_speech_base)
		(recording_play marine_speech_1 marine1_look_keyes)
		(recording_play marine_speech_2 marine2_look_keyes)
		(recording_play marine_speech_3 marine3_look_keyes)
		(camera_set one_moment_1a 0)
		(camera_set one_moment_1b 400)
		(sound_looping_start sound\sinomatixx_foley\a50_rescue_foley2 none 1.00)
		(sound_impulse_start sound\dialog\a50\a50_prison_070_cortana chief 1.00)
		(print cortana: one moment, sir. accessing the covenant battle net. according to the data in their networks, the ring has some kind of deep religious significance.)
		(sleep 90)
		(custom_animation chief cinematics\animations\chief\level_specific\a50\a50 idle_shoulder gun true)
		(sleep 110)
		(camera_set one_moment_1c 400)
		(sleep
			(-
				(sound_impulse_time sound\dialog\a50\a50_prison_070_cortana) 30.00))
		(camera_set then_its_1a 0)
		(camera_set then_its_1b 90)
		(unit_custom_animation_at_frame keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison3 false 7)
		(sound_impulse_start sound\dialog\a50\a50_prison_080_captkeyes keyes 1.00)
		(print keyes: then it's true. the covenant kept saying that 'whomever controls halo controls the fate of the universe')
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_080_captkeyes))
		(camera_set long_shot_1a 0)
		(camera_set long_shot_1b 600)
		(object_teleport keyes keyes_chief_look_base)
		(recording_play keyes keyes_look_at_chief)
		(sound_impulse_start sound\dialog\a50\a50_prison_090_cortana chief 1.00)
		(print cortana: now i see. i have intercepted a number of message about a covenant search team, scouting for a 'control room'. i thought they were looking for the bridge of a cruiser that i damaged during the battle above the ring. but they  must be looking for halo's control room.)
		(sleep
			(-
				(sound_impulse_time sound\dialog\a50\a50_prison_090_cortana) 15.00))
		(object_teleport keyes keyes_speech_base)
		(unit_custom_animation_at_frame keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison4 false 11)
		(camera_set bad_news_1a 0)
		(camera_set bad_news_1b 300)
		(unit_set_emotion keyes 3)
		(unit_stop_custom_animation chief)
		(sound_impulse_start sound\dialog\a50\a50_prison_100_captkeyes keyes 1.00)
		(print keyes: that's bad news. if halo is a weapon, and the covenant gain control of it, they'll use it against us and will wipe the human race out, once and for all.)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_100_captkeyes))
		(camera_set mission_1d 0)
		(camera_set mission_1e 300)
		(custom_animation keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison5 true)
		(sleep 32)
		(sound_impulse_start sound\dialog\a50\a50_prison_110_captkeyes keyes 1.00)
		(print keyes: chief, cortana. i have a new mission for you. we need to beat the covenant to halo's control room.)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_110_captkeyes))
		(camera_set lets_move_1a 0)
		(camera_set lets_move_1b 200)
		(unit_custom_animation_at_frame keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison6 true 23)
		(sound_impulse_start sound\dialog\a50\a50_prison_120_captkeyes keyes 1.00)
		(print keyes: we need to get out of here. marines: let's move.)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_120_captkeyes))
		(sound_impulse_start sound\dialog\a50\a50_prison_130_marine1 marine_speech_1 1.00)
		(sleep 5)
		(sound_impulse_start sound\dialog\a50\a50_prison_130_marine2 marine_speech_2 1.00)
		(sleep 5)
		(sound_impulse_start sound\dialog\a50\a50_prison_130_marine3 marine_speech_3 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_130_marine3))
		(camera_set chief_point_1a 0)
		(camera_set chief_point_1b 60)
		(sound_looping_start sound\sinomatixx_foley\a50_rescue_foley3 none 1.00)
		(unit_stop_custom_animation keyes)
		(custom_animation keyes cinematics\animations\captain\level_specific\a50\a50 a50_prison7 true)
		(cinematic_set_title shut_up)
		(sleep 30)
		(objects_attach keyes right hand keyes_needler )
		(sleep 30)
		(cinematic_set_title sir)
		(sound_impulse_start sound\dialog\a50\a50_prison_140_captkeyes keyes 1.00)
		(print keyes: chief, you have the point.)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_prison_140_captkeyes))
		(fade_out 1.00 1.00 1.00 15)
		(sleep
			(- 120.00
				(sound_impulse_time sound\dialog\a50\a50_prison_140_captkeyes)))
		(object_destroy keyes)
		(object_destroy chief)
		(object_destroy_containing marine_speech)
		(object_destroy marine1_plasma)
		(object_destroy marine2_plasma)
		(object_destroy marine3_plasma)
		(object_destroy keyes_needler)
		(object_pvs_activate none)
		(sound_class_set_gain device_door 1.00 3)
		(sleep 120)
		(cinematic_stop)
		(camera_control false)
		(show_hud true)))

(script static void cutscene_extraction
	(begin
		(sound_looping_start sound\sinomatixx\a50_extraction_foley none 1.00)
		(cinematic_start)
		(camera_control true)
		(switch_bsp 2)
		(object_teleport cutscene_extraction player0_extract_base)
		(object_teleport cutscene_extraction player1_extract_base)
		(object_create_anew chief)
		(object_create_anew chief_ar)
		(object_create_anew extraction_dropship)
		(object_pvs_activate extraction_dropship)
		(object_teleport chief chief_extraction_base)
		(objects_attach chief right hand chief_ar )
		(camera_set chief_push_1a 0)
		(camera_set chief_push_1b 60)
		(unit_custom_animation_at_frame chief cinematics\animations\chief\level_specific\b30\b30 b30holomap true 130)
		(fade_in 1.00 1.00 1.00 15)
		(sound_looping_start sound\sinomatixx\a50_extraction_music none 1.00)
		(sleep 60)
		(object_teleport extraction_dropship extraction_dropship_base)
		(scenery_animation_start extraction_dropship cinematics\animations\c_dropship\level_specific\a50\a50 a50_dropship)
		(camera_set loose_1a 0)
		(sound_impulse_start sound\dialog\a50\a50_extract_010_cortana none 1.00)
		(print cortana: that's it, the dropship is loose.)
		(sleep 60)
		(camera_set loose_1b 340)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_extract_010_cortana))
		(sound_impulse_start sound\dialog\a50\a50_extract_020_captkeyes none 1.00)
		(print keyes: everyone get aboard!)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_extract_020_captkeyes))
		(object_destroy chief)
		(object_destroy chief_ar)
		(sleep
			(camera_time))
		(ai_erase_all)
		(camera_set interface_1a 0)
		(camera_set interface_1b 180)
		(sound_impulse_start sound\dialog\a50\a50_extract_030_cortana none 1.00)
		(print cortana: give me a minute to interface with the ship's controls...)
		(sleep
			(-
				(sound_impulse_time sound\dialog\a50\a50_extract_030_cortana) 15.00))
		(sound_impulse_start sound\dialog\a50\a50_extract_040_captkeyes none 1.00)
		(print keyes: no, i'll take this bird out myself.)
		(sleep 60)
		(object_create_anew final_hunter_1)
		(object_create_anew final_hunter_2)
		(object_teleport final_hunter_1 final_hunter_1_base)
		(object_teleport final_hunter_2 final_hunter_2_base)
		(recording_play final_hunter_1 hunter_1_run)
		(recording_play final_hunter_2 hunter_2_run)
		(sleep 60)
		(ai_attach final_hunter_1 hunters/hunters)
		(ai_attach final_hunter_2 hunters/hunters)
		(sound_impulse_start sound\dialog\a50\a50_extract_050_cortana none 1.00)
		(print cortana: captain! hunters!)
		(camera_set capt_hunters_1a 0)
		(camera_set capt_hunters_1b 120)
		(sleep 120)
		(sound_impulse_start sound\dialog\a50\a50_extract_060_captkeyes none 1.00)
		(print keyes: hang on!)
		(camera_set hang_on_1a 0)
		(camera_set hang_on_1b 90)
		(sound_looping_start sound\sinomatixx\a50_extraction_foley2 none 1.00)
		(sleep 90)
		(camera_set hunter_smash_1a 0)
		(camera_set hunter_smash_1b 90)
		(player_effect_set_max_rotation 0.00 0.50 0.50)
		(player_effect_set_max_rumble 0.50 0.50)
		(player_effect_start 1.00 0.00)
		(player_effect_stop 4.00)
		(sleep 30)
		(ai_kill hunters)
		(print hunters die horribly)
		(sleep 60)
		(camera_set final_flight_1a 0)
		(camera_set final_flight_1b 250)
		(sound_impulse_start sound\dialog\a50\a50_extract_070_aussie none 1.00)
		(print marine: nice one, sir!)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_extract_070_aussie))
		(sound_impulse_start sound\dialog\a50\a50_extract_080_captkeyes none 1.00)
		(print keyes: time for a little payback!)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_extract_080_captkeyes))
		(print marine chorus: hooray!)
		(sleep
			(camera_time))
		(fade_out 0.00 0.00 0.00 30)
		(sleep 30)
		(cinematic_stop)
		(camera_control false)
		(cinematic_screen_effect_stop)))

(script dormant void music_a50_01
	(begin
		(sound_looping_start levels\a50\music\a50_01 none 1.00)
		(sleep_until
			(not play_music_a50_01))
		(sound_looping_stop levels\a50\music\a50_01)))

(script dormant void music_a50_02
	(begin
		(sound_looping_start levels\a50\music\a50_02 none 1.00)
		(sleep_until
			(not play_music_a50_02))
		(sound_looping_stop levels\a50\music\a50_02)))

(script dormant void music_a50_03
	(begin
		(sound_looping_start levels\a50\music\a50_03 none 1.00)
		(sleep_until
			(not play_music_a50_03))
		(sound_looping_stop levels\a50\music\a50_03)))

(script dormant void music_a50_04
	(begin
		(sound_looping_start levels\a50\music\a50_04 none 1.00)
		(sleep_until
			(not play_music_a50_04))
		(sound_looping_stop levels\a50\music\a50_04)))

(script dormant void music_a50_05
	(begin
		(sound_looping_start levels\a50\music\a50_05 none 1.00)
		(if
			(=
				(game_difficulty_get) normal)
			(sleep_until
				(> gravity_wave_index 2)))
		(if
			(=
				(game_difficulty_get) hard)
			(sleep_until
				(> gravity_wave_index 4)))
		(if
			(=
				(game_difficulty_get) impossible)
			(sleep_until
				(> gravity_wave_index 6)))
		(sound_looping_set_alternate levels\a50\music\a50_05 true)
		(sleep_until
			(not play_music_a50_05))
		(sound_looping_stop levels\a50\music\a50_05)))

(script dormant void music_a50_06
	(begin
		(sound_looping_start levels\a50\music\a50_06 none 1.00)
		(sleep_until
			(not play_music_a50_06))
		(sound_looping_stop levels\a50\music\a50_06)))

(script dormant void music_a50_07
	(begin
		(sound_looping_start levels\a50\music\a50_07 none 1.00)
		(sleep_until
			(not play_music_a50_07))
		(sound_looping_stop levels\a50\music\a50_07)))

(script dormant void music_a50_071
	(begin
		(sound_looping_start levels\a50\music\a50_071 none 1.00)
		(sleep_until
			(not play_music_a50_071))
		(sound_looping_stop levels\a50\music\a50_071)))

(script dormant void music_a50_072
	(begin
		(sound_looping_start levels\a50\music\a50_072 none 1.00)
		(sleep_until
			(not play_music_a50_072))
		(sound_looping_stop levels\a50\music\a50_072)))

(script dormant void music_a50_08
	(begin
		(sleep_until
			(or
				(>
					(device_get_position control_door_a) 0.00)
				(>
					(device_get_position control_door_b) 0.00)
				(>
					(device_get_position control_door_c) 0.00)))
		(sound_looping_start levels\a50\music\a50_08 none 1.00)
		(sleep_until
			(not play_music_a50_08))
		(sound_looping_stop levels\a50\music\a50_08)))

(script dormant void music_a50_09
	(begin
		(sound_looping_start levels\a50\music\a50_09 none 1.00)
		(sleep_until
			(not play_music_a50_09))
		(sound_looping_stop levels\a50\music\a50_09)))

(script dormant void music_a50_10
	(begin
		(sound_looping_start levels\a50\music\a50_10 none 1.00)
		(sleep_until
			(not play_music_a50_10))
		(sound_looping_stop levels\a50\music\a50_10)))

(script dormant void music_a50_11
	(begin
		(sound_looping_start levels\a50\music\a50_11 none 1.00)
		(sleep_until
			(not play_music_a50_11))
		(sound_looping_stop levels\a50\music\a50_11)))

(script static void extraction_cleanup
	(begin
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(object_destroy hangar_dropship_a)
		(object_destroy_containing box)
		(ai_kill_silent hangar_cov_third_floor)))

(script dormant void game_lost_script
	(begin
		(sleep_until
			(<=
				(unit_get_health captain_keyes) 0.00) 1)
		(game_save_cancel)
		(sleep -1 general_save)
		(wake music_a50_10)
		(ai_conversation captain_dead)
		(cinematic_show_letterbox true)
		(player_enable_input false)
		(camera_control true)
		(camera_set_dead captain_keyes)
		(sleep 120)
		(game_lost)))

(script dormant void game_win_script
	(begin
		(ai_conversation shuttle_revisited)
		(device_set_power hangar_door_b 1.00)
		(device_set_position hangar_door_b 0.00)
		(device_group_change_only_once_more_set hangar_door_b_position true)
		(sleep_until
			(>
				(ai_conversation_status shuttle_revisited) 4))
		(activate_team_nav_point_flag default_red player extraction_switch_flag 0.00)
		(sleep_until
			(=
				(device_get_position hangar_door_b) 1.00))
		(device_set_power hangar_door_b 0.00)
		(deactivate_team_nav_point_flag player extraction_switch_flag)
		(sleep_until
			(and
				(=
					(ai_living_count hangar_cov_third_floor/grunts_return) 0)
				(=
					(ai_living_count hangar_cov_third_floor/elites_return) 0)) 30 300)
		(ai_follow_target_disable hangar_marines_halls)
		(ai_follow_target_disable hangar_captain_halls)
		(sleep -1 game_lost_script)
		(sleep 1)
		(set play_music_a50_11 false) game_win_script
		(if game_win_script game_win_script) game_win_script
		(game_won)))

(script dormant void obj_board
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_board)
		(hud_set_objective_text obj_board)
		(sleep
			(* 30.00 5.00))
		(show_hud_help_text false)))

(script dormant void obj_rescue
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_rescue)
		(hud_set_objective_text obj_rescue)
		(sleep
			(* 30.00 5.00))
		(show_hud_help_text false)))

(script dormant void obj_escape
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_escape)
		(hud_set_objective_text obj_escape)
		(sleep
			(* 30.00 5.00))
		(show_hud_help_text false)))

(script dormant void obj_sniper
	(begin
		(show_hud_help_text true)
		(hud_set_help_text obj_sniper)
		(sleep 450)
		(show_hud_help_text false)))

(script static void ini_scenery_predictions
	(begin
		(object_type_predict scenery\shrubs\shrub_large\shrub_large)
		(object_type_predict scenery\shrubs\shrub_small\shrubsmall)
		(object_type_predict scenery\rocks\boulder_redrock_small\boulder_redrock_small)
		(object_type_predict scenery\rocks\boulder_redrock_medium\boulder_redrock_medium)
		(object_type_predict scenery\rocks\a50_rock_large\a50_rock_large)
		(object_type_predict scenery\trees\tree_desert_whitebark\tree_desert_whitebark)
		(object_type_predict scenery\trees\tree_wall1\tree_wall)
		(object_type_predict scenery\trees\tree_wallbig\tree_wallbig)
		(object_type_predict scenery\rocks\rock_sharpwedge\rock_sharpwedge)
		(object_type_predict scenery\trees\tree_desert_dead\tree_desert_dead)
		(object_type_predict scenery\c_storage\c_storage)
		(object_type_predict scenery\rocks\rock_sharphole\rock_sharphole)
		(object_type_predict scenery\rocks\rock_sharpsmall\rock_sharpsmall)))

(script static void pelican_area4_a
	(begin
		(set area4_covenant_reins false)
		(ai_conversation ext_marine_reins)
		(sleep 150)
		(object_create_anew insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(ai_place marines_area4/marines_m)
		(objects_predict
			(ai_actors marines_area4))
		(vehicle_load_magic insertion_pelican rider
			(ai_actors marines_area4/marines_m))
		(object_teleport insertion_pelican area4_pelican_flag)
		(recording_play_and_hover insertion_pelican area4_pelican_a_in)
		(sleep 1)
		(ai_braindead marines_area4/marines_m true)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors marines_area4))
		(sleep
			(recording_time insertion_pelican))
		(ai_braindead marines_area4 false)
		(sleep 15)
		(vehicle_unload insertion_pelican rider)
		(sleep
			(* 30.00 3.50))
		(units_set_desired_flashlight_state
			(ai_actors marines_area4/marines_m) true)
		(sleep 1)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican area4_pelican_a_out)
		(set area4_covenant_reins true)
		(ai_migrate marines_area4/marines_m marines_area4/squad_m)
		(sleep 1)
		(ai_follow_target_players marines_area4/squad_m)))

(script static void pelican_area4_b
	(begin
		(set area4_covenant_reins false)
		(ai_conversation ext_marine_reins)
		(sleep 150)
		(object_create_anew insertion_pelican)
		(objects_predict insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(ai_place marines_area4/marines_b)
		(objects_predict
			(ai_actors marines_area4))
		(vehicle_load_magic insertion_pelican rider
			(ai_actors marines_area4/marines_b))
		(object_teleport insertion_pelican area4_pelican_b_flag)
		(recording_play_and_hover insertion_pelican area4_pelican_b_in)
		(sleep 1)
		(ai_braindead marines_area4/marines_b true)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors marines_area4))
		(sleep
			(-
				(recording_time insertion_pelican) 60.00))
		(ai_braindead marines_area4 false)
		(sleep 60)
		(vehicle_unload insertion_pelican rider)
		(sleep
			(* 30.00 3.50))
		(units_set_desired_flashlight_state
			(ai_actors marines_area4/marines_b) true)
		(sleep 1)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican area4_pelican_b_out)
		(set area4_covenant_reins true)
		(ai_migrate marines_area4/marines_b marines_area4/squad_b)
		(sleep 1)
		(ai_follow_target_players marines_area4/squad_b)))

(script static void pelican_area5_a
	(begin
		(ai_conversation ext_marine_reins)
		(object_destroy insertion_pelican)
		(object_create_anew insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(sleep 1)
		(object_teleport insertion_pelican area5_pelican_a)
		(ai_place marines_area5/dropship_marines)
		(vehicle_load_magic insertion_pelican rider
			(ai_actors marines_area5/dropship_marines))
		(recording_play insertion_pelican area5_pelican_a_in)
		(sleep 1)
		(ai_braindead marines_area5/dropship_marines true)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors marines_area5))
		(sleep
			(-
				(recording_time insertion_pelican) 60.00))
		(ai_braindead marines_area5 false)
		(sleep 60)
		(vehicle_hover insertion_pelican true)
		(vehicle_unload insertion_pelican rider)
		(sleep 120)
		(units_set_desired_flashlight_state
			(ai_actors marines_area5/dropship_marines) true)
		(sleep 1)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican v_rec_pel_2_out)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area5/grunts_drop) 0)
				(=
					(ai_living_count covenant_area5/jackals_drop) 0)))
		(ai_migrate marines_area5/dropship_marines marines_area5/marines_i)
		(sleep 1)
		(ai_follow_target_players marines_area5)))

(script static void pelican_area5_b
	(begin
		(ai_conversation lift_secured)
		(object_create_anew insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(object_create ship_marine_1)
		(object_create ship_marine_3)
		(object_create ship_marine_4)
		(object_create ship_marine_5)
		(object_create ship_marine_7)
		(ai_attach ship_marine_1 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_2 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_3 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_4 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_5 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_6 marines_area5/gravity_pad_fodder)
		(ai_attach ship_marine_7 marines_area5/gravity_pad_fodder)
		(vehicle_load_magic insertion_pelican p-riderrf ship_marine_6)
		(vehicle_load_magic insertion_pelican p-riderrm ship_marine_5)
		(vehicle_load_magic insertion_pelican p-riderrb ship_marine_4)
		(vehicle_load_magic insertion_pelican p-riderrb01 ship_marine_3)
		(vehicle_load_magic insertion_pelican p-riderlf ship_marine_7)
		(vehicle_load_magic insertion_pelican p-riderlm ship_marine_1)
		(vehicle_load_magic insertion_pelican p-riderlb ship_marine_2)
		(object_teleport insertion_pelican area5_gravity_fodder_flag)
		(recording_play insertion_pelican area5_pelican_b_in)
		(sleep 1)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors marines_area5))
		(sleep
			(recording_time insertion_pelican))
		(vehicle_hover insertion_pelican true)
		(unit_exit_vehicle ship_marine_6)
		(ai_command_list_by_unit ship_marine_6 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_7)
		(ai_command_list_by_unit ship_marine_7 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_5)
		(ai_command_list_by_unit ship_marine_5 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_1)
		(ai_command_list_by_unit ship_marine_1 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_4)
		(ai_command_list_by_unit ship_marine_4 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_2)
		(ai_command_list_by_unit ship_marine_2 forward_4s)
		(sleep 10)
		(unit_exit_vehicle ship_marine_3)
		(ai_command_list_by_unit ship_marine_3 forward_4s)
		(sleep 60)
		(ai_command_list_by_unit ship_marine_6 marine_to_pad_6)
		(ai_command_list_by_unit ship_marine_7 marine_to_pad_7)
		(ai_command_list_by_unit ship_marine_5 marine_to_pad_5)
		(ai_command_list_by_unit ship_marine_1 marine_to_pad_1)
		(ai_command_list_by_unit ship_marine_2 marine_to_pad_2)
		(ai_command_list_by_unit ship_marine_3 marine_to_pad_3)
		(ai_command_list_by_unit ship_marine_4 marine_to_pad_4)
		(sleep 120)
		(ai_conversation_advance lift_secured)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican area5_pelican_b_out)))

(script dormant void pelican_hangar_a
	(begin
		(object_create_anew insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(ai_place hangar_marines/drop_a)
		(objects_predict
			(ai_actors hangar_marines/drop_a))
		(vehicle_load_magic insertion_pelican rider
			(ai_actors hangar_marines/drop_a))
		(object_teleport insertion_pelican v_flag_hangar_pelican_a)
		(sleep 1)
		(ai_braindead hangar_marines/drop_a true)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors hangar_marines))
		(recording_play insertion_pelican v_rec_hangar_pelican_a_in)
		(sleep
			(-
				(recording_time insertion_pelican) 60.00))
		(ai_braindead hangar_marines false)
		(sleep 60)
		(vehicle_hover insertion_pelican true)
		(vehicle_unload insertion_pelican rider)
		(sleep
			(* 30.00 3.00))
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican v_rec_hangar_pelican_a_out)
		(if
			(= hangar_location_index 1)
			(begin
				(ai_migrate hangar_marines hangar_marines/mig_marines_a))
			(if
				(= hangar_location_index 2)
				(begin
					(ai_migrate hangar_marines hangar_marines/mig_marines_b))
				(if
					(= hangar_location_index 3)
					(begin
						(ai_migrate hangar_marines hangar_marines/mig_marines_d))
					(if
						(= hangar_location_index 4)
						(begin
							(ai_migrate hangar_marines hangar_marines/mig_marines_e))
						(if
							(= hangar_location_index 5)
							(begin
								(ai_migrate hangar_marines hangar_marines/mig_marines_f)))))))
		(sleep 300)
		(device_group_set hangar_door_b_power 1.00)))

(script static void pelican_hangar_b
	(begin
		(object_create_anew insertion_pelican)
		(unit_set_enterable_by_player insertion_pelican false)
		(ai_place hangar_marines_halls/marines_reins)
		(objects_predict
			(ai_actors hangar_marines_halls/marines_reins))
		(vehicle_load_magic insertion_pelican rider
			(ai_actors hangar_marines_halls/marines_reins))
		(object_teleport insertion_pelican hangar_pelican_b)
		(recording_play insertion_pelican hangar_pelican_b_in)
		(sleep 1)
		(ai_braindead hangar_marines_halls/marines_reins true)
		(objects_predict insertion_pelican)
		(objects_predict
			(ai_actors hangar_marines_halls))
		(sleep
			(-
				(recording_time insertion_pelican) 60.00))
		(ai_braindead hangar_marines_halls false)
		(sleep 60)
		(vehicle_hover insertion_pelican true)
		(vehicle_unload insertion_pelican rider)
		(sleep
			(* 30.00 3.00))
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican hangar_pelican_b_out)
		(ai_migrate hangar_marines_halls/marines_reins hangar_marines_halls/squad_exit)))

(script static void c_dropship_area4
	(begin
		(sound_looping_set_alternate levels\a50\music\a50_03 true)
		(set area4_pelican_a false)
		(ai_conversation area5_cov_reins)
		(object_create_anew c_dropship_a)
		(unit_close c_dropship_a)
		(ai_place covenant_area4/elites_dropship)
		(ai_place covenant_area4/grunts_dropship)
		(ai_place covenant_area4/jackals_dropship)
		(vehicle_load_magic c_dropship_a passenger
			(ai_actors covenant_area4/elites_dropship))
		(vehicle_load_magic c_dropship_a passenger
			(ai_actors covenant_area4/grunts_dropship))
		(vehicle_load_magic c_dropship_a passenger
			(ai_actors covenant_area4/jackals_dropship))
		(object_teleport c_dropship_a truth_left_flag)
		(recording_play_and_hover c_dropship_a area4_c_dropship_in)
		(sleep 1)
		(ai_braindead_by_unit c_dropship_a true)
		(ai_braindead covenant_area4/elites_dropship true)
		(ai_braindead covenant_area4/grunts_dropship true)
		(ai_braindead covenant_area4/jackals_dropship true)
		(objects_predict c_dropship_a)
		(objects_predict
			(ai_actors covenant_area4))
		(sleep
			(-
				(recording_time c_dropship_a) 150.00))
		(ai_braindead_by_unit c_dropship_a false)
		(sleep 120)
		(ai_braindead covenant_area4 false)
		(unit_open c_dropship_a)
		(sleep 30)
		(begin_random
			(begin
				(vehicle_unload c_dropship_a cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr04)
				(sleep 5)))
		(sleep 90)
		(vehicle_hover c_dropship_a false)
		(unit_close c_dropship_a)
		(recording_play_and_delete c_dropship_a area4_c_dropship_out)
		(set area4_pelican_a true)
		(sleep 120)
		(ai_braindead_by_unit c_dropship_a true)))

(script static void c_dropship_area5
	(begin
		(object_create_anew c_dropship_a)
		(object_teleport c_dropship_a truth_left_flag_b)
		(unit_close c_dropship_a)
		(ai_place covenant_area5/grunts_drop)
		(ai_place covenant_area5/jackals_drop)
		(vehicle_load_magic c_dropship_a passenger
			(ai_actors covenant_area5/grunts_drop))
		(vehicle_load_magic c_dropship_a passenger
			(ai_actors covenant_area5/jackals_drop))
		(recording_play_and_hover c_dropship_a c_dropship_area5_in)
		(sleep 1)
		(ai_braindead_by_unit c_dropship_a true)
		(ai_braindead covenant_area5/grunts_drop true)
		(ai_braindead covenant_area5/jackals_drop true)
		(objects_predict c_dropship_a)
		(objects_predict
			(ai_actors covenant_area5))
		(sleep
			(-
				(recording_time c_dropship_a) 400.00))
		(ai_conversation area5_cov_reins)
		(sleep 250)
		(ai_braindead_by_unit c_dropship_a false)
		(sleep 120)
		(ai_braindead covenant_area5 false)
		(unit_open c_dropship_a)
		(sleep 30)
		(begin_random
			(begin
				(vehicle_unload c_dropship_a cd-passengerl01)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl02)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl03)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerl04)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr01)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr02)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr03)
				(sleep 5))
			(begin
				(vehicle_unload c_dropship_a cd-passengerr04)
				(sleep 5)))
		(sleep 90)
		(vehicle_hover c_dropship_a false)
		(unit_close c_dropship_a)
		(recording_play_and_delete c_dropship_a c_dropship_area5_out)))

(script static void hangar_dropship_b
	(begin
		(object_create_anew hangar_dropship_b)
		(vehicle_hover hangar_dropship_b true)
		(sound_class_set_gain vehicle_engine 0.25 150)
		(sleep 1)
		(objects_predict hangar_dropship_b)
		(ai_braindead_by_unit hangar_dropship_b true)
		(sleep_until
			(>
				(device_get_position hangar_first_floor_entr) 0.00))
		(sound_class_set_gain vehicle_engine 0.50 150)
		(wake music_a50_07)
		(unit_close hangar_dropship_b)
		(sleep 90)
		(vehicle_hover hangar_dropship_b false)
		(recording_play_and_delete hangar_dropship_b hangar_dropship_b_exit)))

(script dormant void dialog_insertion
	(begin
		(sound_impulse_start sound\dialog\a50\a50_insert_010_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_insert_010_cortana))
		(sleep 1)
		(sound_impulse_start sound\dialog\a50\a50_insert_020_bisenti none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_insert_020_bisenti))
		(sleep 1)
		(sound_impulse_start sound\dialog\a50\a50_insert_030_sarge none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_insert_030_sarge))
		(sleep 1)
		(sound_impulse_start sound\dialog\a50\a50_insert_050_cortana none 1.00)
		(sleep
			(sound_impulse_time sound\dialog\a50\a50_insert_050_cortana))))

(script static void cutscene_insertion
	(begin
		(object_create_anew insertion_pelican)
		(object_teleport insertion_pelican insertion_pelican_1)
		(recording_play insertion_pelican insertion_pelican_in)
		(objects_predict insertion_pelican)
		(cinematic_start)
		(show_hud false)
		(camera_control true)
		(object_create ini_marine_1)
		(object_create ini_marine_2)
		(object_create ini_marine_4)
		(object_create ini_marine_5)
		(object_create ini_marine_7)
		(ai_attach ini_marine_1 marines_initial/marines_ini_left)
		(ai_attach ini_marine_2 marines_initial/marines_ini_left)
		(ai_attach ini_marine_3 marines_initial/marines_ini_left)
		(ai_attach ini_marine_4 marines_initial/marines_ini_right)
		(ai_attach ini_marine_5 marines_initial/marines_ini_right)
		(ai_attach ini_marine_6 marines_initial/marines_ini_right)
		(ai_attach ini_marine_7 marines_initial/marines_ini_right)
		(sleep 1)
		(objects_predict
			(ai_actors marines_initial))
		(objects_predict insertion_pelican)
		(unit_enter_vehicle cutscene_insertion insertion_pelican p-riderlf)
		(unit_enter_vehicle cutscene_insertion insertion_pelican p-riderrf)
		(vehicle_load_magic insertion_pelican riderl
			(ai_actors marines_initial/marines_ini_right))
		(vehicle_load_magic insertion_pelican riderr
			(ai_actors marines_initial/marines_ini_left))
		(camera_set insertion_1 0)
		(fade_in 0.00 0.00 0.00 60)
		(camera_set insertion_3 300)
		(sound_class_set_gain vehicle 0.00 0)
		(sound_looping_start sound\sinomatixx\a50_insertion_foley none 1.00)
		(sound_looping_start sound\sinomatixx\a50_insertion_music none 1.00)
		(wake dialog_insertion)
		(sleep 300)
		(player_effect_set_max_rotation 0.00 0.15 0.15)
		(player_effect_start 1.00 0.00)
		(sleep 120)
		(camera_set insertion_4 210)
		(cinematic_set_title mission_start)
		(sleep 210)
		(fade_in 1.00 1.00 1.00 30)
		(camera_control false)
		(sound_class_set_gain vehicle 1.00 1)
		(object_set_facing cutscene_insertion initial_facing)
		(object_set_facing cutscene_insertion initial_facing)
		(player_effect_stop 0.00)
		(sleep
			(recording_time insertion_pelican))
		(vehicle_hover insertion_pelican true)
		(unit_exit_vehicle cutscene_insertion)
		(unit_exit_vehicle cutscene_insertion)
		(sleep 60)
		(game_save_totally_unsafe)
		(unit_set_enterable_by_player insertion_pelican false)
		(cinematic_stop)
		(show_hud true)
		(sleep 30)
		(unit_exit_vehicle ini_marine_1)
		(ai_command_list_by_unit ini_marine_1 forward_4s)
		(ai_command_list_by_unit ini_marine_1 ini_marine_c)
		(sleep 10)
		(unit_exit_vehicle ini_marine_4)
		(ai_command_list_by_unit ini_marine_4 forward_4s)
		(ai_command_list_by_unit ini_marine_4 ini_marine_d)
		(sleep 10)
		(unit_exit_vehicle ini_marine_2)
		(ai_command_list_by_unit ini_marine_2 forward_4s)
		(ai_command_list_by_unit ini_marine_2 ini_marine_b)
		(sleep 10)
		(unit_exit_vehicle ini_marine_5)
		(ai_command_list_by_unit ini_marine_5 forward_4s)
		(ai_command_list_by_unit ini_marine_5 ini_marine_e)
		(sleep 10)
		(unit_exit_vehicle ini_marine_3)
		(ai_command_list_by_unit ini_marine_3 forward_4s)
		(ai_command_list_by_unit ini_marine_3 ini_marine_a)
		(sleep 10)
		(unit_exit_vehicle ini_marine_7)
		(ai_command_list_by_unit ini_marine_7 forward_4s)
		(ai_command_list_by_unit ini_marine_7 ini_marine_g)
		(sleep 10)
		(sound_impulse_start sound\dialog\a50\a50_insert_080_sarge none 1.00)
		(unit_exit_vehicle ini_marine_6)
		(ai_command_list_by_unit ini_marine_6 forward_4s)
		(ai_command_list_by_unit ini_marine_6 ini_marine_f)
		(sleep 30)
		(vehicle_hover insertion_pelican false)
		(recording_play_and_delete insertion_pelican insertion_pelican_out)
		(ai_conversation initial_orders)
		(sleep 90)
		(units_set_desired_flashlight_state
			(ai_actors marines_initial) true)))

(script static void cutscene_energy_lift
	(begin
		(ai_allegiance human player)
		(ai_allegiance player human)
		(sound_looping_start sound\sinomatixx\a50_lift_foley none 1.00)
		(sound_looping_start sound\sinomatixx\a50_lift_music none 1.00)
		(fade_out 1.00 1.00 1.00 15)
		(sleep 15)
		(ai_erase_all)
		(sleep 15)
		(volume_teleport_players_not_inside null area5_teleport_flag)
		(cinematic_start)
		(camera_control true)
		(object_create_anew chief_lift)
		(object_create_anew rifle)
		(object_create_anew_containing lift_marine)
		(object_teleport chief_lift chief_lift_base)
		(objects_attach chief_lift right hand rifle )
		(object_beautify chief_lift true)
		(recording_play chief_lift chief_lift_watch)
		(object_teleport cutscene_energy_lift player0_lift_safe)
		(object_teleport cutscene_energy_lift player1_lift_safe)
		(object_teleport lift_marine_1 lift_marine_1_base)
		(object_teleport lift_marine_2 lift_marine_2_base)
		(object_teleport lift_marine_3 lift_marine_3_base)
		(object_teleport lift_marine_4 lift_marine_4_base)
		(object_teleport lift_marine_5 lift_marine_5_base)
		(object_teleport lift_marine_6 lift_marine_6_base)
		(unit_set_seat lift_marine_1 alert)
		(unit_set_seat lift_marine_2 alert)
		(unit_set_seat lift_marine_3 alert)
		(unit_set_seat lift_marine_4 alert)
		(unit_set_seat lift_marine_5 alert)
		(unit_set_seat lift_marine_6 alert)
		(sleep 30)
		(camera_set lift_marine_1_1 0)
		(camera_set lift_marine_1_2 60)
		(cinematic_set_title gravity_lift)
		(fade_in 1.00 1.00 1.00 15)
		(sleep 15)
		(custom_animation lift_marine_1 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(sleep 30)
		(custom_animation lift_marine_3 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(custom_animation lift_marine_6 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(camera_set lift_marine_1_3 60)
		(sleep 60)
		(custom_animation lift_marine_2 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(camera_set chief_lift_1a 0)
		(camera_set chief_lift_1b 110)
		(sleep 30)
		(custom_animation lift_marine_4 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(sleep 20)
		(custom_animation lift_marine_5 cinematics\animations\marines\level_specific\a50\a50 a50energylift true)
		(sleep_until
			(camera_time))
		(camera_set chief_lift_1c 0)
		(camera_set chief_lift_1d 60)
		(sleep 60)
		(object_destroy_containing lift_marine)
		(recording_kill chief_lift)
		(custom_animation chief_lift cinematics\animations\chief\level_specific\a50\a50 a50energylift true)
		(camera_set_relative chief_lift_2a 0 chief_lift)
		(sleep 60)
		(camera_set_relative chief_lift_2b 60 chief_lift)
		(sleep 30)
		(cinematic_screen_effect_start true)
		(cinematic_screen_effect_set_convolution 3 2 0.00 10.00 1.00)
		(cinematic_screen_effect_set_filter_desaturation_tint 0.80 0.00 1.00)
		(cinematic_screen_effect_set_filter 0.00 1.00 0.00 1.00 true 1.00)
		(camera_set_relative chief_lift_2c 30 chief_lift)
		(sleep 15)
		(fade_out 0.80 0.00 1.00 15)
		(sleep 15)
		(camera_control false)
		(unit_stop_custom_animation chief_lift)
		(object_destroy chief_lift)
		(object_destroy rifle)
		(sleep
			(* 30.00 1.00))))

(script dormant void man_marines_to_door
	(begin
		(ai_migrate gravity_pad_marines gravity_pad_marines/pad)
		(sleep 90)
		(ai_conversation gravity_secure)
		(sleep 30)
		(ai_migrate gravity_pad_marines gravity_pad_marines/door)
		(sleep_until
			(and
				(volume_test_objects muster_bay_big_entrance
					(players))
				(game_safe_to_save)))
		(if
			(=
				(ai_living_count gravity_pad_marines) 0)
			(ai_conversation grav_mus_door_locked_alt)
			(ai_conversation grav_mus_locked_door))))

(script dormant void traitor_bitch
	(begin
		(sleep_until
			(ai_allegiance_broken player human))
		(ai_command_list_advance marines_initial)))

(script dormant void mig_marines_area2
	(begin
		(sleep_until
			(or
				(and
					(=
						(volume_test_objects_all area1_save_trigger
							(players)) false)
					(=
						(ai_status covenant_area2) 6))
				(=
					(ai_living_count covenant_area2) 0)
				(volume_test_objects area2_trigger_b
					(players))))
		(ai_conversation_stop initial_orders)
		(ai_command_list_advance marines_initial)
		(sound_looping_set_alternate levels\a50\music\a50_01 true)
		(ai_migrate marines_initial/marines_ini_left marines_initial/marines_c)
		(ai_migrate marines_initial/marines_ini_right marines_initial/marines_a)
		(sleep -1 traitor_bitch)
		(sleep 1)
		(ai_command_list marines_initial/marines_c marines_c_forward)
		(ai_command_list marines_initial/marines_a marines_a_forward)
		(sleep
			(* 30.00 12.00))
		(ai_conversation marines_attack)
		(sleep_until area2_marine_migrate)
		(begin_random
			(begin
				(ai_command_list_by_unit ini_marine_1 area2_mar_ledge_a)
				(sleep 5))
			(begin
				(ai_command_list_by_unit ini_marine_2 area2_mar_ledge_b)
				(sleep 5))
			(begin
				(ai_command_list_by_unit ini_marine_4 area2_mar_ledge_c)
				(sleep 5))
			(begin
				(ai_command_list_by_unit ini_marine_5 area2_mar_ledge_d)
				(sleep 5))
			(begin
				(ai_command_list_by_unit ini_marine_7 area2_mar_ledge_d)
				(sleep 5)))
		(sleep 15)
		(ai_migrate_and_speak marines_initial/marines_a marines_initial/marines_e advance)
		(ai_migrate_and_speak marines_initial/marines_c marines_initial/marines_g advance)
		(sleep 30)
		(sleep_until
			(and
				(volume_test_objects area2_trigger_b
					(players))
				(=
					(ai_living_count covenant_area2/elites_left) 0)
				(=
					(ai_living_count covenant_area2/elites_right) 0)))
		(ai_migrate_and_speak marines_initial/marines_e marines_initial/marines_o advance)
		(ai_migrate_and_speak marines_initial/marines_g marines_initial/marines_m advance)
		(sleep
			(* 30.00 5.00))
		(sleep_until area2_marine_migrate_2)
		(ai_migrate_and_speak marines_initial marines_initial/marines_q advance)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area2/grunts_back_left) 0)
				(=
					(ai_living_count covenant_area2/grunts_back_right) 0)))
		(ai_migrate_and_speak marines_initial marines_initial/marines_s advance)
		(sleep_until
			(game_safe_to_save))
		(ai_conversation area2_clear)))

(script dormant void mig_marines_area3
	(begin
		(ai_migrate_and_speak marines_initial marines_area3/marines_a advance)
		(sleep_until
			(and
				(volume_test_objects area3_trigger_a
					(players))
				(>
					(ai_status covenant_area3) 4)))
		(sleep 1)
		(ai_follow_target_players marines_area3/marines_a)))

(script dormant void mig_marines_area4_middle
	(begin
		(ai_migrate marines_area4/squad_a marines_area4/squad_b)
		(if
			(>
				(ai_living_count marines_area4) 0)
			(ai_conversation area4_middle))
		(sleep_until
			(and
				(<
					(ai_living_count covenant_area4/grunts_b) 2)
				(=
					(ai_living_count covenant_area4/jackals_g) 0)))
		(ai_migrate marines_area4/squad_b marines_area4/squad_u)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area4/grunts_s) 0)
				(<
					(ai_living_count covenant_area4/jackals_u) 2)))
		(ai_migrate marines_area4/squad_u marines_area4/squad_s)
		(sleep_until
			(and
				(<
					(ai_living_count covenant_area4/grunts_q) 2)
				(<
					(ai_living_count covenant_area4/elites_q) 2)))
		(ai_migrate marines_area4/squad_s marines_area4/squad_o)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area4/elites_q) 0)
				(=
					(ai_living_count covenant_area4/grunts_q) 0)))
		(ai_migrate marines_area4/squad_o marines_area4/squad_x)
		(ai_follow_target_players marines_area4/squad_x)))

(script dormant void mig_marines_area4_ledge
	(begin
		(ai_migrate marines_area4/squad_a marines_area4/squad_c)
		(if
			(>
				(ai_living_count marines_area4) 0)
			(ai_conversation area4_left))
		(sleep_until
			(and
				(<
					(ai_living_count covenant_area4/jackals_c) 2)
				(<
					(ai_living_count covenant_area4/jackals_d) 2)))
		(ai_migrate marines_area4/squad_c marines_area4/squad_d)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area4/jackals_c) 0)
				(=
					(ai_living_count covenant_area4/jackals_d) 0)))
		(ai_migrate marines_area4/squad_d marines_area4/squad_m)
		(sleep_until
			(and
				(<
					(ai_living_count covenant_area4/grunts_q) 2)
				(<
					(ai_strength covenant_area4/elites_q) 0.70)))
		(ai_migrate marines_area4/squad_m marines_area4/squad_q)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area4/elites_q) 0)
				(=
					(ai_living_count covenant_area4/grunts_q) 0)))
		(ai_migrate marines_area4/squad_q marines_area4/squad_o)
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area4/elites_q) 0)
				(=
					(ai_living_count covenant_area4/grunts_q) 0)))
		(ai_migrate marines_area4/squad_o marines_area4/squad_x)
		(ai_follow_target_players marines_area4/squad_x)))

(script dormant void mig_marines_area5
	(begin
		(ai_migrate marines_area4 marines_area4/squad_z)
		(sleep_until
			(=
				(ai_status covenant_area5) 6))
		(if
			(>
				(ai_living_count marines_area4) 0)
			(ai_conversation area5_active))
		(ai_migrate_and_speak marines_area4 marines_area5/marines_a advance)
		(ai_follow_target_players marines_area5/marines_a)
		(set play_music_a50_03 false)))

(script dormant void mig_grav_to_mus_marines
	(begin
		(sleep_until muster_bay_door_unlocked)
		(ai_migrate gravity_pad_marines muster_bay_marines/squad_a)
		(ai_follow_target_players muster_bay_marines/squad_a)
		(ai_renew muster_bay_marines)
		(set play_music_a50_06 false)
		(ai_automatic_migration_target muster_bay_marines/squad_f false)
		(ai_automatic_migration_target muster_bay_marines/squad_g false)
		(ai_automatic_migration_target muster_bay_marines/squad_h false)))

(script dormant void mig_grav_hall_cleanup
	(begin
		(ai_migrate grav_mus_hall_covenant muster_bay_covenant_top/grav_hall_cleanup)
		(sleep_until
			(or
				(= 0
					(ai_living_count gravity_pad_marines))
				(= 0
					(ai_living_count gravity_pad_covenant))))
		(ai_migrate gravity_pad_covenant muster_bay_covenant_top/grav_hall_cleanup)))

(script dormant void auto_migration_deactivate
	(begin
		(ai_automatic_migration_target prison_marines/mig_marines_a false)
		(ai_automatic_migration_target prison_marines/mig_marines_b false)
		(ai_automatic_migration_target prison_marines/mig_marines_c false)
		(ai_automatic_migration_target prison_marines/mig_marines_d false)
		(ai_automatic_migration_target prison_marines/mig_marines_e false)
		(ai_automatic_migration_target prison_marines/mig_marines_f false)
		(ai_automatic_migration_target prison_marines/mig_marines_g false)
		(ai_automatic_migration_target prison_marines/mig_marines_h false)
		(ai_automatic_migration_target prison_marines/mig_marines_i false)
		(ai_automatic_migration_target prison_marines/mig_marines_j false)
		(ai_automatic_migration_target prison_marines/mig_marines_k false)
		(ai_automatic_migration_target prison_marines/mig_marines_z false)
		(ai_automatic_migration_target prison_marines/mig_marines_y false)))

(script dormant void mig_marines_prison_a
	(begin
		(sleep_until
			(=
				(device_group_get prison_a_switch_position) 1.00))
		(begin_random
			(begin
				(device_group_set prison_door_a_position_a 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_a_position_b 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_a_position_c 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_a_position_d 1.00)
				(sleep
					(random_range 20 45))))
		(object_set_permutation cell_a_door_a  door_off-100)
		(object_set_permutation cell_a_door_b  door_off-100)
		(object_set_permutation cell_a_door_c  door_off-100)
		(object_set_permutation cell_a_door_d  door_off-100)
		(object_set_permutation cell_a_door_e  door_off-100)
		(object_set_permutation cell_a_door_f  door_off-100)
		(object_set_permutation cell_a_door_g  door_off-100)
		(object_set_permutation cell_a_door_h  door_off-100)))

(script dormant void mig_marines_prison_d
	(begin
		(sleep_until
			(= 1.00
				(device_group_get prison_d_switch_position)))
		(begin_random
			(begin
				(device_group_set prison_door_d_position_a 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_d_position_b 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_d_position_c 1.00)
				(sleep
					(random_range 20 45)))
			(begin
				(device_group_set prison_door_d_position_d 1.00)
				(sleep
					(random_range 20 45))))
		(object_set_permutation cell_d_door_a  door_off-100)
		(object_set_permutation cell_d_door_b  door_off-100)
		(object_set_permutation cell_d_door_c  door_off-100)
		(object_set_permutation cell_d_door_e  door_off-100)
		(object_set_permutation cell_d_door_f  door_off-100)
		(object_set_permutation cell_d_door_g  door_off-100)
		(object_set_permutation cell_d_door_h  door_off-100)
		(object_set_permutation keyes_cell_door  door_off-100)
		(ai_migrate prison_marines_ini/captain prison_captain/mig_cap_u)
		(ai_migrate prison_marines_ini/marines_cellblock_d prison_marines/mig_marines_u)
		(ai_migrate prison_marines_ini/mar_nocap_cell_d prison_suicide/mig_suicide_cell_d)
		(set player_location_index 1)
		(sleep 1)
		(ai_follow_target_players prison_captain)
		(ai_follow_target_players prison_marines)
		(ai_follow_target_players prison_suicide)
		(ai_follow_target_players hangar_captain_halls)
		(ai_follow_target_players hangar_marines_halls)
		(ai_link_activation prison_marines control_prison_hall_cov)
		(ai_link_activation prison_captain prison_marines)
		(ai_link_activation hangar_captain_halls hangar_marines_halls)
		(device_one_sided_set control_door_a true)
		(device_one_sided_set control_door_b true)
		(device_one_sided_set control_door_c true)
		(ai_automatic_migration_target prison_marines/mig_marines_a true)
		(ai_automatic_migration_target prison_marines/mig_marines_b true)
		(ai_automatic_migration_target prison_marines/mig_marines_c true)
		(ai_automatic_migration_target prison_marines/mig_marines_d true)
		(ai_automatic_migration_target prison_marines/mig_marines_e true)
		(ai_automatic_migration_target prison_marines/mig_marines_f true)
		(ai_automatic_migration_target prison_marines/mig_marines_g true)
		(ai_automatic_migration_target prison_marines/mig_marines_h true)
		(ai_automatic_migration_target prison_marines/mig_marines_i true)
		(ai_automatic_migration_target prison_marines/mig_marines_j true)
		(ai_automatic_migration_target prison_marines/mig_marines_k true)
		(ai_automatic_migration_target prison_marines/mig_marines_z true)
		(ai_automatic_migration_target prison_marines/mig_marines_y true)
		(ai_automatic_migration_target hangar_marines_halls/squad_a false)
		(ai_automatic_migration_target hangar_marines_halls/squad_b false)
		(ai_automatic_migration_target hangar_marines_halls/squad_c false)
		(ai_automatic_migration_target hangar_marines_halls/squad_d false)
		(ai_automatic_migration_target hangar_marines_halls/squad_e false)
		(ai_automatic_migration_target hangar_marines_halls/squad_f false)
		(ai_automatic_migration_target hangar_marines_halls/squad_g false)
		(ai_automatic_migration_target prison_captain/mig_cap_l false)
		(ai_automatic_migration_target prison_captain/mig_cap_m false)
		(ai_automatic_migration_target prison_captain/mig_cap_n false)
		(ai_automatic_migration_target prison_captain/mig_cap_o false)
		(ai_automatic_migration_target prison_marines/mig_marines_l false)
		(ai_automatic_migration_target prison_marines/mig_marines_m false)
		(ai_automatic_migration_target prison_marines/mig_marines_n false)
		(ai_automatic_migration_target prison_marines/mig_marines_o false)))

(script static void mig_into_control
	(begin
		(ai_migrate prison_marines prison_marines/mig_marines_p)
		(ai_migrate prison_captain prison_captain/mig_cap_p)
		(ai_migrate hangar_marines_halls prison_marines/mig_marines_p)
		(ai_migrate hangar_captain_halls prison_captain/mig_cap_p)
		(ai_migrate_by_unit captain_keyes prison_captain/mig_cap_p)
		(ai_migrate_by_unit free_marine_1 prison_marines/mig_marines_p)
		(ai_migrate_by_unit free_marine_2 prison_marines/mig_marines_p)
		(ai_migrate_by_unit free_marine_3 prison_marines/mig_marines_p)
		(sleep 1)
		(ai_teleport_to_starting_location_if_unsupported prison_marines/mig_marines_p)
		(ai_teleport_to_starting_location_if_unsupported prison_captain/mig_cap_p)
		(set player_location_index 1)))

(script static void mig_into_hangar
	(begin
		(ai_migrate prison_marines hangar_marines_halls/squad_switch)
		(ai_migrate prison_captain hangar_captain_halls/squad_switch)
		(ai_migrate hangar_marines_halls hangar_marines_halls/squad_switch)
		(ai_migrate hangar_captain_halls hangar_captain_halls/squad_switch)
		(ai_migrate_by_unit captain_keyes hangar_captain_halls/squad_switch)
		(ai_migrate_by_unit free_marine_1 hangar_marines_halls/squad_switch)
		(ai_migrate_by_unit free_marine_2 hangar_marines_halls/squad_switch)
		(ai_migrate_by_unit free_marine_3 hangar_marines_halls/squad_switch)
		(sleep 1)
		(ai_teleport_to_starting_location_if_unsupported hangar_marines_halls/squad_switch)
		(ai_teleport_to_starting_location_if_unsupported hangar_captain_halls/squad_switch)
		(set player_location_index 2)))

(script static void mig_from_control
	(begin
		(if
			(volume_test_objects hangar_migration
				(players)) mig_from_control
			(set player_location_index 1))))

(script static void mig_from_hangar
	(begin
		(if
			(volume_test_objects control_migration
				(players)) mig_from_hangar
			(set player_location_index 2))))

(script continuous void ini_prison_mig_manage
	(begin
		(sleep 30)
		(if
			(= player_location_index 1)
			(begin ini_prison_mig_manage)
			(if
				(= player_location_index 2)
				(begin ini_prison_mig_manage)))))

(script dormant void enc_marines_area1
	(begin
		(ai_place marines_initial/marines_ini_left)
		(ai_place marines_initial/marines_ini_right)))

(script dormant void enc_area2_ini
	(begin
		(ai_place covenant_area2/turret_gunner_a)
		(ai_place covenant_area2/turret_gunner_b)
		(ai_place covenant_area2/grunts_left)
		(ai_place covenant_area2/grunts_middle)
		(ai_place covenant_area2/grunts_right)
		(ai_place covenant_area2/elites_right)
		(ai_place covenant_area2/elites_left)
		(ai_place covenant_area2/jackals_left)
		(ai_place covenant_area2/jackals_right)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area2))))

(script dormant void enc_area2_wave_2
	(begin
		(ai_place covenant_area2/grunts_left_b)
		(ai_place covenant_area2/grunts_right_b)
		(ai_place covenant_area2/elites_back)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area2))))

(script dormant void enc_back_area2
	(begin
		(ai_place covenant_area2/grunts_back_left)
		(ai_place covenant_area2/grunts_back_right)
		(ai_place covenant_area2/jackals_back)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area2))))

(script continuous void ini_enter_turret_area2_norm
	(begin
		(if
			(and
				(>
					(ai_living_count covenant_area2/turret_gunner_a) 0)
				(>
					(ai_living_count covenant_area2/turret_gunner_b) 0))
			(begin_random
				(begin
					(ai_go_to_vehicle covenant_area2/turret_gunner_a area2_turret_a gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area2/turret_gunner_b area2_turret_b gunner)
					(sleep default_turret_gunner_delay))))))

(script continuous void ini_enter_turret_area2_leg
	(begin
		(if
			(and
				(>
					(ai_living_count covenant_area2/turret_gunner_a) 0)
				(>
					(ai_living_count covenant_area2/turret_gunner_b) 0))
			(begin_random
				(begin
					(ai_go_to_vehicle covenant_area2/turret_gunner_a area2_turret_a gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area2/turret_gunner_b area2_turret_b gunner)
					(sleep default_turret_gunner_delay))))
		(begin_random
			(begin
				(ai_go_to_vehicle covenant_area2 area2_turret_a gunner)
				(sleep default_turret_gunner_delay))
			(begin
				(ai_go_to_vehicle covenant_area2 area2_turret_b gunner)
				(sleep default_turret_gunner_delay))
			(sleep default_turret_gunner_delay))))

(script dormant void ini_gun_runner
	(begin
		(ai_place covenant_area2/gun_runner)
		(sleep
			(* 30.00 20.00))
		(sleep_until
			(and
				(=
					(ai_status marines_initial) 6)
				(=
					(ai_living_count covenant_area2/turret_gunner_a) 0)))
		(ai_go_to_vehicle covenant_area2/gun_runner area2_turret_a gunner)
		(if
			(>
				(ai_living_count covenant_area2/gun_runner) 0)
			(begin
				(ai_conversation run_for_gun)
				(activate_team_nav_point_object default_red player
					(unit
						(list_get
							(ai_actors covenant_area2/gun_runner) 0)) 0.60)))))

(script dormant void enc_area3_initial
	(begin
		(ai_place covenant_area3/turret_gunner_a)
		(ai_place covenant_area3/grunts_ledge)
		(ai_place covenant_area3/jackals_hill_left)
		(ai_place covenant_area3/grunts_hill_right)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script dormant void enc_area3_second
	(begin
		(ai_place covenant_area3/elites_hiding)
		(ai_place covenant_area3/grunts_back)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script dormant void enc_elites_front_area3
	(begin
		(ai_place covenant_area3/elites_front)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script dormant void enc_elites_reins_area3
	(begin
		(ai_place covenant_area3/elites_reins)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script dormant void enc_grunts_reins_area3
	(begin
		(ai_place covenant_area3/grunts_reins)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script dormant void dialog_area3_initial
	(begin
		(sleep_until
			(and
				(game_safe_to_save)
				(<
					(ai_status covenant_area3) 3)))
		(ai_conversation area3_initial)))

(script dormant void ini_area3_turrets_leg
	(begin
		(ai_place covenant_area3/turret_gunner_b)
		(object_create area3_turret_b)
		(ai_go_to_vehicle covenant_area3/turret_gunner_b area3_turret_b gunner)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script continuous void ini_enter_turret_area3_norm
	(begin
		(ai_go_to_vehicle covenant_area3/turret_gunner_a area3_turret_a gunner)
		(sleep default_turret_gunner_delay)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area3))))

(script continuous void ini_enter_turret_area3_leg
	(begin
		(ai_go_to_vehicle covenant_area3/turret_gunner_a area3_turret_a gunner)
		(ai_go_to_vehicle covenant_area3/turret_gunner_b area3_turret_b gunner)
		(if
			(and
				(=
					(ai_living_count covenant_area3/turret_gunner_a) 0)
				(=
					(ai_living_count covenant_area3/turret_gunner_b) 0))
			(begin_random
				(begin
					(ai_go_to_vehicle covenant_area3 area3_turret_a gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area3 area3_turret_b gunner)
					(sleep default_turret_gunner_delay))
				(sleep default_turret_gunner_delay)))))

(script dormant void enc_area4_initial
	(begin
		(ai_place covenant_area4/jackals_u)
		(ai_place covenant_area4/jackals_d)
		(ai_place covenant_area4/grunts_b)
		(ai_place covenant_area4/elites_e)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area4))))

(script dormant void enc_area4_second
	(begin
		(ai_place covenant_area4/elites_q)
		(if
			(<
				(ai_living_count covenant_area4) 6)
			(ai_place covenant_area4/grunts_q))
		(ai_place covenant_area4/grunts_k)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area4))))

(script dormant void dialog_area4_initial
	(begin
		(ai_conversation area4_initial)
		(sleep_until
			(volume_test_objects area4_trigger_a
				(players)))
		(if
			(<
				(ai_status covenant_area4) 4)
			(ai_conversation_advance area4_initial))))

(script continuous void ini_area4_player_locator
	(begin
		(if
			(volume_test_objects area4_location_1
				(players))
			(begin
				(set area4_location_index 1))
			(if
				(volume_test_objects area4_location_2
					(players))
				(begin
					(set area4_location_index 2))
				(if true
					(begin
						(set area4_location_index 0)))))
		(sleep
			(* 30.00 5.00))))

(script dormant void ini_area4_grunts_m
	(begin
		(sleep_until
			(or
				(volume_test_objects area4_grunts_m_trigger
					(players))
				(volume_test_objects area4_grunts_m_trigger
					(ai_actors marines_area4))))
		(if
			(<
				(ai_living_count covenant_area4) 7)
			(ai_place covenant_area4/grunts_m))))

(script dormant void ini_area4_marine_reins
	(begin
		(sleep_until
			(and area4_pelican_a
				(<
					(ai_living_count covenant_area4) 11)
				(<
					(ai_living_count marines_area4) 1)))
		(if area4_marine_reins
			(if
				(= area4_location_index 1)
				(begin
					(if
						(not
							(game_is_cooperative)) ini_area4_marine_reins))
				(if
					(= area4_location_index 2)
					(begin
						(if
							(not
								(game_is_cooperative)) ini_area4_marine_reins)))))))

(script dormant void ini_area4_dropship
	(begin
		(sleep_until
			(and area4_covenant_reins
				(<
					(ai_living_count covenant_area4) 5)))
		(sleep 1)
		(if
			(and area4_cov_dropship
				(<
					(ai_living_count covenant_area4) 5)) ini_area4_dropship)))

(script dormant void ini_area4_reins
	(begin
		(ai_place covenant_area4/elites_reins)
		(if
			(<
				(ai_living_count covenant_area4) 7)
			(ai_place covenant_area4/grunts_reins))
		(sleep 1)
		(ai_allow_dormant covenant_area4/elites_reins false)
		(ai_allow_dormant covenant_area4/grunts_reins false)
		(ai_migrate covenant_area4 covenant_area4/squad_y)
		(ai_follow_target_players covenant_area4/squad_y)))

(script dormant void ini_area4_turrets
	(begin
		(begin_random
			(if area4_turret_spawn
				(begin
					(ai_place covenant_area4/turret_gunner_a)
					(object_create area4_turret_a)
					(set area4_turret_counter
						(+ 1.00 area4_turret_counter))
					(if
						(= area4_turret_counter area4_turret_limit)
						(set area4_turret_spawn false))))
			(if area4_turret_spawn
				(begin
					(ai_place covenant_area4/turret_gunner_b)
					(object_create area4_turret_b)
					(set area4_turret_counter
						(+ 1.00 area4_turret_counter))
					(if
						(= area4_turret_counter area4_turret_limit)
						(set area4_turret_spawn false))))
			(if area4_turret_spawn
				(begin
					(ai_place covenant_area4/turret_gunner_c)
					(object_create area4_turret_c)
					(set area4_turret_counter
						(+ 1.00 area4_turret_counter))
					(if
						(= area4_turret_counter area4_turret_limit)
						(set area4_turret_spawn false))))
			(if area4_turret_spawn
				(begin
					(ai_place covenant_area4/turret_gunner_d)
					(object_create area4_turret_d)
					(set area4_turret_counter
						(+ 1.00 area4_turret_counter))
					(if
						(= area4_turret_counter area4_turret_limit)
						(set area4_turret_spawn false))))
			(if area4_turret_spawn
				(begin
					(ai_place covenant_area4/turret_gunner_e)
					(object_create area4_turret_e)
					(set area4_turret_counter
						(+ 1.00 area4_turret_counter))
					(if
						(= area4_turret_counter area4_turret_limit)
						(set area4_turret_spawn false)))))))

(script continuous void ini_enter_turret_area4_norm
	(begin
		(ai_go_to_vehicle covenant_area4/turret_gunner_a area4_turret_a gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_b area4_turret_b gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_c area4_turret_c gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_d area4_turret_d gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_e area4_turret_e gunner)
		(sleep default_turret_gunner_delay)))

(script continuous void ini_enter_turret_area4_leg
	(begin
		(ai_go_to_vehicle covenant_area4/turret_gunner_a area4_turret_a gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_b area4_turret_b gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_c area4_turret_c gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_d area4_turret_d gunner)
		(ai_go_to_vehicle covenant_area4/turret_gunner_e area4_turret_e gunner)
		(sleep default_turret_gunner_delay)
		(if
			(and
				(=
					(ai_living_count covenant_area4/turret_gunner_a) 0)
				(=
					(ai_living_count covenant_area4/turret_gunner_b) 0)
				(=
					(ai_living_count covenant_area4/turret_gunner_c) 0)
				(=
					(ai_living_count covenant_area4/turret_gunner_d) 0)
				(=
					(ai_living_count covenant_area4/turret_gunner_e) 0))
			(begin_random
				(begin
					(ai_go_to_vehicle covenant_area4 area4_turret_a gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area4 area4_turret_b gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area4 area4_turret_c gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area4 area4_turret_d gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area4 area4_turret_e gunner)
					(sleep default_turret_gunner_delay))
				(sleep default_turret_gunner_delay)))))

(script dormant void enc_area5_ini
	(begin
		(ai_place covenant_area5/elites_w)
		(ai_place covenant_area5/grunts_a)
		(ai_place covenant_area5/jackals_c)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area5))))

(script dormant void enc_area5_hunters
	(begin
		(ai_place covenant_area5/hunters)
		(custom_animation_list
			(ai_actors covenant_area5/hunters) cinematics\animations\hunter\level_specific\a50\a50 a50energylift false)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area5))
		(sleep 300)
		(ai_magically_see_players covenant_area5)))

(script static void enc_area5_e
	(begin
		(ai_place covenant_area5/elites_e)
		(custom_animation_list
			(ai_actors covenant_area5/elites_e) cinematics\animations\elite\level_specific\a50\a50 a50energylift false)
		(begin_random
			(if area5_e_spawn
				(begin
					(ai_place covenant_area5/grunts_e)
					(custom_animation_list
						(ai_actors covenant_area5/grunts_e) cinematics\animations\grunt\level_specific\a50\a50 a50energylift false)
					(set area5_e_spawn_counter
						(+ 1.00 area5_e_spawn_counter))
					(if
						(= area5_e_spawn_counter area5_e_squad_index)
						(set area5_e_spawn false))))
			(if area5_e_spawn
				(begin
					(ai_place covenant_area5/jackals_e)
					(custom_animation_list
						(ai_actors covenant_area5/jackals_e) cinematics\animations\jackal\level_specific\a50\a50 a50energylift false)
					(set area5_e_spawn_counter
						(+ 1.00 area5_e_spawn_counter))
					(if
						(= area5_e_spawn_counter area5_e_squad_index)
						(set area5_e_spawn false)))))
		(set area5_e_spawn_counter 0)))

(script static void enc_area5_g
	(begin
		(ai_place covenant_area5/elites_g)
		(custom_animation_list
			(ai_actors covenant_area5/elites_g) cinematics\animations\elite\level_specific\a50\a50 a50energylift false)
		(begin_random
			(if area5_g_spawn
				(begin
					(ai_place covenant_area5/grunts_g)
					(custom_animation_list
						(ai_actors covenant_area5/grunts_g) cinematics\animations\grunt\level_specific\a50\a50 a50energylift false)
					(set area5_g_spawn_counter
						(+ 1.00 area5_g_spawn_counter))
					(if
						(= area5_g_spawn_counter area5_g_squad_index)
						(set area5_g_spawn false))))
			(if area5_g_spawn
				(begin
					(ai_place covenant_area5/jackals_g)
					(custom_animation_list
						(ai_actors covenant_area5/jackals_g) cinematics\animations\jackal\level_specific\a50\a50 a50energylift false)
					(set area5_g_spawn_counter
						(+ 1.00 area5_g_spawn_counter))
					(if
						(= area5_g_spawn_counter area5_g_squad_index)
						(set area5_g_spawn false)))))
		(set area5_g_spawn_counter 0)))

(script static void enc_area5_o
	(begin
		(ai_place covenant_area5/elites_o)
		(custom_animation_list
			(ai_actors covenant_area5/elites_o) cinematics\animations\elite\level_specific\a50\a50 a50energylift false)
		(begin_random
			(if area5_o_spawn
				(begin
					(ai_place covenant_area5/grunts_o)
					(custom_animation_list
						(ai_actors covenant_area5/grunts_o) cinematics\animations\grunt\level_specific\a50\a50 a50energylift false)
					(set area5_o_spawn_counter
						(+ 1.00 area5_o_spawn_counter))
					(if
						(= area5_o_spawn_counter area5_o_squad_index)
						(set area5_o_spawn false))))
			(if area5_o_spawn
				(begin
					(ai_place covenant_area5/jackals_o)
					(custom_animation_list
						(ai_actors covenant_area5/jackals_o) cinematics\animations\jackal\level_specific\a50\a50 a50energylift false)
					(set area5_o_spawn_counter
						(+ 1.00 area5_o_spawn_counter))
					(if
						(= area5_o_spawn_counter area5_o_squad_index)
						(set area5_o_spawn false)))))
		(set area5_o_spawn_counter 0)))

(script static void enc_area5_q
	(begin
		(ai_place covenant_area5/elites_q)
		(custom_animation_list
			(ai_actors covenant_area5/elites_q) cinematics\animations\elite\level_specific\a50\a50 a50energylift false)
		(begin_random
			(if area5_q_spawn
				(begin
					(ai_place covenant_area5/grunts_q)
					(custom_animation_list
						(ai_actors covenant_area5/grunts_q) cinematics\animations\grunt\level_specific\a50\a50 a50energylift false)
					(set area5_q_spawn_counter
						(+ 1.00 area5_q_spawn_counter))
					(if
						(= area5_q_spawn_counter area5_q_squad_index)
						(set area5_q_spawn false))))
			(if area5_q_spawn
				(begin
					(ai_place covenant_area5/jackals_q)
					(custom_animation_list
						(ai_actors covenant_area5/jackals_q) cinematics\animations\jackal\level_specific\a50\a50 a50energylift false)
					(set area5_q_spawn_counter
						(+ 1.00 area5_q_spawn_counter))
					(if
						(= area5_q_spawn_counter area5_q_squad_index)
						(set area5_q_spawn false)))))
		(set area5_q_spawn_counter 0)))

(script dormant void dialog_area5_initial
	(begin
		(sleep_until
			(and
				(<
					(ai_status covenant_area4) 3)
				(<
					(ai_living_count covenant_area4) 2)
				(game_safe_to_save)))
		(ai_conversation area5_initial)
		(set play_music_a50_03 false)))

(script dormant void ini_area5_turrets
	(begin
		(begin_random
			(if area5_turret_spawn
				(begin
					(ai_place covenant_area5/turret_gunner_a)
					(object_create area5_turret_a)
					(set area5_turret_counter
						(+ 1.00 area5_turret_counter))
					(if
						(= area5_turret_counter area5_turret_limit)
						(set area5_turret_spawn false))))
			(if area5_turret_spawn
				(begin
					(ai_place covenant_area5/turret_gunner_b)
					(object_create area5_turret_b)
					(set area5_turret_counter
						(+ 1.00 area5_turret_counter))
					(if
						(= area5_turret_counter area5_turret_limit)
						(set area5_turret_spawn false))))
			(if area5_turret_spawn
				(begin
					(ai_place covenant_area5/turret_gunner_c)
					(object_create area5_turret_c)
					(set area5_turret_counter
						(+ 1.00 area5_turret_counter))
					(if
						(= area5_turret_counter area5_turret_limit)
						(set area5_turret_spawn false))))
			(if area5_turret_spawn
				(begin
					(ai_place covenant_area5/turret_gunner_d)
					(object_create area5_turret_d)
					(set area5_turret_counter
						(+ 1.00 area5_turret_counter))
					(if
						(= area5_turret_counter area5_turret_limit)
						(set area5_turret_spawn false))))
			(if area5_turret_spawn
				(begin
					(ai_place covenant_area5/turret_gunner_e)
					(object_create area5_turret_e)
					(set area5_turret_counter
						(+ 1.00 area5_turret_counter))
					(if
						(= area5_turret_counter area5_turret_limit)
						(set area5_turret_spawn false)))))
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area5))))

(script continuous void ini_enter_turret_area5_norm
	(begin
		(ai_go_to_vehicle covenant_area5/turret_gunner_a area5_turret_a gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_b area5_turret_b gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_c area5_turret_c gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_d area5_turret_d gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_e area5_turret_e gunner)
		(sleep default_turret_gunner_delay)))

(script continuous void ini_enter_turret_area5_leg
	(begin
		(ai_go_to_vehicle covenant_area5/turret_gunner_a area5_turret_a gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_b area5_turret_b gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_c area5_turret_c gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_d area5_turret_d gunner)
		(ai_go_to_vehicle covenant_area5/turret_gunner_e area5_turret_e gunner)
		(sleep default_turret_gunner_delay)
		(if
			(and
				(>
					(ai_living_count covenant_area5/turret_gunner_a) 0)
				(>
					(ai_living_count covenant_area5/turret_gunner_b) 0)
				(>
					(ai_living_count covenant_area5/turret_gunner_c) 0)
				(>
					(ai_living_count covenant_area5/turret_gunner_d) 0)
				(>
					(ai_living_count covenant_area5/turret_gunner_e) 0))
			(begin_random
				(begin
					(ai_go_to_vehicle covenant_area5 area5_turret_a gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area5 area5_turret_b gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area5 area5_turret_c gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area5 area5_turret_d gunner)
					(sleep default_turret_gunner_delay))
				(begin
					(ai_go_to_vehicle covenant_area5 area5_turret_e gunner)
					(sleep default_turret_gunner_delay))
				(sleep default_turret_gunner_delay)))))

(script continuous void ini_area5_spawner
	(begin
		(if
			(and
				(<
					(ai_living_count covenant_area5) area5_index)
				(volume_test_objects area5_e_trigger
					(players)) area5_e_spawn) ini_area5_spawner)
		(sleep area5_spawn_delay)
		(if
			(and
				(<
					(ai_living_count covenant_area5) area5_index)
				(volume_test_objects area5_g_trigger
					(players)) area5_g_spawn) ini_area5_spawner)
		(sleep area5_spawn_delay)
		(if
			(and
				(<
					(ai_living_count covenant_area5) area5_index)
				(volume_test_objects area5_o_trigger
					(players)) area5_o_spawn) ini_area5_spawner)
		(sleep area5_spawn_delay)
		(if
			(and
				(<
					(ai_living_count covenant_area5) area5_index)
				(volume_test_objects area5_q_trigger
					(players)) area5_q_spawn) ini_area5_spawner)
		(sleep area5_spawn_delay)
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area5))))

(script continuous void ini_area5_random_spawner
	(begin
		(begin_random
			(begin
				(sleep_until
					(<
						(ai_living_count covenant_area5) area5_index))
				(if area5_e_spawn ini_area5_random_spawner))
			(begin
				(sleep_until
					(<
						(ai_living_count covenant_area5) area5_index))
				(if area5_g_spawn ini_area5_random_spawner))
			(begin
				(sleep_until
					(<
						(ai_living_count covenant_area5) area5_index))
				(if area5_o_spawn ini_area5_random_spawner))
			(begin
				(sleep_until
					(<
						(ai_living_count covenant_area5) area5_index))
				(if area5_q_spawn ini_area5_random_spawner)))
		(sleep 1)
		(objects_predict
			(ai_actors covenant_area5))))

(script continuous void ini_area5_cov_chaser
	(begin
		(if
			(or
				(>
					(ai_living_count covenant_area5/elites_e) 0)
				(>
					(ai_living_count covenant_area5/grunts_e) 0)
				(>
					(ai_living_count covenant_area5/jackals_e) 0))
			(begin
				(sleep
					(* 30.00 5.00))
				(ai_migrate covenant_area5 covenant_area5/squad_e)
				(sleep 1)
				(ai_follow_target_players covenant_area5/squad_e)))
		(if
			(or
				(>
					(ai_living_count covenant_area5/elites_g) 0)
				(>
					(ai_living_count covenant_area5/grunts_g) 0)
				(>
					(ai_living_count covenant_area5/jackals_g) 0))
			(begin
				(sleep
					(* 30.00 5.00))
				(ai_migrate covenant_area5 covenant_area5/squad_g)
				(sleep 1)
				(ai_follow_target_players covenant_area5/squad_g)))
		(if
			(or
				(>
					(ai_living_count covenant_area5/elites_o) 0)
				(>
					(ai_living_count covenant_area5/grunts_o) 0)
				(>
					(ai_living_count covenant_area5/jackals_o) 0))
			(begin
				(sleep
					(* 30.00 5.00))
				(ai_migrate covenant_area5 covenant_area5/squad_o)
				(sleep 1)
				(ai_follow_target_players covenant_area5/squad_o)))
		(if
			(or
				(>
					(ai_living_count covenant_area5/elites_q) 0)
				(>
					(ai_living_count covenant_area5/grunts_q) 0)
				(>
					(ai_living_count covenant_area5/jackals_q) 0))
			(begin
				(sleep
					(* 30.00 5.00))
				(ai_migrate covenant_area5 covenant_area5/squad_q)
				(sleep 1)
				(ai_follow_target_players covenant_area5/squad_q)))
		(sleep 150)))

(script static void gravity_spawn_legendary
	(begin
		(set area5_e_spawn true)
		(set area5_g_spawn true)
		(set area5_o_spawn true)
		(set area5_q_spawn true)
		(sleep 1)
		(sleep_until
			(and
				(not area5_e_spawn)
				(not area5_g_spawn)
				(not area5_o_spawn)
				(not area5_q_spawn)))))

(script dormant void ini_area5_pelican
	(begin
		(sleep_until
			(and
				(volume_test_objects area5_dropship_trigger
					(players))
				(<
					(ai_living_count marines_area5) 1)))
		(if
			(and area5_pelican
				(not
					(game_is_cooperative))) ini_area5_pelican)))

(script dormant void ini_area5_c_dropship
	(begin
		(sleep_until
			(<
				(ai_living_count covenant_area5) 3)) ini_area5_c_dropship
		(sleep_until
			(<
				(ai_living_count marines_area5/dropship_marines) 1))
		(ai_migrate covenant_area5/grunts_drop covenant_area5/squad_s)
		(ai_migrate covenant_area5/jackals_drop covenant_area5/squad_s)
		(sleep 1)
		(ai_follow_target_players covenant_area5/squad_s)))

(script dormant void dialog_area5_guns
	(begin
		(sleep_until
			(or
				(=
					(ai_status covenant_area5/turret_gunner_a) 6)
				(=
					(ai_status covenant_area5/turret_gunner_b) 6)
				(=
					(ai_status covenant_area5/turret_gunner_c) 6)
				(=
					(ai_status covenant_area5/turret_gunner_d) 6)
				(=
					(ai_status covenant_area5/turret_gunner_e) 6)))
		(sleep -1 dialog_area5_initial)
		(if
			(>
				(ai_living_count marines_area5) 0)
			(ai_conversation area5_guns))
		(sleep_until
			(and
				(=
					(ai_living_count covenant_area5/turret_gunner_a) 0)
				(=
					(ai_living_count covenant_area5/turret_gunner_b) 0)
				(=
					(ai_living_count covenant_area5/turret_gunner_c) 0)
				(=
					(ai_living_count covenant_area5/turret_gunner_d) 0)
				(=
					(ai_living_count covenant_area5/turret_gunner_e) 0)))
		(if
			(>
				(ai_living_count marines_area5) 0)
			(ai_conversation area5_guns_clear))))

(script continuous void ini_area5_cleanup_kill
	(begin
		(if
			(<
				(ai_status covenant_area4) 3)
			(ai_kill_silent covenant_area4))
		(sleep 300)))

(script static void ini_marines_to_pad
	(begin
		(ai_conversation lift_secured_alt)
		(ai_follow_target_disable marines_area5)
		(sleep 1)
		(ai_migrate marines_area5 marines_area5/gravity_pad_fodder)
		(sleep 1)
		(sleep_until
			(volume_test_objects gravity_pad_teleport_trigger
				(ai_actors marines_area5)) 30 210)))

(script dormant void enc_grav_marines
	(begin
		(ai_place gravity_pad_marines)
		(sleep 1)
		(objects_predict
			(ai_actors gravity_pad_marines))))

(script dormant void enc_grav_stealth_ini
	(begin
		(ai_place gravity_pad_covenant/stealth_ini)))

(script dormant void enc_grav_hunters
	(begin
		(if
			(game_is_cooperative)
			(ai_place gravity_pad_covenant/grav_front_hunters)
			(if
				(=
					(game_difficulty_get) normal)
				(begin
					(ai_place gravity_pad_covenant/grav_front_jackals))
				(if
					(=
						(game_difficulty_get) hard)
					(begin
						(ai_place gravity_pad_covenant/grav_front_hunters))
					(if
						(=
							(game_difficulty_get) impossible)
						(begin
							(ai_place gravity_pad_covenant/grav_front_hunters))))))
		(sleep_until
			(volume_test_objects grav_second_wave
				(players)))
		(ai_migrate gravity_pad_covenant gravity_pad_covenant/all)))

(script static void enc_grav_cov_frontleft
	(begin
		(set grav_frontleft true)
		(begin_random
			(if grav_frontleft
				(begin
					(ai_place gravity_pad_covenant/grav_frontleft_grunts)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false))))
			(if
				(and grav_frontleft
					(=
						(game_difficulty_get) normal))
				(begin
					(ai_place gravity_pad_covenant/grav_frontleft_elites)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false))))
			(if grav_frontleft
				(begin
					(ai_place gravity_pad_covenant/grav_frontleft_grunts_b)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false))))
			(if grav_frontleft
				(begin
					(ai_place gravity_pad_covenant/grav_frontleft_jackals)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false))))
			(if
				(and grav_frontleft
					(=
						(game_difficulty_get) impossible))
				(begin
					(ai_place gravity_pad_covenant/frontleft_commander)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false))))
			(if
				(and grav_frontleft
					(=
						(game_difficulty_get) hard))
				(begin
					(ai_place gravity_pad_covenant/frontleft_stealth)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontleft_index gravity_enc_index)
						(set grav_frontleft false)))))
		(set gravity_enc_index 0)))

(script static void enc_grav_cov_frontright
	(begin
		(set grav_frontright true)
		(begin_random
			(if grav_frontright
				(begin
					(ai_place gravity_pad_covenant/grav_frontright_grunts)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false))))
			(if
				(and grav_frontright
					(=
						(game_difficulty_get) normal))
				(begin
					(ai_place gravity_pad_covenant/grav_frontright_elites)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false))))
			(if grav_frontright
				(begin
					(ai_place gravity_pad_covenant/grav_frontright_grunts_b)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false))))
			(if grav_frontright
				(begin
					(ai_place gravity_pad_covenant/grav_frontright_jackals)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false))))
			(if
				(and grav_frontright
					(=
						(game_difficulty_get) impossible))
				(begin
					(ai_place gravity_pad_covenant/frontright_commander)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false))))
			(if
				(and grav_frontright
					(=
						(game_difficulty_get) hard))
				(begin
					(ai_place gravity_pad_covenant/frontright_stealth)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_frontright_index gravity_enc_index)
						(set grav_frontright false)))))
		(set gravity_enc_index 0)))

(script static void enc_grav_cov_rearleft
	(begin
		(set grav_rearleft true)
		(begin_random
			(if grav_rearleft
				(begin
					(ai_place gravity_pad_covenant/grav_rearleft_grunts)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false))))
			(if
				(and grav_rearleft
					(=
						(game_difficulty_get) normal))
				(begin
					(ai_place gravity_pad_covenant/grav_rearleft_elites)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false))))
			(if grav_rearleft
				(begin
					(ai_place gravity_pad_covenant/grav_rearleft_grunts_b)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false))))
			(if grav_rearleft
				(begin
					(ai_place gravity_pad_covenant/grav_rearleft_jackals)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false))))
			(if
				(and grav_rearleft
					(=
						(game_difficulty_get) impossible))
				(begin
					(ai_place gravity_pad_covenant/rearleft_commander)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false))))
			(if
				(and grav_rearleft
					(=
						(game_difficulty_get) hard))
				(begin
					(ai_place gravity_pad_covenant/rearleft_stealth)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearleft_index gravity_enc_index)
						(set grav_rearleft false)))))
		(set gravity_enc_index 0)))

(script static void enc_grav_cov_rearright
	(begin
		(set grav_rearright true)
		(begin_random
			(if grav_rearright
				(begin
					(ai_place gravity_pad_covenant/grav_rearright_grunts)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false))))
			(if
				(and grav_rearright
					(=
						(game_difficulty_get) normal))
				(begin
					(ai_place gravity_pad_covenant/grav_rearright_elites)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false))))
			(if grav_rearright
				(begin
					(ai_place gravity_pad_covenant/grav_rearright_grunts_b)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false))))
			(if grav_rearright
				(begin
					(ai_place gravity_pad_covenant/grav_rearright_jackals)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false))))
			(if
				(and grav_rearright
					(=
						(game_difficulty_get) impossible))
				(begin
					(ai_place gravity_pad_covenant/rearright_commander)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false))))
			(if
				(and grav_rearright
					(=
						(game_difficulty_get) hard))
				(begin
					(ai_place gravity_pad_covenant/rearright_stealth)
					(set gravity_enc_index
						(+ 1.00 gravity_enc_index))
					(if
						(= enc_grav_rearright_index gravity_enc_index)
						(set grav_rearright false)))))
		(set gravity_enc_index 0)))

(script dormant void gravity_marines_revive
	(begin
		(sleep_until
			(= 2 gravity_wave_index) 60)
		(ai_renew gravity_pad_marines)
		(sleep_until
			(= 4 gravity_wave_index) 60)
		(ai_renew gravity_pad_marines)
		(sleep_until
			(= 6 gravity_wave_index) 60)
		(ai_renew gravity_pad_marines)
		(sleep_until
			(= 8 gravity_wave_index) 60)
		(ai_renew gravity_pad_marines)
		(sleep_until
			(= 10 gravity_wave_index) 60)
		(ai_renew gravity_pad_marines)))

(script continuous void ini_gravity_wave
	(begin
		(sleep_until gravity_wave)
		(begin_random
			(if gravity_wave
				(if
					(and
						(=
							(volume_test_objects grav_leftfront_safe
								(players)) false)
						(=
							(device_get_position gravity_door_lf) 0.00))
					(begin ini_gravity_wave
						(set gravity_wave_index
							(+ 1.00 gravity_wave_index))
						(if
							(= ini_grav_wave_index gravity_wave_index)
							(set gravity_wave false))
						(inspect gravity_wave_index)
						(sleep_until
							(<
								(ai_living_count gravity_pad_covenant) grav_cov_limit) 30 default_sleep_expire))))
			(if gravity_wave
				(if
					(and
						(=
							(volume_test_objects grav_rightfront_safe
								(players)) false)
						(=
							(device_get_position gravity_door_rf) 0.00))
					(begin ini_gravity_wave
						(set gravity_wave_index
							(+ 1.00 gravity_wave_index))
						(if
							(= ini_grav_wave_index gravity_wave_index)
							(set gravity_wave false))
						(inspect gravity_wave_index)
						(sleep_until
							(<
								(ai_living_count gravity_pad_covenant) grav_cov_limit) 30 default_sleep_expire))))
			(if gravity_wave
				(if
					(and
						(=
							(volume_test_objects grav_leftrear_safe
								(players)) false)
						(=
							(device_get_position gravity_door_lr) 0.00))
					(begin ini_gravity_wave
						(set gravity_wave_index
							(+ 1.00 gravity_wave_index))
						(if
							(= ini_grav_wave_index gravity_wave_index)
							(set gravity_wave false))
						(inspect gravity_wave_index)
						(sleep_until
							(<
								(ai_living_count gravity_pad_covenant) grav_cov_limit) 30 default_sleep_expire))))
			(if gravity_wave
				(if
					(and
						(=
							(volume_test_objects grav_rightrear_safe
								(players)) false)
						(=
							(device_get_position gravity_door_rr) 0.00))
					(begin ini_gravity_wave
						(set gravity_wave_index
							(+ 1.00 gravity_wave_index))
						(if
							(= ini_grav_wave_index gravity_wave_index)
							(set gravity_wave false))
						(inspect gravity_wave_index)
						(sleep_until
							(<
								(ai_living_count gravity_pad_covenant) grav_cov_limit) 30 default_sleep_expire)))))
		(if
			(= ini_grav_wave_index gravity_wave_index)
			(set gravity_wave_index 0))
		(sleep 1)
		(objects_predict
			(ai_actors gravity_pad_covenant))))

(script dormant void enc_grav_mus_hall
	(begin
		(sleep_until
			(volume_test_objects grav_muster_top_hall
				(players)))
		(ai_place grav_mus_hall_covenant/sidehall_grunts_left)
		(ai_place grav_mus_hall_covenant/sidehall_grunts_right)
		(ai_place grav_mus_hall_covenant/sidehall_elites_left)
		(ai_place grav_mus_hall_covenant/sidehall_elites_right)
		(ai_place grav_mus_hall_covenant/muster_grunts)
		(ai_place grav_mus_hall_covenant/muster_elites)
		(sleep 1)
		(objects_predict
			(ai_actors grav_mus_hall_covenant))))

(script continuous void enc_grav_mus_hall_rear
	(begin
		(sleep_until
			(volume_test_objects grav_muster_top_hall
				(players)))
		(sleep_until
			(= false
				(volume_test_objects grav_leftrear_safe
					(players))))
		(begin_random
			(if grav_mus_hall
				(begin
					(ai_place grav_mus_hall_covenant/rear_grunts)
					(set grav_mus_hall_index
						(+ 1.00 grav_mus_hall_index))
					(if
						(= enc_grav_mus_hall_index grav_mus_hall_index)
						(set grav_mus_hall false))))
			(if grav_mus_hall
				(begin
					(ai_place grav_mus_hall_covenant/rear_jackals)
					(set grav_mus_hall_index
						(+ 1.00 grav_mus_hall_index))
					(if
						(= enc_grav_mus_hall_index grav_mus_hall_index)
						(set grav_mus_hall false)))))
		(ai_magically_see_players grav_mus_hall_covenant/rear_grunts)
		(ai_magically_see_players grav_mus_hall_covenant/rear_jackals)
		(sleep
			(* 30.00 30.00))
		(set grav_mus_hall true)
		(set grav_mus_hall_index 0)
		(sleep 1)
		(objects_predict
			(ai_actors grav_mus_hall_covenant))))

(script dormant void enc_muster_ini
	(begin
		(ai_place muster_bay_covenant_bottom/grunts_ini)
		(ai_place muster_bay_covenant_bottom/elites_ini)
		(ai_place muster_bay_covenant_bottom/jackals_ini)
		(sleep 1)
		(objects_predict
			(ai_actors muster_bay_covenant_bottom))))

(script dormant void ini_muster_hall
	(begin
		(sleep_until
			(or
				(volume_test_objects mus_hangar_ledgehall
					(players))
				(>
					(device_get_position muster_hall_door_b) 0.00)) 15)
		(ai_place muster_hall_cov/grunts_b)
		(ai_place muster_hall_cov/jackals_a)
		(ai_place muster_hall_cov/elites_c)
		(sleep 1)
		(device_set_power muster_ledge_door 1.00)
		(objects_predict
			(ai_actors muster_hall_cov))))

(script dormant void ini_muster_bay_door_check
	(begin
		(sleep_until
			(>
				(device_get_position muster_bay_door) 0.50))
		(sleep -1 man_marines_to_door)
		(set muster_bay_door_unlocked true)
		(deactivate_team_nav_point_object player muster_bay_control)
		(set play_music_a50_06 false)))

(script dormant void enc_muster_hangar_hall
	(begin
		(ai_place muster_hangar_hall_cov/jackals_a)
		(ai_place muster_hangar_hall_cov/grunts_b)
		(ai_place muster_hangar_hall_cov/elites_c)
		(sleep 1)
		(objects_predict
			(ai_actors muster_bay_covenant_bottom))))

(script static void enc_mus_bot_l1
	(begin
		(set muster_l1 true)
		(begin_random
			(if muster_l1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_l1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l1_index muster_enc_index)
						(set muster_l1 false))))
			(if muster_l1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_l1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l1_index muster_enc_index)
						(set muster_l1 false))))
			(if muster_l1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_l1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l1_index muster_enc_index)
						(set muster_l1 false))))
			(if muster_l1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_l1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l1_index muster_enc_index)
						(set muster_l1 false)))))
		(set muster_enc_index 0)))

(script static void enc_mus_bot_l2
	(begin
		(set muster_l2 true)
		(begin_random
			(if muster_l2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_l2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l2_index muster_enc_index)
						(set muster_l2 false))))
			(if muster_l2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_l2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l2_index muster_enc_index)
						(set muster_l2 false))))
			(if muster_l2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_l2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l2_index muster_enc_index)
						(set muster_l2 false))))
			(if muster_l2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_l2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l2_index muster_enc_index)
						(set muster_l2 false)))))
		(set muster_enc_index 0)))

(script static void enc_mus_bot_l3
	(begin
		(set muster_l3 true)
		(begin_random
			(if muster_l3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_l3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l3_index muster_enc_index)
						(set muster_l3 false))))
			(if muster_l3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_l3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l3_index muster_enc_index)
						(set muster_l3 false))))
			(if muster_l3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_l3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l3_index muster_enc_index)
						(set muster_l3 false))))
			(if muster_l3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_l3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_l3_index muster_enc_index)
						(set muster_l3 false)))))
		(set muster_enc_index 0)))

(script static void enc_mus_bot_r1
	(begin
		(set muster_r1 true)
		(begin_random
			(if muster_r1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_r1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r1_index muster_enc_index)
						(set muster_r1 false))))
			(if muster_r1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_r1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r1_index muster_enc_index)
						(set muster_r1 false))))
			(if muster_r1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_r1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r1_index muster_enc_index)
						(set muster_r1 false))))
			(if muster_r1
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_r1)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r1_index muster_enc_index)
						(set muster_r1 false)))))
		(set muster_enc_index 0)))

(script static void enc_mus_bot_r2
	(begin
		(set muster_r2 true)
		(begin_random
			(if muster_r2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_r2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r2_index muster_enc_index)
						(set muster_r2 false))))
			(if muster_r2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_r2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r2_index muster_enc_index)
						(set muster_r2 false))))
			(if muster_r2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_r2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r2_index muster_enc_index)
						(set muster_r2 false))))
			(if muster_r2
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_r2)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r2_index muster_enc_index)
						(set muster_r2 false)))))
		(set muster_enc_index 0)))

(script static void enc_mus_bot_r3
	(begin
		(set muster_r3 true)
		(begin_random
			(if muster_r3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_jackals_r3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r3_index muster_enc_index)
						(set muster_r3 false))))
			(if muster_r3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_r3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r3_index muster_enc_index)
						(set muster_r3 false))))
			(if muster_r3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_grunts_b_r3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r3_index muster_enc_index)
						(set muster_r3 false))))
			(if muster_r3
				(begin
					(ai_place muster_bay_covenant_bottom/mus_elites_r3)
					(set muster_enc_index
						(+ 1.00 muster_enc_index))
					(if
						(= enc_mus_bot_r3_index muster_enc_index)
						(set muster_r3 false)))))
		(set enc_mus_bot_r1_index 0)))

(script dormant void dialog_muster_clear
	(begin
		(sleep_until
			(<
				(ai_status muster_bay_marines) 4))
		(ai_conversation muster_clear)))

(script dormant void ini_muster_wave_normal
	(begin
		(if
			(<=
				(ai_living_count muster_bay_marines) 1)
			(begin
				(set ini_muster_wave_index 3)
				(set muster_wave true))
			(if
				(<=
					(ai_living_count muster_bay_marines) 3)
				(begin
					(set ini_muster_wave_index 5)
					(set muster_wave true))
				(if
					(<=
						(ai_living_count muster_bay_marines) 5)
					(begin
						(set ini_muster_wave_index 7)
						(set muster_wave true)))))))

(script dormant void ini_muster_wave_hard
	(begin
		(if
			(<=
				(ai_living_count muster_bay_marines) 1)
			(begin
				(set ini_muster_wave_index 5)
				(set muster_wave true))
			(if
				(<=
					(ai_living_count muster_bay_marines) 3)
				(begin
					(set ini_muster_wave_index 7)
					(set muster_wave true))
				(if
					(<=
						(ai_living_count muster_bay_marines) 5)
					(begin
						(set ini_muster_wave_index 9)
						(set muster_wave true)))))))

(script dormant void ini_muster_wave_legendary
	(begin
		(if
			(<=
				(ai_living_count muster_bay_marines) 1)
			(begin
				(set ini_muster_wave_index 7)
				(set muster_wave true))
			(if
				(<=
					(ai_living_count muster_bay_marines) 3)
				(begin
					(set ini_muster_wave_index 9)
					(set muster_wave true))
				(if
					(<=
						(ai_living_count muster_bay_marines) 5)
					(begin
						(set ini_muster_wave_index 11)
						(set muster_wave true)))))))

(script continuous void ini_muster_wave_spawn
	(begin
		(sleep_until muster_wave)
		(begin_random
			(if muster_wave
				(if
					(and
						(= false
							(volume_test_objects mus_l1_safe
								(players)))
						(=
							(device_get_position muster_door_l1) 0.00))
					(begin ini_muster_wave_spawn
						(set muster_wave_index
							(+ 1.00 muster_wave_index))
						(if
							(= ini_muster_wave_index muster_wave_index)
							(set muster_wave false))
						(inspect muster_wave_index)
						(sleep_until
							(<
								(ai_living_count muster_bay_covenant_bottom) muster_cov_limit) 30 default_sleep_expire))))
			(if muster_wave
				(if
					(and
						(= false
							(volume_test_objects mus_l2_safe
								(players)))
						(=
							(device_get_position muster_door_l2) 0.00))
					(begin ini_muster_wave_spawn
						(set muster_wave_index
							(+ 1.00 muster_wave_index))
						(if
							(= ini_muster_wave_index muster_wave_index)
							(set muster_wave false))
						(inspect muster_wave_index)
						(sleep_until
							(<
								(ai_living_count muster_bay_covenant_bottom) muster_cov_limit) 30 default_sleep_expire))))
			(if muster_wave
				(if
					(and
						(= false
							(volume_test_objects mus_l3_safe
								(players)))
						(=
							(device_get_position muster_door_l3) 0.00))
					(begin ini_muster_wave_spawn
						(set muster_wave_index
							(+ 1.00 muster_wave_index))
						(if
							(= ini_muster_wave_index muster_wave_index)
							(set muster_wave false))
						(inspect muster_wave_index)
						(sleep_until
							(<
								(ai_living_count muster_bay_covenant_bottom) muster_cov_limit) 30 default_sleep_expire))))
			(if muster_wave
				(if
					(and
						(= false
							(volume_test_objects mus_r2_safe
								(players)))
						(=
							(device_get_position muster_door_r2) 0.00))
					(begin ini_muster_wave_spawn
						(set muster_wave_index
							(+ 1.00 muster_wave_index))
						(if
							(= ini_muster_wave_index muster_wave_index)
							(set muster_wave false))
						(inspect muster_wave_index)
						(sleep_until
							(<
								(ai_living_count muster_bay_covenant_bottom) muster_cov_limit) 30 default_sleep_expire))))
			(if muster_wave
				(if
					(and
						(= false
							(volume_test_objects mus_r3_safe
								(players)))
						(= false
							(volume_test_objects mus_r3_2_safe
								(players)))
						(=
							(device_get_position muster_door_r3) 0.00))
					(begin ini_muster_wave_spawn
						(set muster_wave_index
							(+ 1.00 muster_wave_index))
						(if
							(= ini_muster_wave_index muster_wave_index)
							(set muster_wave false))
						(inspect muster_wave_index)
						(sleep_until
							(<
								(ai_living_count muster_bay_covenant_bottom) muster_cov_limit) 30 default_sleep_expire)))))
		(if
			(= ini_muster_wave_index muster_wave_index)
			(set muster_wave_index 0))
		(sleep 1)
		(objects_predict
			(ai_actors muster_bay_covenant_bottom))))

(script dormant void ini_muster_ledge
	(begin
		(ai_place muster_bay_covenant_top/ledge_elites_side)
		(ai_place muster_bay_covenant_top/ledge_elites_back)
		(set muster_ledge true)
		(begin_random
			(if muster_ledge
				(begin
					(ai_place muster_bay_covenant_top/ledge_jackals_side)
					(set muster_ledge_index
						(+ 1.00 muster_ledge_index))
					(if
						(= ini_muster_ledge_index muster_ledge_index)
						(set muster_ledge false))))
			(if muster_ledge
				(begin
					(ai_place muster_bay_covenant_top/ledge_grunts_middle)
					(set muster_ledge_index
						(+ 1.00 muster_ledge_index))
					(if
						(= ini_muster_ledge_index muster_ledge_index)
						(set muster_ledge false))))
			(if muster_ledge
				(begin
					(ai_place muster_bay_covenant_top/ledge_jackals_back)
					(set muster_ledge_index
						(+ 1.00 muster_ledge_index))
					(if
						(= ini_muster_ledge_index muster_ledge_index)
						(set muster_ledge false)))))
		(if
			(= ini_muster_ledge_index muster_ledge_index)
			(set muster_ledge_index 0))
		(sleep 1)
		(objects_predict
			(ai_actors muster_bay_covenant_bottom))))

(script dormant void ini_muster_hangar_hall
	(begin
		(sleep_until
			(volume_test_objects muster_hangar_hall_trigger
				(players)))
		(wake enc_muster_hangar_hall)))

(script dormant void enc_hangar_hunters
	(begin
		(if
			(and
				(=
					(volume_test_objects han_back_l_safe
						(players)) false)
				(=
					(device_get_position han_bot_l_door) 0.00))
			(ai_place hangar_cov_first_floor/hunters_l))
		(sleep 1)
		(if
			(>
				(ai_living_count hangar_cov_first_floor/hunters_l) 0)
			(sleep -1))
		(if
			(and
				(=
					(volume_test_objects entr_safe
						(players)) false)
				(=
					(device_get_position hangar_first_floor_entr) 0.00))
			(ai_place hangar_cov_first_floor/hunters_entr))
		(sleep 1)
		(if
			(or
				(>
					(ai_living_count hangar_cov_first_floor/hunters_l) 0)
				(>
					(ai_living_count hangar_cov_first_floor/hunters_entr) 0))
			(sleep -1))
		(if
			(and
				(=
					(volume_test_objects han_back_r_safe
						(players)) false)
				(=
					(device_get_position han_bot_r_door) 0.00))
			(ai_place hangar_cov_first_floor/hunters_r))
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_first_floor))))

(script static void enc_hangar_first_a
	(begin
		(if
			(and
				(=
					(volume_test_objects han_back_r_safe
						(players)) false)
				(=
					(device_get_position han_bot_r_door) 0.00))
			(begin
				(begin_random
					(if hangar_first_a
						(begin
							(ai_place hangar_cov_first_floor/grunts_a)
							(set hangar_first_counter_a
								(+ 1.00 hangar_first_counter_a))
							(if
								(= hangar_first_counter_a hangar_first_limit_a)
								(set hangar_first_a false))))
					(if hangar_first_a
						(begin
							(ai_place hangar_cov_first_floor/elites_a)
							(set hangar_first_counter_a
								(+ 1.00 hangar_first_counter_a))
							(if
								(= hangar_first_counter_a hangar_first_limit_a)
								(set hangar_first_a false))))
					(if hangar_first_a
						(begin
							(ai_place hangar_cov_first_floor/jackals_a)
							(set hangar_first_counter_a
								(+ 1.00 hangar_first_counter_a))
							(if
								(= hangar_first_counter_a hangar_first_limit_a)
								(set hangar_first_a false))))
					(if hangar_first_a
						(begin
							(ai_place hangar_cov_first_floor/grunts_a2)
							(set hangar_first_counter_a
								(+ 1.00 hangar_first_counter_a))
							(if
								(= hangar_first_counter_a hangar_first_limit_a)
								(set hangar_first_a false)))))
				(set hangar_first_a true)
				(set hangar_first_counter_a 0)))
		(device_set_position han_bot_r_door 1.00)))

(script static void enc_hangar_first_e
	(begin
		(begin_random
			(if hangar_first_e
				(begin
					(ai_place hangar_cov_first_floor/grunts_e)
					(set hangar_first_counter_e
						(+ 1.00 hangar_first_counter_e))
					(if
						(= hangar_first_counter_e hangar_first_limit_e)
						(set hangar_first_e false))))
			(if hangar_first_e
				(begin
					(ai_place hangar_cov_first_floor/grunts_e2)
					(set hangar_first_counter_e
						(+ 1.00 hangar_first_counter_e))
					(if
						(= hangar_first_counter_e hangar_first_limit_e)
						(set hangar_first_e false))))
			(if hangar_first_e
				(begin
					(ai_place hangar_cov_first_floor/jackals_e)
					(set hangar_first_counter_e
						(+ 1.00 hangar_first_counter_e))
					(if
						(= hangar_first_counter_e hangar_first_limit_e)
						(set hangar_first_e false))))
			(if hangar_first_e
				(begin
					(ai_place hangar_cov_first_floor/elites_e)
					(set hangar_first_counter_e
						(+ 1.00 hangar_first_counter_e))
					(if
						(= hangar_first_counter_e hangar_first_limit_e)
						(set hangar_first_e false)))))
		(set hangar_first_e true)
		(set hangar_first_counter_e 0)
		(sleep 1)
		(device_set_position han_bot_r_door 1.00)))

(script static void enc_hangar_first_i
	(begin
		(begin_random
			(if hangar_first_i
				(begin
					(ai_place hangar_cov_first_floor/grunts_i)
					(set hangar_first_counter_i
						(+ 1.00 hangar_first_counter_i))
					(if
						(= hangar_first_counter_i hangar_first_limit_i)
						(set hangar_first_i false))))
			(if hangar_first_i
				(begin
					(ai_place hangar_cov_first_floor/grunts_i2)
					(set hangar_first_counter_i
						(+ 1.00 hangar_first_counter_i))
					(if
						(= hangar_first_counter_i hangar_first_limit_i)
						(set hangar_first_i false))))
			(if hangar_first_i
				(begin
					(ai_place hangar_cov_first_floor/jackals_i)
					(set hangar_first_counter_i
						(+ 1.00 hangar_first_counter_i))
					(if
						(= hangar_first_counter_i hangar_first_limit_i)
						(set hangar_first_i false))))
			(if hangar_first_i
				(begin
					(ai_place hangar_cov_first_floor/elites_i)
					(set hangar_first_counter_i
						(+ 1.00 hangar_first_counter_i))
					(if
						(= hangar_first_counter_i hangar_first_limit_i)
						(set hangar_first_i false)))))
		(set hangar_first_i true)
		(set hangar_first_counter_i 0)))

(script static void enc_hangar_first_q
	(begin
		(if
			(and
				(=
					(volume_test_objects han_back_l_safe
						(players)) false)
				(=
					(device_get_position han_bot_l_door) 0.00))
			(begin
				(begin_random
					(if hangar_first_q
						(begin
							(ai_place hangar_cov_first_floor/grunts_q)
							(set hangar_first_counter_q
								(+ 1.00 hangar_first_counter_q))
							(if
								(= hangar_first_counter_q hangar_first_limit_q)
								(set hangar_first_q false))))
					(if hangar_first_q
						(begin
							(ai_place hangar_cov_first_floor/grunts_q2)
							(set hangar_first_counter_q
								(+ 1.00 hangar_first_counter_q))
							(if
								(= hangar_first_counter_q hangar_first_limit_q)
								(set hangar_first_q false))))
					(if hangar_first_q
						(begin
							(ai_place hangar_cov_first_floor/jackals_q)
							(set hangar_first_counter_q
								(+ 1.00 hangar_first_counter_q))
							(if
								(= hangar_first_counter_q hangar_first_limit_q)
								(set hangar_first_q false))))
					(if hangar_first_q
						(begin
							(ai_place hangar_cov_first_floor/elites_q)
							(set hangar_first_counter_q
								(+ 1.00 hangar_first_counter_q))
							(if
								(= hangar_first_counter_q hangar_first_limit_q)
								(set hangar_first_q false)))))
				(set hangar_first_q true)
				(set hangar_first_counter_q 0)))
		(sleep 1)
		(device_set_position han_bot_l_door 1.00)))

(script static void enc_hangar_first_s
	(begin
		(if
			(and
				(=
					(volume_test_objects han_exit_safe
						(players)) false)
				(=
					(device_get_position hangar_exit) 0.00))
			(begin
				(begin_random
					(if hangar_first_s
						(begin
							(ai_place hangar_cov_first_floor/grunts_s)
							(set hangar_first_counter_s
								(+ 1.00 hangar_first_counter_s))
							(if
								(= hangar_first_counter_s hangar_first_limit_s)
								(set hangar_first_s false))))
					(if hangar_first_s
						(begin
							(ai_place hangar_cov_first_floor/grunts_s2)
							(set hangar_first_counter_s
								(+ 1.00 hangar_first_counter_s))
							(if
								(= hangar_first_counter_s hangar_first_limit_s)
								(set hangar_first_s false))))
					(if hangar_first_s
						(begin
							(ai_place hangar_cov_first_floor/jackals_s)
							(set hangar_first_counter_s
								(+ 1.00 hangar_first_counter_s))
							(if
								(= hangar_first_counter_s hangar_first_limit_s)
								(set hangar_first_s false))))
					(if hangar_first_s
						(begin
							(ai_place hangar_cov_first_floor/elites_s)
							(set hangar_first_counter_s
								(+ 1.00 hangar_first_counter_s))
							(if
								(= hangar_first_counter_s hangar_first_limit_s)
								(set hangar_first_s false)))))
				(set hangar_first_s true)
				(set hangar_first_counter_s 0)))
		(sleep 1)
		(device_set_position hangar_exit 1.00)))

(script static void enc_hangar_first_y
	(begin
		(if
			(and
				(=
					(volume_test_objects entr_safe
						(players)) false)
				(=
					(device_get_position hangar_first_floor_entr) 0.00))
			(begin
				(begin_random
					(if hangar_first_y
						(begin
							(ai_place hangar_cov_first_floor/grunts_y)
							(set hangar_first_counter_y
								(+ 1.00 hangar_first_counter_y))
							(if
								(= hangar_first_counter_y hangar_first_limit_y)
								(set hangar_first_y false))))
					(if hangar_first_y
						(begin
							(ai_place hangar_cov_first_floor/grunts_y2)
							(set hangar_first_counter_y
								(+ 1.00 hangar_first_counter_y))
							(if
								(= hangar_first_counter_y hangar_first_limit_y)
								(set hangar_first_y false))))
					(if hangar_first_y
						(begin
							(ai_place hangar_cov_first_floor/jackals_y)
							(set hangar_first_counter_y
								(+ 1.00 hangar_first_counter_y))
							(if
								(= hangar_first_counter_y hangar_first_limit_y)
								(set hangar_first_y false))))
					(if hangar_first_y
						(begin
							(ai_place hangar_cov_first_floor/elites_y)
							(set hangar_first_counter_y
								(+ 1.00 hangar_first_counter_y))
							(if
								(= hangar_first_counter_y hangar_first_limit_y)
								(set hangar_first_y false)))))
				(set hangar_first_y true)
				(set hangar_first_counter_y 0)))
		(sleep 1)
		(device_set_position hangar_first_floor_entr 1.00)))

(script static void enc_hangar_second_a
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_second_safe_a
						(players)) false)
				(=
					(device_get_position hangar_second_door_a) 0.00))
			(begin
				(begin_random
					(if hangar_second_a
						(begin
							(ai_place hangar_cov_second_floor/grunts_a)
							(set hangar_second_counter_a
								(+ 1.00 hangar_second_counter_a))
							(if
								(= hangar_second_counter_a hangar_first_limit_y)
								(set hangar_second_a false))))
					(if hangar_second_a
						(begin
							(ai_place hangar_cov_second_floor/elites_a)
							(set hangar_second_counter_a
								(+ 1.00 hangar_second_counter_a))
							(if
								(= hangar_second_counter_a hangar_first_limit_y)
								(set hangar_second_a false))))
					(if hangar_second_a
						(begin
							(ai_place hangar_cov_second_floor/jackals_a)
							(set hangar_second_counter_a
								(+ 1.00 hangar_second_counter_a))
							(if
								(= hangar_second_counter_a hangar_first_limit_y)
								(set hangar_second_a false))))
					(set hangar_second_a true)
					(set hangar_second_counter_a 0))))
		(sleep 1)
		(device_set_position hangar_second_door_a 1.00)))

(script static void enc_hangar_second_e
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_second_trigger_a
						(players)) false)
				(=
					(device_get_position hangar_second_door_e) 0.00))
			(begin
				(begin_random
					(if hangar_second_e
						(begin
							(ai_place hangar_cov_second_floor/grunts_e)
							(set hangar_second_counter_e
								(+ 1.00 hangar_second_counter_e))
							(if
								(= hangar_second_counter_e hangar_first_limit_y)
								(set hangar_second_e false))))
					(if hangar_second_e
						(begin
							(ai_place hangar_cov_second_floor/elites_e)
							(set hangar_second_counter_e
								(+ 1.00 hangar_second_counter_e))
							(if
								(= hangar_second_counter_e hangar_first_limit_y)
								(set hangar_second_e false))))
					(if hangar_second_e
						(begin
							(ai_place hangar_cov_second_floor/jackals_e)
							(set hangar_second_counter_e
								(+ 1.00 hangar_second_counter_e))
							(if
								(= hangar_second_counter_e hangar_first_limit_y)
								(set hangar_second_e false))))
					(set hangar_second_e true)
					(set hangar_second_counter_e 0))))
		(sleep 1)
		(device_set_position hangar_second_door_e 1.00)))

(script static void enc_hangar_second_i
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_second_trigger_c
						(players)) false)
				(=
					(device_get_position hangar_second_door_q) 0.00))
			(begin
				(begin_random
					(if hangar_second_i
						(begin
							(ai_place hangar_cov_second_floor/grunts_i)
							(set hangar_second_counter_i
								(+ 1.00 hangar_second_counter_i))
							(if
								(= hangar_second_counter_i hangar_first_limit_y)
								(set hangar_second_i false))))
					(if hangar_second_i
						(begin
							(ai_place hangar_cov_second_floor/elites_i)
							(set hangar_second_counter_i
								(+ 1.00 hangar_second_counter_i))
							(if
								(= hangar_second_counter_i hangar_first_limit_y)
								(set hangar_second_i false))))
					(if hangar_second_i
						(begin
							(ai_place hangar_cov_second_floor/jackals_i)
							(set hangar_second_counter_i
								(+ 1.00 hangar_second_counter_i))
							(if
								(= hangar_second_counter_i hangar_first_limit_y)
								(set hangar_second_i false))))
					(set hangar_second_i true)
					(set hangar_second_counter_i 0))))
		(sleep 1)
		(device_set_position hangar_second_door_q 1.00)))

(script static void enc_hangar_second_q
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_second_trigger_c
						(players)) false)
				(=
					(device_get_position hangar_second_door_q) 0.00))
			(begin
				(begin_random
					(if hangar_second_q
						(begin
							(ai_place hangar_cov_second_floor/grunts_q)
							(set hangar_second_counter_q
								(+ 1.00 hangar_second_counter_q))
							(if
								(= hangar_second_counter_q hangar_first_limit_y)
								(set hangar_second_q false))))
					(if hangar_second_q
						(begin
							(ai_place hangar_cov_second_floor/elites_q)
							(set hangar_second_counter_q
								(+ 1.00 hangar_second_counter_q))
							(if
								(= hangar_second_counter_q hangar_first_limit_y)
								(set hangar_second_q false))))
					(if hangar_second_q
						(begin
							(ai_place hangar_cov_second_floor/jackals_q)
							(set hangar_second_counter_q
								(+ 1.00 hangar_second_counter_q))
							(if
								(= hangar_second_counter_q hangar_first_limit_y)
								(set hangar_second_q false))))
					(set hangar_second_q true)
					(set hangar_second_counter_q 0))))
		(sleep 1)
		(device_set_position hangar_second_door_q 1.00)))

(script static void enc_hangar_second_elites_a
	(begin
		(ai_place hangar_cov_second_floor/elites_ledge_a)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_second_floor))))

(script static void enc_hangar_second_elites_b
	(begin
		(ai_place hangar_cov_second_floor/elites_ledge_b)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_second_floor))))

(script static void enc_hangar_second_elites_c
	(begin
		(ai_place hangar_cov_second_floor/elites_ledge_c)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_second_floor))))

(script static void enc_hangar_third_a
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_third_safe_a
						(players)) false)
				(=
					(device_get_position hangar_third_door_a) 0.00))
			(begin
				(ai_place hangar_cov_third_floor/grunts_a)
				(ai_place hangar_cov_third_floor/jackals_a)
				(sleep 1)
				(objects_predict
					(ai_actors hangar_cov_third_floor))
				(device_set_position hangar_third_door_a 1.00)))))

(script static void enc_hangar_third_e
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_third_safe_e
						(players)) false)
				(=
					(device_get_position hangar_third_door_e) 0.00))
			(begin
				(ai_place hangar_cov_third_floor/grunts_e)
				(ai_place hangar_cov_third_floor/elites_e)
				(sleep 1)
				(objects_predict
					(ai_actors hangar_cov_third_floor))
				(device_set_position hangar_third_door_e 1.00)))))

(script static void enc_hangar_third_i
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_third_safe_m
						(players)) false)
				(=
					(device_get_position hangar_door_c) 0.00))
			(begin
				(ai_place hangar_cov_third_floor/grunts_i)
				(ai_place hangar_cov_third_floor/jackals_i)
				(sleep 1)
				(objects_predict
					(ai_actors hangar_cov_third_floor))
				(device_set_position hangar_door_c 1.00)))))

(script static void enc_hangar_third_m
	(begin
		(if
			(and
				(=
					(volume_test_objects hangar_third_safe_m
						(players)) false)
				(=
					(device_get_position hangar_door_c) 0.00))
			(begin
				(ai_place hangar_cov_third_floor/elites_m)
				(ai_place hangar_cov_third_floor/jackals_m)
				(sleep 1)
				(objects_predict
					(ai_actors hangar_cov_third_floor))))))

(script dormant void enc_hangar_lefthall
	(begin
		(ai_place hangar_lefthall_cov/stealth_g)
		(ai_place hangar_lefthall_cov/stealth_e)
		(ai_place hangar_lefthall_cov/elites_a)
		(if
			(<
				(ai_living_count hangar_cov_first_floor) 5)
			(begin
				(ai_place hangar_lefthall_cov/grunts_a)
				(ai_place hangar_lefthall_cov/grunts_e)
				(ai_place hangar_lefthall_cov/jackals_i)))
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_third_floor))))

(script dormant void enc_hangar_righthall
	(begin
		(ai_place hangar_righthall_cov/grunts_a)
		(ai_place hangar_righthall_cov/jackals_c)
		(ai_place hangar_righthall_cov/elites_c)
		(ai_place hangar_righthall_cov/grunts_g)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_third_floor))))

(script static void test_hangar_door
	(begin
		(object_destroy extraction_machine)
		(object_create extraction_control)
		(device_set_power hangar_door_b 1.00)
		(device_set_position hangar_door_b 0.00)
		(sleep_until
			(=
				(device_get_position hangar_door_b) 1.00))
		(device_set_power hangar_door_b 0.00)))

(script dormant void ini_hangar_hall_open
	(begin
		(set pelican_hangar_a_trigger false)
		(sleep 1)
		(sleep 60)
		(wake enc_hangar_hunters)
		(wake music_a50_072)
		(ai_migrate hangar_cov_second_floor hangar_cov_second_floor/ledge_retreat)
		(ai_follow_target_players hangar_marines)
		(sleep_until
			(and
				(=
					(ai_living_count hangar_cov_first_floor/hunters_entr) 0)
				(=
					(ai_living_count hangar_cov_first_floor/hunters_r) 0)
				(=
					(ai_living_count hangar_cov_first_floor/hunters_l) 0))
			(* 30.00 20.00))
		(set play_music_a50_072 false)
		(sleep 90)
		(if
			(and
				(=
					(device_get_position hangar_exit) 0.00)
				(=
					(volume_test_objects hangar_first_trigger_a
						(players)) false))
			(ai_conversation shuttle_hall_door_open))
		(sleep 1)
		(device_one_sided_set hangar_exit false)
		(device_set_position hangar_exit 1.00)
		(sleep_until
			(=
				(device_get_position hangar_exit) 1.00) 1)
		(device_set_power hangar_exit 0.00)
		(if
			(=
				(volume_test_objects hangar_first_trigger_a
					(players)) false)
			(activate_team_nav_point_object default_red player hangar_exit 0.30))
		(sleep 60)
		(sleep_until
			(volume_test_objects hangar_first_trigger_a
				(players)))
		(ai_place hangar_cov_first_floor/grunts_w)
		(device_set_position hangar_lefthall_door 1.00)
		(ai_kill_silent hangar_cov_second_floor)
		(wake enc_hangar_lefthall)
		(deactivate_team_nav_point_object player hangar_exit)
		(ai_migrate hangar_marines hangar_marines_halls/squad_a)
		(ai_migrate hangar_cov_first_floor hangar_lefthall_cov/all)
		(ai_magically_see_players hangar_lefthall_cov/all)
		(ai_follow_target_players hangar_marines_halls)
		(ai_follow_target_players prison_marines)))

(script dormant void ini_hover_hangar_dropships
	(begin
		(object_create hangar_dropship_a)
		(vehicle_hover hangar_dropship_a true)
		(sleep 1)
		(ai_braindead_by_unit hangar_dropship_a true)))

(script dormant void ini_hangar_initial
	(begin ini_hangar_initial ini_hangar_initial ini_hangar_initial))

(script dormant void ini_hangar_first_wave_a
	(begin ini_hangar_first_wave_a ini_hangar_first_wave_a))

(script dormant void ini_hangar_first_wave_b
	(begin ini_hangar_first_wave_b
		(ai_place hangar_cov_second_floor/jackals_o)
		(ai_place hangar_cov_second_floor/grunts_q)
		(sleep 1)
		(ai_migrate hangar_cov_first_floor hangar_cov_first_floor/marines_in_b)
		(ai_magically_see_players hangar_cov_first_floor/marines_in_b)
		(ai_magically_see_encounter hangar_cov_second_floor/jackals_o hangar_marines)
		(ai_magically_see_encounter hangar_cov_second_floor/grunts_q hangar_marines)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_first_floor))))

(script dormant void ini_hangar_first_wave_d
	(begin ini_hangar_first_wave_d ini_hangar_first_wave_d
		(sleep 1)
		(ai_migrate hangar_cov_first_floor hangar_cov_first_floor/marines_in_d)
		(ai_magically_see_players hangar_cov_first_floor/marines_in_d)))

(script dormant void ini_hangar_first_wave_e
	(begin ini_hangar_first_wave_e
		(ai_place hangar_cov_second_floor/grunts_a)
		(sleep 1)
		(ai_migrate hangar_cov_first_floor hangar_cov_first_floor/marines_in_e)
		(ai_magically_see_players hangar_cov_first_floor/marines_in_e)))

(script dormant void ini_hangar_first_wave_f
	(begin ini_hangar_first_wave_f ini_hangar_first_wave_f
		(sleep 1)
		(ai_migrate hangar_cov_first_floor hangar_cov_first_floor/marines_in_f)
		(ai_magically_see_players hangar_cov_first_floor/marines_in_f)))

(script dormant void ini_hangar_second_wave_h
	(begin ini_hangar_second_wave_h ini_hangar_second_wave_h
		(sleep 1)
		(ai_migrate hangar_cov_second_floor hangar_cov_second_floor/marines_in_g)
		(ai_migrate hangar_lefthall_cov hangar_cov_second_floor/marines_in_g)))

(script dormant void ini_hangar_second_wave_i
	(begin
		(if
			(<
				(ai_living_count hangar_cov_second_floor) 7)
			(begin ini_hangar_second_wave_i)
			(if
				(<
					(ai_living_count hangar_cov_third_floor) 7)
				(begin
					(ai_place hangar_cov_third_floor/jackals_a))
				(if
					(<
						(ai_living_count hangar_cov_third_floor) 5)
					(begin
						(ai_place hangar_cov_third_floor/grunts_i)))))
		(sleep 1)
		(ai_migrate hangar_cov_second_floor hangar_cov_second_floor/marines_in_h)))

(script dormant void ini_hangar_second_wave_j
	(begin
		(if
			(<
				(ai_living_count hangar_cov_second_floor) 7) ini_hangar_second_wave_j)
		(sleep 1)
		(ai_migrate hangar_cov_second_floor hangar_cov_second_floor/marines_in_i)))

(script dormant void ini_hangar_third_wave_k
	(begin
		(if
			(<
				(ai_living_count hangar_cov_third_floor) 5) ini_hangar_third_wave_k)
		(sleep 1)
		(ai_migrate hangar_cov_third_floor hangar_cov_third_floor/marines_in_p)
		(ai_migrate hangar_righthall_cov hangar_cov_third_floor/marines_in_p)))

(script dormant void ini_hangar_third_wave_l
	(begin
		(if
			(<
				(ai_living_count hangar_cov_third_floor) 5) ini_hangar_third_wave_l)
		(sleep 1)
		(if
			(<
				(ai_living_count hangar_cov_third_floor) 8) ini_hangar_third_wave_l)
		(sleep 1)
		(ai_migrate hangar_cov_third_floor hangar_cov_third_floor/marines_in_q)))

(script dormant void ini_hangar_third_wave_m
	(begin
		(if
			(<
				(ai_living_count hangar_cov_third_floor) 5) ini_hangar_third_wave_m)
		(sleep 1)
		(if
			(<
				(ai_living_count hangar_cov_third_floor) 8) ini_hangar_third_wave_m)
		(sleep 1)
		(ai_migrate hangar_cov_third_floor hangar_cov_third_floor/marines_in_r)))

(script dormant void ini_hangar_pelican_a
	(begin
		(sleep_until
			(<
				(ai_living_count hangar_marines) 1))
		(if
			(or
				(game_is_cooperative)
				(=
					(game_difficulty_get) impossible)
				(not
					(volume_test_objects hangar_pelican_a_trigger
						(players))))
			(sleep -1))
		(ai_conversation shuttle_bay_doors_open)
		(sleep 360)
		(if pelican_hangar_a_trigger
			(wake pelican_hangar_a))))

(script dormant void ini_hangar_pelican_b
	(begin
		(device_set_power hangar_door_b 1.00)
		(device_set_position hangar_door_b 0.00)
		(if
			(or
				(game_is_cooperative)
				(=
					(game_difficulty_get) impossible)
				(>
					(ai_living_count hangar_marines_halls) 1))
			(sleep -1))
		(sleep 1)
		(ai_conversation shuttle_second_reins_ini)
		(sleep_until
			(volume_test_objects hangar_second_reins_trigger
				(players)))
		(activate_team_nav_point_object default_red player hangar_door_b_control 0.70)
		(sleep_until
			(>
				(device_get_position hangar_door_b) 0.00) 10)
		(wake general_save)
		(device_set_power hangar_door_b_control 0.00)
		(wake music_a50_071)
		(sleep_until
			(=
				(device_get_position hangar_door_b) 1.00) 10)
		(device_set_power hangar_door_b 0.00)
		(ai_conversation shuttle_second_door_open)
		(deactivate_team_nav_point_object player hangar_door_b_control) ini_hangar_pelican_b
		(sleep 1800)
		(device_set_power hangar_door_b 1.00)
		(device_set_position hangar_door_b 0.00)
		(device_set_position hangar_door_b_control 0.00)))

(script dormant void enc_control_in_room
	(begin
		(ai_place control_covenant/pad_elites_major)
		(ai_place control_covenant/elites_left)
		(ai_place control_covenant/elites_right)
		(ai_place control_covenant/grunts_k)
		(ai_place control_covenant/grunts_m)
		(sleep 1)
		(objects_predict
			(ai_actors control_covenant))))

(script dormant void enc_control_reins_a
	(begin
		(ai_place control_covenant/jackals_reins)
		(sleep 1)
		(objects_predict
			(ai_actors control_covenant))))

(script dormant void enc_control_reins_b
	(begin
		(ai_place control_covenant/grunts_reins)
		(sleep 1)
		(objects_predict
			(ai_actors control_covenant))))

(script dormant void enc_control_return
	(begin
		(ai_place control_covenant/stealth_elites)
		(sleep 1)
		(objects_predict
			(ai_actors control_covenant))))

(script dormant void enc_control_return_reins
	(begin
		(ai_place control_covenant/grunts_return)
		(sleep 1)
		(objects_predict
			(ai_actors control_covenant))))

(script dormant void dialog_control_clear
	(begin
		(sleep_until
			(=
				(ai_living_count control_covenant) 0))
		(sleep 90)
		(ai_conversation command_clear)))

(script dormant void enc_prison_cov_ini
	(begin
		(ai_place control_prison_hall_cov/jackals_s)
		(ai_place control_prison_hall_cov/jackals_c)
		(ai_place control_prison_hall_cov/grunts_a)
		(ai_place control_prison_hall_cov/jackals_i)
		(sleep 1)
		(objects_predict
			(ai_actors control_prison_hall_cov))))

(script dormant void enc_prison_return_ini
	(begin
		(ai_place control_prison_hall_cov/elites_m)
		(ai_place control_prison_hall_cov/grunts_i)
		(ai_place control_prison_hall_cov/jackals_g)
		(ai_place control_prison_hall_cov/elites_s)
		(ai_place control_prison_hall_cov/elites_q)
		(ai_place control_prison_hall_cov/grunts_q)
		(ai_place control_prison_hall_cov/jackals_s)
		(ai_place control_prison_hall_cov/grunts_k)
		(sleep 1)
		(objects_predict
			(ai_actors control_prison_hall_cov))))

(script dormant void enc_spawn_captain
	(begin
		(object_create keyes_prison)
		(ai_attach keyes_prison prison_marines_ini/captain)
		(custom_animation keyes_prison cinematics\animations\captain\level_specific\a50\a50 a50keyessit false)
		(sleep 1)
		(objects_predict keyes_prison)))

(script dormant void enc_spawn_marines
	(begin
		(object_create jailed_marine_1)
		(object_create jailed_marine_2)
		(object_create jailed_marine_3)
		(ai_attach jailed_marine_1 prison_marines_ini/marines_cellblock_d)
		(ai_attach jailed_marine_2 prison_marines_ini/marines_cellblock_d)
		(ai_attach jailed_marine_3 prison_marines_ini/marines_cellblock_d)
		(sleep 1)
		(objects_predict jailed_marine_1)
		(objects_predict jailed_marine_2)
		(objects_predict jailed_marine_3)
		(custom_animation jailed_marine_1 cinematics\animations\marines\level_specific\a50\a50 a50cellsit false)
		(custom_animation jailed_marine_2 cinematics\animations\marines\level_specific\a50\a50 a50cellsit false)
		(custom_animation jailed_marine_3 cinematics\animations\marines\level_specific\a50\a50 a50cellsit false)
		(sleep_until
			(or
				(objects_can_see_object
					(players) jailed_marine_1 10.00)
				(objects_can_see_object
					(players) jailed_marine_2 10.00)
				(objects_can_see_object
					(players) jailed_marine_3 10.00)))
		(custom_animation jailed_marine_1 cinematics\animations\marines\level_specific\a50\a50 a50cellcelebrate01 true)
		(custom_animation jailed_marine_2 cinematics\animations\marines\level_specific\a50\a50 a50cellcelebrate02 true)
		(custom_animation jailed_marine_3 cinematics\animations\marines\level_specific\a50\a50 a50cellcelebrate01 true)
		(sleep_until
			(=
				(ai_living_count prison_cell_d_covenant) 0))
		(unit_stop_custom_animation jailed_marine_1)
		(unit_stop_custom_animation jailed_marine_2)
		(unit_stop_custom_animation jailed_marine_3)))

(script dormant void enc_prison_cell_d_cov
	(begin
		(ai_place prison_cell_d_covenant/elite_commander)
		(ai_place prison_cell_d_covenant/elites_left)
		(ai_place prison_cell_d_covenant/elites_right)
		(ai_place prison_cell_d_covenant/grunts_ini)
		(sleep 1)
		(objects_predict
			(ai_actors prison_cell_d_covenant))))

(script dormant void enc_prison_cell_d_reins
	(begin
		(ai_place prison_cell_d_covenant/stealth_elites)
		(sleep 1)
		(objects_predict
			(ai_actors prison_cell_d_covenant))))

(script static void ini_post_rescue
	(begin
		(switch_bsp 3)
		(object_teleport ini_post_rescue prison_player0_teleport)
		(object_teleport ini_post_rescue prison_player1_teleport)
		(object_create captain_keyes)
		(object_create free_marine_1)
		(object_create free_marine_2)
		(object_create free_marine_3)
		(sleep 1)
		(fade_in 1.00 1.00 1.00 15)
		(ai_attach captain_keyes prison_captain/mig_cap_u)
		(ai_attach free_marine_1 prison_marines/mig_marines_u)
		(ai_attach free_marine_2 prison_marines/mig_marines_u)
		(ai_attach free_marine_3 prison_marines/mig_marines_u)
		(ai_erase hangar_cov_third_floor)
		(sleep 1)
		(objects_predict captain_keyes)
		(objects_predict free_marine_1)
		(objects_predict free_marine_2)
		(objects_predict free_marine_3)
		(if
			(or
				(=
					(game_difficulty_get) normal)
				(=
					(game_difficulty_get) hard))
			(ai_grenades false))))

(script dormant void ini_prison_a_dialog
	(begin
		(sleep_until
			(volume_test_objects mig_cellblock_a
				(players)))
		(ai_conversation empty_prison)))

(script static void ini_prison_cleanup
	(begin
		(fade_out 1.00 1.00 1.00 30)
		(sleep 30)
		(switch_bsp 3)
		(volume_teleport_players_not_inside null prison_teleport_flag)
		(object_destroy keyes_prison)
		(object_destroy jailed_marine_1)
		(object_destroy jailed_marine_2)
		(object_destroy jailed_marine_3)))

(script dormant void dialog_prison
	(begin
		(sleep_until
			(and
				(or
					(objects_can_see_object
						(players) jailed_marine_1 10.00)
					(objects_can_see_object
						(players) jailed_marine_2 10.00)
					(objects_can_see_object
						(players) jailed_marine_3 10.00))
				(>
					(ai_status prison_cell_d_covenant) 4)))
		(ai_conversation prison_initial)
		(sleep_until
			(<
				(ai_strength prison_cell_d_covenant) 0.30))
		(ai_conversation prison_kickin_ass)
		(sleep_until
			(=
				(ai_living_count prison_cell_d_covenant) 0))
		(ai_conversation prison_clear)))

(script dormant void enc_hangar_return
	(begin
		(ai_place hangar_cov_third_floor/grunts_return)
		(ai_place hangar_cov_third_floor/elites_return)
		(sleep 1)
		(objects_predict
			(ai_actors hangar_cov_third_floor))))

(script dormant void mission_area1
	(begin
		(wake music_a50_01)
		(wake obj_board)
		(sleep 30)
		(sleep 150)
		(wake obj_sniper)
		(wake traitor_bitch)))

(script dormant void mission_area2
	(begin
		(objects_predict area2_turret_a)
		(objects_predict field_generator_a)
		(ai_allow_dormant marines_initial false)
		(if
			(=
				(game_difficulty_get) impossible)
			(wake ini_enter_turret_area2_leg)
			(wake ini_enter_turret_area2_norm))
		(wake enc_area2_ini)
		(wake mig_marines_area2)
		(sleep 1) mission_area2
		(sleep_until
			(volume_test_objects area2_trigger
				(players)))
		(if
			(!=
				(game_difficulty_get) impossible)
			(wake ini_gun_runner))
		(sleep 30)
		(sleep_until
			(or
				(and
					(volume_test_objects area2_trigger_a
						(players))
					(<
						(ai_living_count covenant_area2) 10))
				(volume_test_objects area2_trigger_b
					(players))
				(=
					(ai_living_count covenant_area2) 0)))
		(wake enc_area2_wave_2)
		(set area2_marine_migrate true) mission_area2
		(sleep_until
			(or
				(volume_test_objects area2_trigger_c
					(players))
				(=
					(ai_living_count covenant_area2) 0)))
		(wake enc_back_area2)
		(set area2_marine_migrate_2 true)
		(sleep_until
			(=
				(ai_living_count covenant_area2) 0))
		(set play_music_a50_01 false)))

(script dormant void mission_area3
	(begin
		(ai_migrate covenant_area2 covenant_area3/area2_cleanup)
		(ai_allow_dormant covenant_area3/area2_cleanup false)
		(ai_allow_dormant marines_area3 false)
		(ai_link_activation covenant_area3 marines_area3)
		(sleep 1)
		(if
			(<
				(ai_status covenant_area3) 3)
			(ai_conversation area3_initial))
		(set play_music_a50_01 false)
		(sleep -1 ini_enter_turret_area2_norm)
		(sleep -1 ini_enter_turret_area2_leg)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(wake ini_enter_turret_area3_norm))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(wake ini_enter_turret_area3_norm))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(wake ini_enter_turret_area3_leg)
						(wake ini_area3_turrets_leg)))))
		(sleep 1)
		(wake general_save)
		(game_save_no_timeout)
		(wake mig_marines_area3)
		(wake enc_area3_initial)
		(sleep 30)
		(sleep_until
			(or
				(=
					(ai_living_count covenant_area3/jackals_hill_left) 0)
				(=
					(ai_living_count covenant_area3/turret_gunner_a) 0)
				(=
					(ai_living_count covenant_area3/grunts_ledge) 0)
				(volume_test_objects area3_trigger_a
					(players))))
		(sleep -1 dialog_area3_initial)
		(wake enc_elites_front_area3)
		(wake music_a50_02)
		(sleep_until
			(volume_test_objects area3_trigger_a
				(players)))
		(wake enc_area3_second)
		(sleep_until
			(volume_test_objects area3_trigger_b
				(players)))
		(wake enc_elites_reins_area3)
		(sleep_until
			(or
				(= 0
					(ai_living_count covenant_area3/elites_reins))
				(volume_test_objects area4_trigger
					(players))))
		(wake enc_grunts_reins_area3)
		(ai_allow_dormant covenant_area3/grunts_reins false)))

(script dormant void mission_area4
	(begin
		(sleep -1 ini_enter_turret_area3_norm)
		(sleep -1 ini_enter_turret_area3_leg)
		(wake dialog_area4_initial)
		(ai_migrate covenant_area3 covenant_area4/area3_cleanup)
		(ai_migrate marines_area3 marines_area4/squad_a)
		(wake enc_area4_initial)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(wake ini_enter_turret_area4_norm)
				(set area4_turret_limit 3))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(wake ini_enter_turret_area4_norm)
					(set area4_turret_limit 4))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(wake ini_enter_turret_area4_leg)
						(set area4_turret_limit 5)))))
		(wake general_save)
		(sleep 1)
		(ai_allow_dormant covenant_area4/area3_cleanup false)
		(ai_allow_dormant marines_area4 false)
		(wake ini_area4_turrets)
		(wake ini_area4_player_locator)
		(wake ini_area4_dropship)
		(wake ini_area4_grunts_m)
		(sleep_until
			(or
				(volume_test_objects area4_marines_ledge_trigger
					(players))
				(volume_test_objects area4_marines_middle_trigger
					(players))))
		(wake music_a50_03)
		(if
			(volume_test_objects area4_location_1
				(players))
			(begin
				(wake mig_marines_area4_ledge))
			(if
				(volume_test_objects area4_location_2
					(players))
				(begin
					(wake mig_marines_area4_middle))))
		(wake enc_area4_second)
		(sleep 30)
		(wake ini_area4_marine_reins)
		(sleep_until
			(volume_test_objects area4_reins_trigger
				(players)))
		(wake dialog_area5_initial)
		(wake general_save)
		(sound_looping_set_alternate levels\a50\music\a50_03 true)
		(wake ini_area4_reins)
		(set area4_cov_dropship false)
		(set area4_marine_reins false)
		(sleep 1)
		(ai_migrate covenant_area4 covenant_area4/squad_y)
		(sleep 1)
		(ai_follow_target_players covenant_area4/squad_y)))

(script dormant void mission_area5
	(begin
		(set play_music_a50_03 false)
		(wake general_save)
		(ai_allow_dormant marines_area5 false)
		(sleep -1 ini_enter_turret_area4_norm)
		(sleep -1 ini_enter_turret_area4_leg)
		(sleep -1 ini_area4_player_locator)
		(sleep -1 mig_marines_area4_ledge)
		(sleep -1 mig_marines_area4_middle)
		(wake ini_area5_turrets)
		(wake enc_area5_ini)
		(wake mig_marines_area5)
		(wake dialog_area5_guns)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(wake ini_enter_turret_area5_norm)
				(set area5_turret_limit 3))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(wake ini_enter_turret_area5_norm)
					(set area5_turret_limit 4))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(wake ini_enter_turret_area5_leg)
						(set area5_turret_limit 5)))))
		(sleep_until
			(volume_test_objects area5_dropship_trigger
				(players)))
		(wake ini_area5_cov_chaser)
		(wake ini_area5_pelican)
		(wake ini_area5_c_dropship)
		(wake ini_area5_cleanup_kill)
		(wake ini_area5_spawner)
		(wake ini_area5_random_spawner)
		(sleep_until
			(and
				(not area5_e_spawn)
				(not area5_g_spawn)
				(not area5_o_spawn)
				(not area5_q_spawn)))
		(if
			(=
				(game_difficulty_get) impossible)
			(begin
				(wake general_save) mission_area5))
		(set area5_pelican false)
		(ai_migrate covenant_area5 covenant_area5/squad_y)
		(ai_follow_target_players covenant_area5/squad_y)
		(sleep 1)
		(sleep_until
			(or
				(=
					(ai_living_count covenant_area5) 0)
				(<
					(ai_status covenant_area5) 2)))
		(wake general_save)
		(sleep 210)
		(sleep_until
			(objects_can_see_flag
				(players) hunter_intro 30.00))
		(sleep 1)
		(wake enc_area5_hunters)
		(wake music_a50_04)
		(sleep_until
			(=
				(ai_living_count covenant_area5/hunters) 0))
		(set play_music_a50_04 false)
		(sleep 150)
		(if
			(<
				(ai_living_count marines_area5) 5) mission_area5 mission_area5)
		(ai_follow_target_disable marines_area5)
		(sleep_until
			(volume_test_objects gravity_pad_teleport_trigger
				(players)))
		(ai_dialogue_triggers false)
		(sleep 90)
		(ai_kill_silent covenant_area5)
		(players_unzoom_all)
		(if mission_area5 mission_area5) mission_area5
		(switch_bsp 1)
		(object_teleport mission_area5 gravity_teleport0_flag)
		(object_teleport mission_area5 gravity_teleport1_flag)
		(ai_detach mission_area5)))

(script dormant void mission_gravity_room
	(begin
		(ai_dialogue_triggers true)
		(sound_class_set_gain vehicle_engine 0.00 0)
		(set play_music_a50_04 false)
		(sleep -1 ini_enter_turret_area5_norm)
		(sleep -1 ini_enter_turret_area5_leg)
		(sleep -1 ini_area5_spawner)
		(sleep -1 ini_area5_random_spawner)
		(sleep -1 ini_area5_cov_chaser)
		(sleep -1 ini_area5_cleanup_kill)
		(ai_erase_all)
		(sleep 1)
		(fade_in 0.80 0.00 1.00 15)
		(cinematic_screen_effect_set_convolution 3 2 10.00 0.00 1.00)
		(cinematic_screen_effect_set_filter_desaturation_tint 0.80 0.00 1.00)
		(cinematic_screen_effect_set_filter 1.00 0.00 1.00 0.00 true 1.00)
		(sleep 30)
		(cinematic_stop)
		(cinematic_screen_effect_stop)
		(wake enc_grav_marines)
		(sleep 15)
		(wake obj_rescue)
		(ai_conversation gravity_pad_initial)
		(sleep_until
			(>
				(ai_conversation_status gravity_pad_initial) 4))
		(game_save_totally_unsafe)
		(sleep 30)
		(wake enc_grav_stealth_ini)
		(wake ini_gravity_wave)
		(wake gravity_marines_revive)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(set ini_grav_wave_index 6)
				(set gravity_wave true))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(set ini_grav_wave_index 8)
					(set gravity_wave true))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(set ini_grav_wave_index 10)
						(set gravity_wave true)))))
		(sleep_until
			(=
				(ai_status gravity_pad_marines) 6))
		(sleep 30)
		(wake music_a50_05)
		(ai_conversation gravity_contact)
		(sleep_until
			(and
				(<
					(ai_living_count gravity_pad_covenant) 3)
				(= gravity_wave false)))
		(sleep_until
			(=
				(ai_living_count gravity_pad_covenant) 0) 30
			(* 30.00 15.00))
		(sleep_until
			(=
				(volume_test_objects gravity_trigger
					(ai_actors gravity_pad_covenant)) false))
		(wake general_save)
		(ai_migrate gravity_pad_marines gravity_pad_marines/all)
		(sleep
			(* 30.00 5.00))
		(wake enc_grav_hunters)
		(device_set_power gravity_bay_door 1.00)
		(device_set_position gravity_bay_door 1.00)
		(sleep_until
			(and
				(=
					(ai_living_count gravity_pad_covenant/grav_front_hunters) 0)
				(=
					(ai_living_count gravity_pad_covenant/grav_front_jackals) 0)))
		(set play_music_a50_05 false)
		(wake general_save)
		(wake man_marines_to_door)
		(sleep
			(* 30.00 5.00))
		(device_one_sided_set gravity_door_lf false)
		(device_one_sided_set gravity_door_lr false)
		(ai_place gravity_pad_covenant/grunts_all)
		(device_set_power grav_mus_hall_door 1.00)
		(sleep -1 ini_gravity_wave)))

(script dormant void mission_grav_mus_hall
	(begin
		(wake enc_grav_mus_hall)
		(wake enc_grav_mus_hall_rear)
		(sleep_until
			(volume_test_objects muster_bay_top_entrance
				(players)))
		(wake mig_grav_hall_cleanup)))

(script dormant void mission_muster_bay
	(begin
		(wake general_save)
		(sleep -1 enc_grav_mus_hall_rear)
		(wake enc_muster_ini)
		(wake ini_muster_hall)
		(wake ini_muster_wave_spawn)
		(wake ini_muster_bay_door_check)
		(wake ini_muster_hangar_hall)
		(wake ini_muster_ledge)
		(sleep 1)
		(objects_predict
			(ai_actors muster_hall_cov))
		(wake mig_grav_to_mus_marines)
		(sleep_until
			(volume_test_objects muster_view_door
				(players)))
		(wake music_a50_06)
		(if
			(>
				(ai_living_count gravity_pad_marines) 0)
			(begin
				(ai_conversation muster_door)
				(activate_team_nav_point_object default_red player muster_bay_control 0.70)))
		(sleep_until
			(and
				(<
					(ai_living_count muster_bay_covenant_bottom) 3)
				(volume_test_objects muster_floor_trigger
					(players))))
		(wake general_save)
		(sleep 120)
		(if
			(=
				(game_difficulty_get) normal)
			(begin
				(wake ini_muster_wave_normal))
			(if
				(=
					(game_difficulty_get) hard)
				(begin
					(wake ini_muster_wave_hard))
				(if
					(=
						(game_difficulty_get) impossible)
					(begin
						(wake ini_muster_wave_legendary)))))
		(sleep 300)
		(sleep_until
			(and
				(= muster_wave false)
				(or
					(=
						(ai_status muster_bay_covenant_bottom) 0)
					(<
						(ai_living_count muster_bay_covenant_bottom) 2))))
		(if muster_door_nav
			(activate_team_nav_point_object default_red player muster_door_l2 0.30))
		(set play_music_a50_06 false)
		(device_one_sided_set muster_door_l1 false)
		(device_one_sided_set muster_door_l2 false)
		(device_one_sided_set muster_door_l3 false)
		(ai_automatic_migration_target muster_bay_marines/squad_f true)
		(ai_automatic_migration_target muster_bay_marines/squad_g true)
		(ai_automatic_migration_target muster_bay_marines/squad_h true)
		(wake general_save)
		(sleep 90)
		(wake dialog_muster_clear)
		(sleep_until
			(or
				(volume_test_objects mus_l1_safe
					(players))
				(volume_test_objects mus_l2_safe
					(players))
				(volume_test_objects mus_l3_safe
					(players))
				(volume_test_objects muster_hangar_hall_trigger
					(players))))
		(sleep -1 dialog_muster_clear)
		(deactivate_team_nav_point_object player muster_door_l2)))

(script dormant void mission_hangar
	(begin
		(sleep -1 ini_muster_wave_spawn)
		(set muster_door_nav false)
		(deactivate_team_nav_point_object player muster_door_l2)
		(deactivate_team_nav_point_object player muster_bay_control)
		(device_set_position_immediate hangar_back_door 0.00)
		(device_set_position_immediate hangar_door_b 1.00)
		(device_set_power hangar_door_b 0.00)
		(ai_migrate muster_bay_marines hangar_marines/marines_ini)
		(sleep 1)
		(ai_teleport_to_starting_location_if_unsupported hangar_marines/marines_ini)
		(wake general_save)
		(ai_erase gravity_pad_marines)
		(ai_erase gravity_pad_covenant)
		(ai_erase muster_bay_covenant_top)
		(ai_erase muster_bay_covenant_bottom)
		(ai_erase muster_hall_cov)
		(wake ini_hover_hangar_dropships)
		(wake ini_hangar_initial)
		(sleep_until
			(>
				(device_get_position hangar_first_floor_entr) 0.00))
		(wake ini_hangar_pelican_a)
		(sleep_until
			(volume_test_objects hangar_entrance
				(players)) 15)
		(wake auto_migration_deactivate)
		(sleep_until
			(or
				(=
					(ai_status hangar_cov_first_floor) 6)
				(=
					(volume_test_objects hangar_entrance
						(players)) false)))
		(ai_migrate hangar_marines hangar_marines/mig_marines_a)
		(wake ini_hangar_first_wave_a)
		(set hangar_location_index 1)
		(ai_renew hangar_marines)
		(sleep_until
			(or
				(volume_test_objects han_mig_a
					(players))
				(volume_test_objects han_mig_b
					(players))
				(volume_test_objects han_mig_c
					(players))))
		(sleep_until
			(<
				(ai_living_count hangar_cov_first_floor) 2))
		(ai_migrate hangar_marines hangar_marines/mig_marines_b)
		(wake ini_hangar_first_wave_b)
		(sound_looping_set_alternate levels\a50\music\a50_07 true)
		(set hangar_location_index 2)
		(sleep_until
			(or
				(volume_test_objects han_mig_d
					(players))
				(volume_test_objects han_mig_g
					(players))))
		(sleep_until
			(<
				(ai_living_count hangar_cov_first_floor) 2))
		(wake general_save)
		(ai_migrate hangar_marines hangar_marines/mig_marines_d)
		(wake ini_hangar_first_wave_d)
		(set play_music_a50_07 false)
		(set hangar_location_index 3)
		(ai_renew hangar_marines)
		(sleep_until
			(or
				(volume_test_objects han_mig_e
					(players))
				(volume_test_objects han_mig_o
					(players))
				(volume_test_objects han_mig_e_2
					(players))))
		(sleep_until
			(<
				(ai_living_count hangar_cov_first_floor) 2))
		(ai_migrate hangar_marines hangar_marines/mig_marines_e)
		(wake ini_hangar_first_wave_e)
		(set hangar_location_index 4)
		(ai_renew hangar_marines)
		(sleep_until
			(volume_test_objects han_mig_f
				(players)))
		(sleep_until
			(<
				(ai_living_count hangar_cov_first_floor) 2))
		(ai_migrate hangar_marines hangar_marines/mig_marines_f)
		(wake ini_hangar_first_wave_f)
		(set hangar_location_index 5)
		(ai_renew hangar_marines)
		(ai_conversation shuttle_hall_door_locked)
		(sleep_until
			(<
				(ai_living_count hangar_cov_first_floor) 2))
		(wake ini_hangar_hall_open)
		(sleep_until
			(volume_test_objects hangar_first_trigger_a
				(players)))
		(wake general_save)
		(sleep_until
			(volume_test_objects hangar_second_trigger_a
				(players)))
		(wake general_save)
		(wake ini_hangar_pelican_b)
		(wake ini_hangar_second_wave_h)
		(sleep_until
			(volume_test_objects hangar_exit_trigger
				(players)))
		(wake ini_hangar_second_wave_i)
		(sleep_until
			(volume_test_objects hangar_second_trigger_b
				(players)))
		(wake ini_hangar_second_wave_j)
		(wake enc_hangar_righthall)
		(sleep_until
			(volume_test_objects hangar_second_trigger_c
				(players)))
		(wake general_save)
		(sleep_until
			(volume_test_objects hangar_third_trigger_a
				(players)))
		(wake general_save)
		(wake ini_hangar_third_wave_k)
		(sleep_until
			(volume_test_objects hangar_third_trigger_c
				(players)))
		(wake ini_hangar_third_wave_l)
		(sleep_until
			(volume_test_objects hangar_third_trigger_d
				(players)))
		(wake ini_hangar_third_wave_m)
		(set player_location_index 2)
		(wake ini_prison_mig_manage)))

(script dormant void mission_control
	(begin
		(wake general_save)
		(wake enc_control_in_room)
		(sleep -1 ini_hangar_pelican_b)
		(deactivate_team_nav_point_object player hangar_door_b_control)
		(wake music_a50_08)
		(sleep_until
			(and
				(=
					(ai_living_count control_covenant/elites_left) 0)
				(=
					(ai_living_count control_covenant/elites_right) 0)))
		(wake enc_control_reins_a)
		(sleep 1)
		(sleep_until
			(=
				(ai_living_count control_covenant) 0))
		(wake enc_control_reins_b)
		(device_set_power control_door_d 1.00)
		(if
			(not
				(volume_test_objects prison_trigger
					(players)))
			(activate_team_nav_point_object default_red player control_door_d 0.30))
		(sleep_until
			(=
				(ai_living_count control_covenant) 0))
		(wake dialog_control_clear)
		(ai_migrate prison_marines control_marines/on_pad)
		(wake general_save)
		(sleep_until
			(volume_test_objects prison_trigger
				(players)))
		(deactivate_team_nav_point_object player control_door_d)))

(script dormant void mission_prison
	(begin
		(sleep -1 dialog_control_clear)
		(set play_music_a50_08 false)
		(wake ini_prison_a_dialog)
		(wake enc_prison_cov_ini)
		(wake enc_spawn_captain)
		(sleep 1)
		(set player_location_index 1)
		(sleep 1)
		(wake enc_spawn_marines)
		(wake mig_marines_prison_a)
		(wake mig_marines_prison_d)
		(wake enc_prison_cell_d_cov)
		(sleep_until
			(volume_test_objects prison_save_trigger
				(players)))
		(wake general_save)
		(sleep_until
			(>
				(device_get_position cellblock_d_maindoor) 0.00))
		(wake music_a50_09)
		(wake dialog_prison)
		(sleep_until
			(=
				(ai_living_count prison_cell_d_covenant) 0))
		(sleep_until
			(=
				(device_group_get prison_d_switch_position) 1.00))
		(set play_music_a50_09 false)
		(sleep
			(* 30.00 5.00)) mission_prison
		(if mission_prison mission_prison) mission_prison mission_prison
		(sleep -1 ini_prison_a_dialog)
		(wake obj_escape)
		(ai_conversation prison_move_out)
		(wake general_save)
		(set captain_rescued true)
		(sleep 90)
		(wake enc_prison_cell_d_reins)
		(wake enc_prison_return_ini)
		(object_destroy extraction_machine)
		(object_create extraction_control)
		(device_set_power control_door_d 1.00)
		(wake game_lost_script)))

(script dormant void mission_control_revisited
	(begin
		(wake general_save)
		(ai_kill_silent control_marines)
		(sleep 1)
		(wake enc_control_return)
		(sleep_until
			(=
				(ai_living_count control_covenant) 0))
		(wake game_win_script)
		(sleep_until
			(>
				(ai_conversation_status shuttle_revisited) 4))
		(wake music_a50_11)
		(sleep 60)
		(wake enc_control_return_reins)
		(device_one_sided_set control_door_a false)
		(device_one_sided_set control_door_b false)
		(device_one_sided_set control_door_c false)
		(device_one_sided_set control_door_d false)
		(ai_automatic_migration_target prison_captain/mig_cap_l true)
		(ai_automatic_migration_target prison_captain/mig_cap_m true)
		(ai_automatic_migration_target prison_captain/mig_cap_n true)
		(ai_automatic_migration_target prison_captain/mig_cap_o true)
		(ai_automatic_migration_target prison_marines/mig_marines_l true)
		(ai_automatic_migration_target prison_marines/mig_marines_m true)
		(ai_automatic_migration_target prison_marines/mig_marines_n true)
		(ai_automatic_migration_target prison_marines/mig_marines_o true)
		(sleep_until
			(=
				(ai_living_count control_covenant) 0))
		(wake general_save)))

(script dormant void mission_hangar_revisited
	(begin
		(wake enc_hangar_return)
		(sleep_until
			(=
				(device_get_position hangar_door_c) 1.00) 1)
		(sound_looping_set_alternate levels\a50\music\a50_11 true)))

(script static void kill_all_continuous
	(begin
		(sleep -1 ini_gravity_wave)
		(sleep -1 ini_muster_wave_spawn)
		(sleep -1 enc_grav_mus_hall_rear)
		(sleep -1 ini_prison_mig_manage)
		(sleep -1 ini_enter_turret_area2_norm)
		(sleep -1 ini_enter_turret_area2_leg)
		(sleep -1 ini_enter_turret_area3_norm)
		(sleep -1 ini_enter_turret_area3_leg)
		(sleep -1 ini_enter_turret_area4_norm)
		(sleep -1 ini_enter_turret_area4_leg)
		(sleep -1 ini_enter_turret_area5_norm)
		(sleep -1 ini_enter_turret_area5_leg)
		(sleep -1 ini_area4_player_locator)
		(sleep -1 ini_area5_spawner)
		(sleep -1 ini_area5_cov_chaser)
		(sleep -1 ini_area5_random_spawner)
		(sleep -1 general_save)
		(sleep -1 ini_area5_cleanup_kill)))

(script startup void mission_a50
	(begin
		(fade_out 0.00 0.00 0.00 0)
		(ai_allegiance player human)
		(cls) mission_a50
		(sleep 1) mission_a50
		(set mission_begin true)
		(wake mission_area1)
		(wake mission_area2)
		(sleep_until
			(volume_test_objects area3_trigger
				(players)))
		(wake mission_area3)
		(sleep_until
			(volume_test_objects area4_trigger
				(players)))
		(wake mission_area4)
		(sleep_until
			(volume_test_objects area5_trigger
				(players)))
		(wake mission_area5)
		(sleep_until
			(volume_test_objects gravity_trigger
				(players)))
		(wake mission_gravity_room)
		(sleep_until
			(volume_test_objects grav_leftfront_safe
				(players)))
		(wake mission_grav_mus_hall)
		(sleep_until
			(volume_test_objects muster_bay_top_entrance
				(players)))
		(wake mission_muster_bay)
		(sleep_until
			(volume_test_objects hangar_trigger
				(players)))
		(wake mission_hangar)
		(sleep_until
			(volume_test_objects control_migration
				(players)))
		(wake mission_control)
		(sleep_until
			(volume_test_objects prison_trigger
				(players)))
		(wake mission_prison)
		(sleep_until captain_rescued)
		(sleep_until
			(volume_test_objects prison_trigger
				(players)))
		(wake mission_control_revisited)
		(sleep_until
			(volume_test_objects hangar_migration
				(players)))
		(wake mission_hangar_revisited)))

(script static void run_setup
	(begin
		(object_teleport marine_speech_1 marine1_run_base)
		(object_teleport marine_speech_2 marine2_run_base)
		(object_teleport marine_speech_3 marine3_run_base)
		(recording_play marine_speech_1 marine1_run)
		(recording_play marine_speech_2 marine2_run)
		(recording_play marine_speech_3 marine3_run)))

(script static void flight_check
	(begin
		(object_teleport extraction_dropship extraction_dropship_base)
		(scenery_animation_start extraction_dropship cinematics\animations\c_dropship\level_specific\a50\a50 a50_dropship)))
