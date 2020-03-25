   /// @description Insert description here
// You can write your code in this editor
// && place_free(x-spd,y) pode ser usado para colisão

//movimentação pra direita
if(keyboard_check(ord("D"))){
	x+=spd;
	image_xscale = 1;
	sprite_index = spr_mega_walk;
}
	 


//movimentação pra esquerda
if(keyboard_check(ord("A"))){
	x-=spd;
	image_xscale = -1;
	sprite_index = spr_mega_walk;
}
	



if(keyboard_check(vk_space)){
	sprite_index = spr_mega_jump;
	if(!place_free(x,y+1)){
		pulo = true;
	}

}

if(pulo){
	if(jumpFrame < jumpheight){
		
		if(place_free(x,y-spdjump)){
			jumpFrame += spdjump;
			y-=spdjump;
		}else{
			pulo  = false;
			jumpFrame = 0;
		}
	}else{
		pulo  = false;
		jumpFrame = 0;
	}
}


//gravidade
if (pulo == false){
	if(place_free(x,y+fallspd)){
		y+=fallspd;
		fallspd+=gravid;
	}else{
	fallspd = 2;  
	while(place_free(x,y+1)){
		y++;
	}
	}
}


/*sistema de tiro
if mouse_check_button_pressed(mb_left){
	var obj = instance_create_depth(x,y,-10,obj_shoot);
	obj.dir = image_xscale;
	audio_play_sound(snd_shoot,0,false)
	
}
*/

if(place_meeting(x,y,obj_slime) || place_meeting(x,y,obj_golem)){
	if(random(100) < 10){
		hp--;
		audio_play_sound(snd_shoot,0,false);//mudar som de hit
	}
}
if(hp == 0){
		audio_play_sound(snd_death,2,false);
		show_message("YOU DIED! ");
		room_restart();
	}

if(place_meeting(x,y+1,obj_instant_kill)){
	audio_play_sound(snd_death,2,false);
	show_message("YOU DIED!!");
	room_restart();
}


