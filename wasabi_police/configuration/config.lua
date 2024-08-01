-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local seconds, minutes = 1000, 60000
Config = {}

Config.jobMenu = 'F6' -- 默认职业菜单键

Config.customCarlock = false -- 如果您使用 wasabi_carlock（在 client/cl_customize.lua 中添加自己的车辆锁系统）
Config.billingSystem = 'esx' -- 当前选项：'esx'（用于 esx_billing）/'okok'（用于 okokBilling）（可在 client/cl_customize.lua 中轻松添加更多/完全自定义）
Config.skinScript = false -- 当前选项：'esx'（用于 esx_skin）/'appearance'（用于 wasabi-fivem-appearance）（可在 client/cl_customize.lua 中添加自定义）
Config.customJail = true -- 如果要将监狱选项添加到菜单中，请设置458.92为 true（需要您编辑 client/cl_customize.lua 中的 wasabi_police:sendToJail 事件）

Config.inventory = 'ox' -- 用于搜索玩家需要 - 当前选项：'ox'（用于 ox_inventory）/'mf'（用于 mf inventory）/'qs'（用于 qs_inventory）/'cheeza'（用于 cheeza_inventory）/'custom'（可在 client/cl_customize.lua 中添加自定义）
Config.searchPlayers = true -- 允许警察工作搜索玩家（必须设置正确的库存选项）

Config.weaponsAsItems = true -- 这通常用于旧版 ESX 和仍将武器作为武器而不是物品的库存系统（如果您不确定，请保持为 true！）
Config.esxIdentity = true -- 启用后在检查嫌疑人 ID 时获得额外信息的选项（需要 esx_identity/esx_status 或类似的插件）
Config.esxLicense = false -- 如果您使用 esx_license 或类似插件来管理武器许可证等，请启用（可能需要额外配置代码的部分开放）

Config.spikeStripsEnabled = true -- 启用刺钉带的功能（如果您使用不同的脚本来实现刺钉带，请禁用）

Config.tackle = {
    enabled = true, -- 启用 tackle？
    policeOnly = true, -- 仅警察工作使用 tackle？
    hotkey = 'G' -- 在奔跑时按下的键来对目标进行 tackle
}

Config.handcuff = { -- 关于手铐的配置
    timer = 20 * minutes, -- 玩家自动解除手铐之前的时间（如果不需要，请设置为 false）
    hotkey = 'J', -- 按下的键来给人戴上手铐（如果不需要热键，请设置为 false）
    skilledEscape = {
        enabled = true, -- 允许罪犯通过技能检查有机会从手铐中挣脱，模拟抵抗
        difficulty = {'easy', 'easy', 'easy'} -- 选择：'easy' / 'medium' / 'hard'（按照配置中的格式串联）
    }
}

Config.policeJobs = { -- Police jobs
    'police',
    'sheriff'
}

Config.Props = { -- 在职业菜单的“放置物体”部分中可用的道具

    {
        title = '路障', -- 标签
        description = '', -- 描述（可选）
        model = `prop_barrier_work05`, -- ` 中的道具名称
        groups = { -- ['工作名称'] = 最低等级
            ['police'] = 0,
            ['sheriff'] = 0,
        }
    },
    {
        title = '路障桶',
        description = '',
        model = `prop_mp_barrier_01`,
        groups = {
            ['police'] = 0,
            ['sheriff'] = 0,
        }
    },
    {
        title = '交通锥',
        description = '',
        model = `prop_roadcone02a`,
        groups = {
            ['police'] = 0,
            ['sheriff'] = 0,
        }
    },
    {
        title = '刺钉带',
        description = '',
        model = `p_ld_stinger_s`,
        groups = {
            ['police'] = 0,
            ['sheriff'] = 0,
        }
    },

}

Config.Locations = {
    LSPD = {
        blip = {
            enabled = true,
            coords = vec3(452.4, -983.16, 35.84),
            sprite = 60,
            color = 29,
            scale = 1.0,
            string = '赛博城市警察局'
        },

        bossMenu = {
            enabled = true, -- Enable boss menu?
            jobLock = 'police', -- Lock to specific police job? Set to false if not desired
            coords = vec3(452.4, -983.16, 35.84), -- Location of boss menu (If not using target)
            label = '[E] - 访问Boss菜单', -- Text UI label string (If not using target)
            distance = 3.0, -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = false, -- If enabled, the location and distance above will be obsolete
                label = '访问Boss菜单',
                coords = vec3(450.1, -974.01, 30.69),
                heading = 173.57,
                width = 2.0,
                length = 1.0,
                minZ = 30.29-0.9,
                maxZ = 30.53+0.9
            }
        },

        armoury = { --武器库采用ox
            enabled = true, -- Set to false if you don't want to use
            coords = vec3(458.92, -978.72, 30.68-0.9), -- Coords of armoury
            heading = 86.95, -- Heading of armoury NPC
            ped = 's_f_y_cop_01',
            label = '[E] - 访问武器库', -- String of text ui
            jobLock = 'police', -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = { -- Grade number will be the name of each t450.92able(this would be grade 0)
                    ['WEAPON_PISTOL'] = { label = 'Pistol', multiple = false, price = 75 }, -- Set price to false if undesired
                    ['WEAPON_NIGHTSTICK'] = { label = 'Night Stick', multiple = false, price = 50 },
                },
            }
        },

        cloakroom = {--服装采用其他
            enabled = true, -- Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police', -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(450.92, -992.64, 30.68), -- Coords of cloakroom
            label = '[E] - Change Clothes', -- String of text ui of cloakroom
            range = 2.0, -- Range away from coords you can use.
            uniforms = { -- Uniform choices

                [1] = { -- Name of outfit that will display in menu
                    label = 'Recruit',
                    male = { -- Male variation
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 5,   ['torso_2'] = 2,
                        ['arms'] = 5,
                        ['pants_1'] = 6,   ['pants_2'] = 1,
                        ['shoes_1'] = 16,   ['shoes_2'] = 7,
                        ['helmet_1'] = 44,  ['helmet_2'] = 7,
                    },
                    female = { -- Female variation
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 4,   ['torso_2'] = 14,
                        ['arms'] = 4,
                        ['pants_1'] = 25,   ['pants_2'] = 1,
                        ['shoes_1'] = 16,   ['shoes_2'] = 4,
                    }
                },
                
            }

        },

        vehicles = { -- Vehicle Garage
            enabled = true, -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police', -- Job lock? or access to all police jobs by using false
            zone = {
                coords = vec3(111.09, -2222.20, 23.84), -- Area to prompt vehicle garage
                range = 5.5, -- Range it will prompt from coords above
                label = '[E] - 打开车库',
                return_label = '[E] - 存入车库'
            },
            spawn = {
                land = {
                    coords = vec3(448.98, -1023.79, 28.57), -- Coords of where land vehicle spawn/return
                    heading = 83.75
                },
                air = {
                    coords = vec3(449.19, -981.1, 336.49), -- Coords of where air vehicles spawn/return
                    heading =  0.01
                }
            },
            options = {

                [0] = { -- Job grade as table name
                    ['police'] = { -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '警用载具1',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['police2'] = { -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '警用载具2',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = { -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '警用直升机',
                        category = 'air', -- Options are 'land' and 'air'
                    },
                },

            }
        }

    },

}
