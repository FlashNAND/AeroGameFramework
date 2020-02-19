local TestMixin = {}

--function TestMixin:included(testClass)
--end
local Fade

function TestMixin:Init()
    print "TestMixin:: init ran"

    Fade = self.Controllers.Fade
end

function TestMixin:StartFade()
    Fade:Out(2)
end

return TestMixin
