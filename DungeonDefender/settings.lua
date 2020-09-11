local Settings = {};

scale = display.pixelHeight / display.contentHeight
Settings.Menu = {

    Logo = {'grad.png',display.actualContentWidth/5, display.actualContentHeight/5},
    Background = {'background.jpg', display.actualContentWidth, display.actualContentHeight},

    Buttons = {

        Play = {
            label = 'Play',
            labelColor = { default={ 1.0 }, over={ 0.75 } },
            fontSize = 1 * scale,
            shape = 'roundedRect',
            defaultFile = 'grad.png',
            fillColor = { default={.5,1,.2, 1 }, over={ .5,1,.2, 1 } },
            
            width = display.actualContentWidth / 10, height = display.actualContentHeight/10,
            x = display.contentCenterX, y = display.contentCenterY + display.actualContentWidth / 10
        },

        Shop = {
            label = 'Shop',
            labelColor = { default={ 1.0 }, over={ 0.75 } },
            fontSize = 1 * scale,
            shape = 'roundedRect',
            fillColor = { default={ 1, 0.2, 0.5, 1 }, over={ 1, 0.2, 0.5, 1 } },
            defaultFile = 'grad.png',
            width = display.actualContentWidth / 10, height = display.actualContentHeight/10,
            x = display.contentCenterX + display.actualContentWidth/4 - display.actualContentWidth / 20, y = display.contentCenterY + display.actualContentWidth / 10
        },

        Inventory = {
            label = 'Inventory',
            labelColor = { default={ 1.0 }, over={ 0.75 } },
            fontSize = 1 * scale,
            shape = 'roundedRect',
            defaultFile = 'grad.png',
            fillColor = { default={.2,.5,1, 1 }, over={ .2,.5,1, 1 } },
            width = display.actualContentWidth / 10, height = display.actualContentHeight/10,
            x = display.contentCenterX - display.actualContentWidth/4 + display.actualContentWidth / 20, y = display.contentCenterY + display.actualContentWidth / 10
        },  

    }


};

Settings.Creatures = {
    Monsters = {
        ['Type1'] = {
            Name = '', --file name
            Damage = 100,
            Health = 100,
            Sheet = {
                frames = {

                    { -- walk1
                        x = 0,
                        y = 0,
                        width =0,
                        height=0
                    },
                    { -- walk2
                    x = 0,
                    y = 0,
                    width =0,
                    height=0
                    },
                    { -- attack
                        x = 0,
                        y = 0,
                        width =0,
                        height=0
                    }
                
                }
            }
        }
    }
}

Settings.Players = {
    
    Default = {
        Score = 0,
        longestRound = 0,
        Equipped = {
            Armour = 'defaultArmour',
            Weapon = 'defaultWeapon',
            Spell1 = nil,
            Spell2 = nil
        },
        Inventory = {

            Armours = {},
            Weapons = {},
            Spells = {} 
        },
        Skills = {
            Melee = 100,
            Spell = 100,
            Health = 100,
        }
    }

}

return Settings;