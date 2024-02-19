move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
move_x *= my_speed;


var _instancecheck = instance_place(x, y, obj_checkpoint);
var _instance = instance_place(x, y, obj_parryable);

if place_meeting(x, y, obj_checkpoint){
	lastcheckx=obj_player.x;
	lastchecky=obj_player.y;
	instance_deactivate_object(_instancecheck);
	}

if place_meeting(x, y+2, obj_wall){
	move_y =0;
	jumpcounter=0;
	
	if keyboard_check_pressed(vk_space ) or keyboard_check_pressed(vk_up) move_y = -jump_speed{jumpcounter++;}	
}
else if move_y<10{
	move_y +=1;
}


if place_meeting(x, y, obj_parryable){
	
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up)  {
	move_y = -jump_speed;
	jumpcounter++;
	instance_deactivate_object(_instance);
	
	}
	
	}
	
if timer>0{timer--;}
if timer==0{instance_activate_object(obj_parryable);
	timer=300;
	}


move_and_collide(move_x, move_y, obj_wall);

if move_x != 0{
	image_xscale = sign(move_x);
}
if place_meeting(x, y, obj_dood){
if lastcheckx && lastchecky != 0{
	x=lastcheckx;
	y=lastchecky;
}
else{
instance_activate_object(obj_deathicon);
instance_destroy(obj_player);
instance_destroy(obj_camera);
}
}
if place_meeting(x, y, obj_blindstage7){
	if lastcheckx != 0{
	x=lastcheckx;
	y=lastchecky;
}

}
