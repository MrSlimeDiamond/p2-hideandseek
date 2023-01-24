if("Entities" in this) {
    local loop = function(){
        local seeker = null;
        while (seeker = Entities.FindByName(seeker, "_ghost_normal")) {
            local pos = seeker.GetOrigin();
            if ((pos-Vector(0,0,0)).Length()>32 && seeker.GetModelName() == "models/npcs/turret/turret.mdl") break; //wtf
        }

        if(seeker){
            local dist = (seeker.GetOrigin() - GetPlayer().GetOrigin()).Length()
            if(dist <= 150){
                SendToConsole("sar_function_run found")
                EntFire("collision_timer","Disable","")
            }
        }
    }

    local timer = Entities.CreateByClassname("logic_timer");
    timer.__KeyValueFromString("Targetname", "collision_timer");
    timer.__KeyValueFromString("OnTimer", "!self\x001BRunScriptCode\x1Bloop()\x1B0\x1B-1");
    EntFireByHandle(timer, "RefireTime", "0.25", 0, null, null);
    EntFireByHandle(timer, "Enable", "", 0, null, null);

    printl("Collisions VScript loaded!")
}
