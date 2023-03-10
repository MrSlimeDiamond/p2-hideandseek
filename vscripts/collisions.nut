::scrq <- {};

if("Entities" in this) {
    local loop = function(){
        local seeker = null;
        while(seeker = Entities.FindByName(seeker, "_ghost_normal")){
            if (seeker.GetModelName() != "models/npcs/turret/turret.mdl") continue;
            if (seeker.GetOrigin().Length() < 32) continue;
            if ((seeker.GetOrigin() - GetPlayer().GetOrigin()).Length() <= 100) {
                SendToConsole("sar_function_run found");
                EntFire("collision_timer","Disable","");
                break;
            }
        }
    }
    
    local timer = Entities.CreateByClassname("logic_timer");
    timer.__KeyValueFromString("Targetname", "collision_timer");
    local qid = UniqueString();
    scrq[qid] <- loop;
    timer.__KeyValueFromString("OnTimer", "!self\x1B"+"RunScriptCode\x1B"+"scrq[\""+qid+"\"]()\x1B"+"0\x1B"+"-1")
    EntFireByHandle(timer, "RefireTime", "0.25", 0, null, null);
    EntFireByHandle(timer, "Enable", "", 0, null, null);

    printl("Collisions VScript loaded!")
  }
