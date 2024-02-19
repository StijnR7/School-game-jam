

if timer2>0{
	timer2--;
}

if timer>0{
	timer--;
}
if timer==0{
	x=obj_camera.x;
	y=obj_camera.y;
	timer3--;
	if timer3 == 0 {
	timer=99999999999999999;
	x=-10000;
	y=-10000;
}}
if timer2==0{
	timer=1200;
	timer2=4800;
	timer3=600;
}