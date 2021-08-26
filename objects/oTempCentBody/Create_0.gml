/// @desc

leftNeighbor = instance_place(x - 16, y, oTempCentHead)
if(leftNeighbor == noone)
leftNeighbor = instance_place(x - 16, y, oTempCentBody)

//rightNeighbor = instance_place(x + 16, y, oCentipedeBody)
show_debug_message(leftNeighbor)
enum centipedeBodyState{
	left, right, down	
}
state = centipedeBodyState.left;
prevState = 0;
moveSpeed = 2;