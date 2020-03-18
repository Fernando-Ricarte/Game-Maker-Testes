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

