fadeout=0;
global.can_move=false;

if(a=1)
{
	room_goto(target_room);
	obj_player.x = target_x;
	obj_player.y = target_y;
	fadeout=1;
	global.can_move=true;
}
