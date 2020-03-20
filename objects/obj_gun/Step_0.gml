/// @description Insert description here
// You can write your code in this editor
x = obj_megaman.x;
y = obj_megaman.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

fdelay = fdelay -1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (fdelay < 0){
	audio_play_sound(snd_shoot,0,false);
	recoil = 4;
	fdelay = 5;	
	/*var obj = instance_create_depth(x,y,-10,obj_shoot);*/
	
	with(instance_create_layer(x,y,"Instances",obj_shoot)){
		speed = 25;
		direction = other.image_angle + random_range(-3,3 );
		image_angle = direction;	
	
	}

}

//calculo do recoil a cada tiro
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);


//girar sprite da arma quando mirar para trás

if(image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
}else{
	image_yscale = 1;
}