local TestService = {Client={}}

local TestClass

function TestService:Start()
    TestClass = self.Modules.TestClass

    local instance = TestClass:new()
end


return TestService