/// @description Insert description here
// You can write your code in this editor
x = obj_megaman.x;
y = obj_megaman.y-10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

fdelay = -1;
if (mouse_check_button_pressed(mb_left)) && (fdelay < 0){
	audio_play_sound(snd_shoot,0,false);
	fdelay = 5;
	with(instance_create_layer(x,y,"Instances",obj_shoot)){
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;	
	}


}