local TestMixin = {}

--function TestMixin:included(testClass)
--end

function TestMixin:StartThread()
    self.Shared.Thread.Delay(
        2,
        function()
            print("Delay works on server through mixin")
        end
    )
end

return TestMixin
