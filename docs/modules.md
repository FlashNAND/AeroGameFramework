# Modules

This section covers the three environments where modules exist: `Server`, `Client`, and `Shared`. Modules behave in the same way in each location.

--------------------------

## Usage

Like other framework objects, modules can also have `Init` and `Start` methods. However, these methods are optional.

The biggest difference with Modules is that they are lazy-loaded. In other words, modules are not necessarily loaded at the beginning of runtime. Instead, they are loaded the first time they are referenced. What this means is that you can have a large collection of modules that you reuse within many projects, but are not necessarily eating up much memory.

Lazy-loading is handled in the background, and it should not affect anything regarding the way you use a module. The most noticeable difference is that the `Init` and `Start` methods will not be invoked until the first time a module is referenced.

Like any ModuleScript on Roblox, modules have the same structure:

```lua
local MyModule = {}

-- 'MyModule:Start()' and 'MyModule:Init()' methods are optional.

return MyModule
```

--------------------------

## Prevent `Init` or `Start`

If you are trying to use a module that already has a `Start` or `Init` method that doesn't relate to the AeroGameFramework (e.g. a 3rd-party module not designed for the framework), then you can prevent the framework from invoking these methods. This is done by setting the `__aeroPreventInit` and `__aeroPreventStart` flags on the module. Note that those two flags are prefixed by two underscores, similar to Lua metamethods.

```lua
local MyModule = {}

-- Prevent the framework from invoking the 'Start' method:
MyModule.__aeroPreventStart = true

function MyModule:Start()
	-- Won't be invoked by the framework
end

function MyModule:Init()
	-- Still will be invoked by the framework
end

return MyModule
```