/// @description Setup
text = "Pause"; //The pause screen message.
text_font = -1; //Default GameMaker font is -1, else set a custom font here.
text_color = c_white; //The color of the message.
text_alpha = 1; //The alpha of the message.
rec_padding = 32; //The extra padding around the colored rectangle.
rec_color = c_black; //The color of the rectangle.
rec_alpha = 0.7; //The alpha of the rectangle.
unpause_key = vk_escape; //Key for un-pausing.

active_list = -1; //List containing which objects where active before the pause started.

/*
 We want to know the width and height of our game, and if we are not
 using views, this will simply be the room size.
 However, if we are using views, we need to loop through the views
 and figure out the actual width. We cannot simply use window width
 and height, since this will not work properly with fullscreen.
*/
w = room_width;
h = room_height;

if view_enabled {
 var __ww = 0, __hh = 0;
 for (var i=0;i<8;i++){
  if __view_get( e__VW.Visible, i ) == true {
   __ww = max(__ww,__view_get( e__VW.XPort, i )+__view_get( e__VW.WPort, i ));
   __hh = max(__hh,__view_get( e__VW.YPort, i )+__view_get( e__VW.HPort, i ));
  }
 }
 w = __ww;
 h = __hh;
}

//We want to make all our foregrounds invisible, or else they will be drawn on top of the pause screen.
back_visibility = 0;
back_hspd = 0;
back_vspd = 0;
for(i=0;i<8;i++){
 back_visibility[i] = __background_get( e__BG.Visible, i );
 if __background_get( e__BG.Foreground, i ) {
  __background_set( e__BG.Visible, i, false );
 }
 
 back_hspd[i] = __background_get( e__BG.HSpeed, i );
 back_vspd[i] = __background_get( e__BG.VSpeed, i );
 __background_set( e__BG.HSpeed, i, 0 );
 __background_set( e__BG.VSpeed, i, 0 );
}

/*
 If we are using views, we need to make only view 0 visible, and 
 rescale it to fit the window. Because of this, we need to store the 
 old values of the view, and which other views was visible.
*/
view_visibility = 0;
if view_enabled {
 for (var i=0;i<8;i++){
  view_visibility[i] = __view_get( e__VW.Visible, i );
  __view_set( e__VW.Visible, i, false );
 }
 __view_set( e__VW.Visible, 0, true );
 
 //Old view size
 view_x = __view_get( e__VW.XView, 0 );
 view_y = __view_get( e__VW.YView, 0 );
 view_w = __view_get( e__VW.WView, 0 );
 view_h = __view_get( e__VW.HView, 0 );
 
 __view_set( e__VW.XView, 0, 0 );
 __view_set( e__VW.YView, 0, 0 );
 __view_set( e__VW.WView, 0, w );
 __view_set( e__VW.HView, 0, h );
 
 //Old port size
 port_x = __view_get( e__VW.XPort, 0 );
 port_y = __view_get( e__VW.YPort, 0 );
 port_w = __view_get( e__VW.WPort, 0 );
 port_h = __view_get( e__VW.HPort, 0 );
 
 __view_set( e__VW.XPort, 0, 0 );
 __view_set( e__VW.YPort, 0, 0 );
 __view_set( e__VW.WPort, 0, w );
 __view_set( e__VW.HPort, 0, h );
}

/*
 If the application surface is enabled, we create a screenshot sprite
 from this surface. If not then we need to do it the slower way, taking
 an actual screenshot, and loading it in as a sprite.
 
 In case of a window larger than the game, we need to know the position 
 of the actual game on screen (if application surface is not on).
*/
if application_surface_is_enabled() {
 sprite_index = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
} else {
 screen_save(working_directory+"tempScreen.png");
 sprite_index = sprite_add(working_directory+"tempScreen.png",0,false,false,0,0);
 file_delete(working_directory+"tempScreen.png");
}

/*
 Down here you can create objects, in case you want a pause menu or
 something like that. The objects will automatically be destroyed 
 when the pause is terminated.
 
 For an example, try un-commenting the code below:
*/

//Create pause menu objects down here!

/* */
/*  */
