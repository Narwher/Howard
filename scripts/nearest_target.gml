///zombie_track_humans(MaxRange)
var i, enemy;
var closest_enemy = -1;
var max_dist = argument0;
for (i = 0; i < instance_number(oTarget); i += 1)
   {
        enemy = instance_find(oTarget,i);
        if(distance_to_point(enemy.x,enemy.y) <= max_dist){
            if!(collision_line(x,y,enemy.x,enemy.y,oBlock,false,true))   {
                closest_enemy = enemy;
                max_dist = distance_to_point(enemy.x,enemy.y);
            }
        }        
   }
return closest_enemy;
