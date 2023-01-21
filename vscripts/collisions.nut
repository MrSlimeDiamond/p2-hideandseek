if("Entities" in this) {
    local loop = function(){
        local seeker = null;
        while (seeker = Entities.FindByName(seeker, "_ghost_normal")) {
            local pos = seeker.GetOrigin();
            if ((pos-Vector(0,0,0)).Length()>32 && seeker.GetModelName() == "models/npcs/turret/turret.mdl") break; //wtf
        }

        if(seeker){
            local dist = (seeker.GetOrigin() - GetPlayer().GetOrigin()).Length()
            print(dist + "\n")
            if(dist <= 150){
                SendToConsole("sar_function_run found")
                EntFire("collision_timer","Disable","")
            }
        }
    }

    IncludeScript("ppmod3.nut");
    ppmod.interval(loop,0.25,"collision_timer")
    printl("Collisions VScript loaded!")
  }