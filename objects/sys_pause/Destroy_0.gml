/// @description Clean up
//We destroy our sprite again, since it is not needed any more.
sprite_delete(sprite_index);

//If pausing a 3D game we need to turn d3d back on.
if d3d_is_on {
 d3d_start();
}

//Re-do the views
if is_array(view_visibility) {
 for(var i=0;i<8;i++){
  __view_set( e__VW.Visible, i, view_visibility[i] );
 }
 __view_set( e__VW.XView, 0, view_x );
 __view_set( e__VW.YView, 0, view_y );
 __view_set( e__VW.WView, 0, view_w );
 __view_set( e__VW.HView, 0, view_h );
 
 __view_set( e__VW.XPort, 0, port_x );
 __view_set( e__VW.YPort, 0, port_y );
 __view_set( e__VW.WPort, 0, port_w );
 __view_set( e__VW.HPort, 0, port_h );
}

//Enables our foreground images again..
for(i=0;i<8;i++){
 __background_set( e__BG.Visible, i, back_visibility[i] );
 __background_set( e__BG.HSpeed, i, back_hspd[i] );
 __background_set( e__BG.VSpeed, i, back_vspd[i] );
}

//..destroy any existing instances.. (explained below)
for(var i=0;i<instance_count;i++){
 with instance_id_get( i ) {
  instance_destroy();
 }
}

//..and re-activate the before active objects again!
for(var i=0;i<ds_list_size(active_list);i++){
 instance_activate_object(ds_list_find_value(active_list,i));
}

//And free the list from memory.
ds_list_destroy(active_list);

/*
 WHY DESTROYING INSTANCES? ONLY THIS ONE EXISTS?
 Well, this is in case you want to have a menu on the pause screen. Or
 something similar. Any object you create after using game_pause() (for
 example in the pause create event, where I have planted an extra 
 example) will not be deactivated, and can thus be used as menu elements.
 
 Try un-commenting the example code in the create event.
*/

/* */
/*  */
