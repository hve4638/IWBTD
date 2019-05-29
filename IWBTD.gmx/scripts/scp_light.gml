///scp_light(x,y,bright);
var bx, by, size;
bx=argument[0];
by=argument[1];
size=argument[2];
if !instance_exists(sys_lighting)
|| !surface_exists(light)
|| bx+size/2<view_xview
|| bx-size/2>view_xview+view_wview
|| by+size/2<view_yview
|| by-size/2>view_yview+view_hview
return -1;
draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_colour(bx-size/2-view_xview,by-size/2-view_yview,bx+size/2-view_xview,by+size/2-view_yview,dark,c_black,false);
surface_reset_target();
draw_set_blend_mode(bm_normal);
