//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue marsh
//	Insertion Points:	start (or icl)	- Beginning
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// =================================================================================================
// *** OBJECTIVES ***
// =================================================================================================
// =================================================================================================

script static void marsh_lz_obj_2()

	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash1);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (new_obj);
	sleep (30 * 4);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (chtitlemarsh3);

end
