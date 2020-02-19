local wfc = game.WaitForChild

local repstore = game:GetService "ReplicatedStorage"
local class = require(wfc(wfc(wfc(repstore, "Aero"), "Shared"), "LuaOOP"))

local mixins = script.Mixins
local TestMixin = require(wfc(mixins, 'TestMixin'))

local TestClass = class("TestClass")
TestClass.__aeroMiddleclass = true
TestClass:include(TestMixin)

function TestClass:initialize()
    self.Shared.Thread.Delay(1, function()
        print('Middleclass works with Aero!!!!!!')
    end)

    self:StartFade()
end

return TestClass
