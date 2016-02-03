//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434
;
; Mission: 					m80_delta
;	Insertion Points:	to_lab (or itl)
;
//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434



// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** LAB: FX ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// === f_lab_fx_init::: Initialize
script dormant f_lab_fx_init()
	//dprint( "::: f_lab_fx_init :::" );

	// start trigger
	wake( f_lab_fx_trigger );

end

// === f_lab_fx_deinit::: Deinitialize
script dormant f_lab_fx_deinit()
	//dprint( "::: f_lab_fx_deinit :::" );

	// kill functions
	kill_script( f_lab_fx_init );
	kill_script( f_lab_fx_trigger );

end

// === f_lab_fx_trigger::: Trigger
script dormant f_lab_fx_trigger()
	//dprint( "::: f_lab_fx_trigger :::" );

	// wait for lab to start
	sleep_until( f_lab_started(), 1 );

	// low-throttle fx
	//dprint( "::: f_lab_fx_trigger: THROTTLE DOWN :::" );
	gpu_throttle_max_allowed_value = 0.6;

	// wait for lab to be completed
	sleep_until( f_lab_completed(), 1 );

	// restore fx throttle
	//dprint( "::: f_lab_fx_trigger: THROTTLE UP :::" );
	gpu_throttle_max_allowed_value = 1.0;

end
