local wfc = game.WaitForChild

local repstore = game:GetService "ReplicatedStorage"
local camera = game:GetService "Workspace".CurrentCamera
local class = require(wfc(wfc(wfc(repstore, "Aero"), "Shared"), "LuaOOP"))

local TestClass = class("TestClass")
TestClass.__aeroMiddleclass = true

function TestClass:initialize()
    self.Shared.Thread.Delay(1, function()
        print('Middleclass works with Aero!!!!!!')
    end)
end

return TestClass
