local TestController = {}

local TestClass

function TestController:Start()
    TestClass = self.Modules.TestClass

    local instance = TestClass:new()
end


return TestController