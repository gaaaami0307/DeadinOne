import * as server from '@minecraft/server';

function lack_mp_msg(pl,id){
    pl.runCommandAsync("execute as @s at @s run playsound random.pop2 @a ~~~ 0.5 0.9");
    pl.runCommandAsync("execute as @s at @s positioned ^^^0.5 run particle minecraft:white_smoke_particle ~~1.5~");
    pl.runCommandAsync("tellraw @s {\"rawtext\":[{\"text\":\"§cMP不足\"}]}");
    pl.startItemCooldown(id,5);
}

function lack_hp_msg(pl,id){
    pl.runCommandAsync("execute as @s at @s run playsound random.pop2 @a ~~~ 0.5 0.9");
    pl.runCommandAsync("execute as @s at @s positioned ^^^0.5 run particle minecraft:white_smoke_particle ~~1.5~");
    pl.runCommandAsync("tellraw @s {\"rawtext\":[{\"text\":\"§cHP不足\"}]}");
    pl.startItemCooldown(id,5);
}

function limit_weapon_msg(pl,id){
    pl.runCommandAsync("execute as @s at @s run playsound random.pop2 @a ~~~ 0.5 0.9");
    pl.runCommandAsync("execute as @s at @s positioned ^^^0.5 run particle minecraft:white_smoke_particle ~~1.5~");
    pl.runCommandAsync("tellraw @s {\"rawtext\":[{\"text\":\"§c武器所持数制限\nインベントリ内の武器を5個以下にしてください\"}]}");
    pl.startItemCooldown(id,5);
}

const RankList=["§6B","§2A","§dS","§eUNIQUE"];

//Example
class Example{
    cooldown = [0,0]
    mp=[0,0];
    SID = "weapon_checker";
    ID="rouge:"+this.SID;
    Name="ウェポンチェッカー";
    Rank=RankList[3];
    weapon=false;

    lore_item="武器の性能を確認できるという異質な武器。\nこの武器の所持・使用には所持制限は適用されない。";
    lore_skillname="性能確認";
    lore_skilluse="オフハンドに武器を持って右クリック";
    lore_skilllim="なし";
    lore_skillinfo="オフハンドに持った武器の性能をチェックする。\n\nてか、このテキストを見てる時点でわかってるじゃないか！";
    lore_skillname2="";
    lore_skilluse2="";
    lore_skilllim2="";
    lore_skillinfo2="";

    constructor(brand){
        this.brand=brand;
        this.lore="";
        this.lore=this.Rank+"§r Rank 【"+this.Name+"§r】\n"+this.lore_item;
        if(this.lore_skillname!="") this.lore+="\n\nスキル【"+this.lore_skillname+"§r】(§e"+this.lore_skilluse+"§r)\n使用条件:*"+this.lore_skilllim+"*\n"+this.lore_skillinfo;
        if(this.lore_skillname2!="") this.lore+="\n\nスキル【"+this.lore_skillname2+"§r】(§e"+this.lore_skilluse2+"§r)\n使用条件:*"+this.lore_skilllim2+"*\n"+this.lore_skillinfo2;
    }

    skill(ev){
        const pl = ev.source;
        //武器所持数制限
        if(pl.hasTag("limit_has_weapons")==false||!this.weapon){
            //クールダウン
            if(pl.getItemCooldown(this.SID)==0){
                if(pl.isOnGround){ 
                    if(pl.isSprinting){
                        if(pl.isSneaking){ //地上ダッシュスニーク
                            this.skill1(ev);
                        }else{ //地上ダッシュ立ち
                            this.skill1(ev);
                        }
                    }else{
                        if(pl.isSneaking){ //地上歩きスニーク
                            this.skill1(ev);
                        }else{ //地上歩き立ち
                            this.skill1(ev);
                        }
                    }
                }else{
                    if(pl.isSprinting){
                        if(pl.isSneaking){ //空中ダッシュスニーク
                            this.skill1(ev);
                        }else{ //空中ダッシュ立ち
                            this.skill1(ev);
                        }
                    }else{
                        if(pl.isSneaking){ //空中歩きスニーク
                            this.skill1(ev);
                        }else{ //空中歩き立ち
                            this.skill1(ev);
                        }
                    }
                }
            }
        }else{
            limit_weapon_msg(pl,this.SID);
        }
    }

    skill1(ev){
        const pl = ev.source;
        //mp制限
        if(pl.addLevels(0)>=this.mp[0]){
            pl.runCommandAsync("execute as @s at @s run function item/"+this.SID+"1");
            pl.startItemCooldown(this.SID,this.cooldown[0]*20);
            pl.addLevels(-this.mp[0]);
        }
        else{
            lack_mp_msg(pl,this.SID);
        }

    }

