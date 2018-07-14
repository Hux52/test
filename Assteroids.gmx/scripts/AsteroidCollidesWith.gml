collider = argument0;
Result = false;

for (i = 0; i < NumPoints; i++){
    if (i + 1 >= NumPoints){
        pointToUse = 0;
    } else {
        pointToUse = i+1;
    }
    
if (collision_line(x + lengthdir_x(xToA[i], pointAngle[i] + rotation ), 
            y + lengthdir_y(xToA[i], pointAngle[i] + rotation ), 
            x + lengthdir_x(xToA[pointToUse],pointAngle[pointToUse] + rotation ), 
            y + lengthdir_y(xToA[pointToUse], pointAngle[pointToUse] + rotation), 
            collider, true, false)){
                Result = true;
            }
        }

return Result;
