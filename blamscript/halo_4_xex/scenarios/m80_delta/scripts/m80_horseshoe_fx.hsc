//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434
;
; Mission: 					m80_delta
;	Insertion Points:	to_horseshoe (or itl)
;
//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434



// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** HORSESHOE: FX ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// === f_horseshoe_fx_init::: Initialize
script dormant f_horseshoe_fx_init()
	dprint( "::: f_horseshoe_fx_init :::" );

	// init sub modules

end

// === f_horseshoe_fx_deinit::: Deinitialize
script dormant f_horseshoe_fx_deinit()
	//dprint( "::: f_horseshoe_fx_deinit :::" );

	// kill functions
	kill_script( f_horseshoe_fx_init );

end
