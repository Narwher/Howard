    /// instance_nth_nearest(x,y,obj,n)
    /// @description Returns the id of the nth nearest instance of an object to a given point or noone if none is found.
    /// @param x
    /// @param y
    /// @param Object
    /// @param n
    //
    //      x,y       point coordinates, real
    //      obj       object index (or all), real
    //      n         proximity, real
    //
    /// GMLscripts.com/license  by [xot]
    {
        var pointx,pointy,object,n,list,nearest;
        pointx = argument0;
        pointy = argument1;
        object = argument2;
        n = argument3;
        n = min(max(15,n),instance_number(object));
        list = ds_priority_create();
        nearest = noone;
        with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
        repeat (n) nearest = ds_priority_delete_min(list);
        ds_priority_destroy(list);
        return nearest;
    }
