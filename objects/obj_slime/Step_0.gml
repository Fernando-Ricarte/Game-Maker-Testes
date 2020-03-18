/// @description Insert description here
// You can write your code in this editor

//gravidade do inimigo
if(place_free(x,y+4)){
	y+=4;
}

if(dir == 1){
	if(place_free(x+4,y)){
		x+=4;
	}else{
		dir = -1;
	}
}

if(dir == -1){
	if(place_free(x-4,y)){
		x-=4;
	}else{
		dir = 1;
	}
}