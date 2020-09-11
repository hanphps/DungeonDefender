local Composer = require 'composer'
local Scene = composer.newScene();

local physics = require 'physics'

--Declarations
Dependencies = {};

--Attacking Declarations
canAttack = true;
isAttacking = false;

--Monsters
local function spawnMonsters(settings)
    local monster = display.newImageRect( mainGroup, objectSheet, 1, 102, 85 )
end
--Player
local function spawnPlayer()

end
--Main
function Scene:create(event)
    local Group = Scene.view;

    local bg = display.newImageRect(unpack(Settings.Menu.Background));
    bg.x = display.contentCenterX;
    bg.y = display.contentCenterY;

end

function Scene:show(event)
    local Group = Scene.view;
    local Phase = event.phase;
end

function Scene:hide(event)
    local Group = Scene.view;
    local Phase = event.phase;
end

function Scene:destroy(event)
    local Group = Scene.view;
    
    for _,v in pairs(Dependencies) do
        if v then
            v:removeSelf();
            v = nil;
        end
    end

end

-- Listeners
Scene:addEventListener('create', Scene );
Scene:addEventListener( 'show', scene )
Scene:addEventListener( 'hide', scene )
Scene:addEventListener( 'destroy', scene )

return Scene