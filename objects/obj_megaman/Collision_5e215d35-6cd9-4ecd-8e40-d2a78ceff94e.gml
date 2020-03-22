   /// @description Insert description here
// You can write your code in this editor



if(instance_exists(obj_golem)){
	show_message("O chefe ainda está vivo!")
}else{
	show_message("Você Venceu!!!!")
	room_goto_next()
}