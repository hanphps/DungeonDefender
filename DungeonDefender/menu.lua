local Settings = require 'settings'

local Composer = require 'composer'
local Scene = Composer.newScene();

local Widget = require 'widget'

-- Declarations
local Dependencies = {};

-- Hooks
local function onPlayRelease()
    Composer.gotoScene('game','fade',100);
    return true;
end

local function onPlayRelease()
    Composer.gotoScene('shop','fade',100);
    return true;
end

local function onInvRelease()
    Composer.gotoScene('inventory','fade',100);
    return true;
end

--Main
function Scene:create(event)
    local Group = Scene.view;

    --local bg = display.newImageRect(unpack(Settings.Menu.Background));
    --bg.x = display.contentCenterX;
    --bg.y = display.contentCenterY;

    --local logo = display.newImageRect(unpack(Settings.Menu.Logo));
    --logo.x = display.contentCenterX;
    --logo.y = display.contentCenterY - display.actualContentHeight /5;


    Dependencies.Play = Widget.newButton(Settings.Menu.Buttons.Play);
    Dependencies.Play.onRelease = onPlayRelease;

    Dependencies.Shop = Widget.newButton(Settings.Menu.Buttons.Shop);
    Dependencies.Shop.onRelease = onShopRelease;

    Dependencies.Inventory = Widget.newButton(Settings.Menu.Buttons.Inventory);
    Dependencies.Inventory.onRelease = onInvRelease;
    
    --Group:insert(bg);
    --Group:insert(logo)
    Group:insert(Dependencies.Play);
    Group:insert(Dependencies.Shop);
    Group:insert(Dependencies.Inventory);

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