    skill2(ev){
        const pl = ev.source;
        //mp制限
        if(pl.addLevels(0)>=this.mp[1]){
            pl.runCommandAsync("execute as @s at @s run function item/"+this.SID+"2");
            pl.startItemCooldown(this.SID,this.cooldown[1]*20);
            pl.addLevels(-this.mp[1]);
        }
        else{
            lack_mp_msg(pl,this.SID);
        }

    }
}

//パワースキル
class Power_Skill{
    cooldown = 2;
    SID = "power_skill";
    ID="dio:"+this.SID;

    constructor(brand){
        this.brand=brand;
    }

    skill(ev){
        const pl = ev.source;
        pl.runCommandAsync("execute as @s at @s run tag @s add powerskill");
        pl.startItemCooldown(this.SID,this.cooldown*20);
    }
}

//アルティメット
class Ultimate{
    cooldown = 2;
    SID = "ultimate";
    ID="dio:"+this.SID;

    constructor(brand){
        this.brand=brand;
    }

    skill(ev){
        const pl = ev.source;
        pl.runCommandAsync("execute as @s at @s run tag @s add ultimate");
        pl.startItemCooldown(this.SID,this.cooldown*20);
    }
}

//アサルトライフル
class AssaultRifle{
    cooldown = 15;
    SID = "assault_rifle";
    ID="dio:"+this.SID;

    constructor(brand){
        this.brand=brand;
    }

    skill(ev){
        const pl = ev.source;
        pl.runCommandAsync("execute as @s at @s run tag @s add assault_shot");
        pl.startItemCooldown(this.SID,this.cooldown);
    }
}

//ミニガン
class Minigun{
    cooldown = 4;
    SID = "minigun";
    ID="dio:"+this.SID;

    constructor(brand){
        this.brand=brand;
    }

    skill(ev){
        const pl = ev.source;
        pl.runCommandAsync("execute as @s at @s run tag @s add minigun_shot");
        pl.startItemCooldown(this.SID,this.cooldown);
    }
}

//ハンドガン
class Handgun{
    cooldown = 30;
    SID = "hand_gun";
    ID="dio:"+this.SID;

    constructor(brand){
        this.brand=brand;
    }

    skill(ev){
        const pl = ev.source;
        pl.runCommandAsync("execute as @s at @s run tag @s add handgun_shot");
        pl.startItemCooldown(this.SID,this.cooldown);
    }
}


//----------------------------------------------------Script

const weapons=[new Power_Skill(), new Ultimate(), new AssaultRifle(), new Minigun(), new Handgun()
];

//ここにスクリプトを記述
server.world.afterEvents.itemUse.subscribe(ev => {
    let item = ev.itemStack.typeId;
    for (const weapon of weapons){
        if(item == weapon.ID){
            weapon.skill(ev);
        }
    }
})

let display_name;
let display_rank;
let display_cooldown;

server.system.runInterval(ev => {

   //---------------------
   //---エンティティ処理----

   //rouge entities
   const entities=[
    "bullet_damage_straight",
    "trap_damage_push",
    "beam_damage_recursion",
    "beam_damage_thunder",
    "beam_damage_rain",
    "spawner_spread_steady",
   ];

   //dio entities
   const deadinoneEntities=[
    "job5_skill",
    "job10_skill",
    "assault_rifle",
    "minigun",
    "hand_gun",
   ]

   //dio functiond
   const deadinoneFunctions=[
    "kill",
    "death",
    "respawn",
    "spawn",
    "arrow_number",
    "arrow_trail",
    "reload",
    "reloading",
    "actionbar",
    "acesound",
    "count",
    "jobselect",
    "targetlock",
    "parkselecting",
    "gamestarting",
    "gaming",
    "gameending",
    "itemtp",
    "effects",
    "shot"
   ]

   //jobs
   const job_number=11; 

   const op_player = server.world.getAllPlayers()[0];
   for (const entity of entities){
    op_player.runCommandAsync("execute as @e[type=rouge:"+entity+"] at @s run function entity/"+entity);
   }

   for (const entity of deadinoneEntities){
    op_player.runCommandAsync("execute as @e[type=dio:"+entity+"] at @s run function dio/entity/"+entity);
   }

   for (const func of deadinoneFunctions){
    op_player.runCommandAsync("function dio/"+func);
   }

  for (let i = 1; i <= job_number; i++) {
    op_player.runCommandAsync("execute if entity @a[scores={job=" + i + "},tag=battle] run function dio/job"+i+"/run");
  }

})