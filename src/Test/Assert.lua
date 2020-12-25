
local M = {}

local function assertImpl(message)
  return function (success)
    return function ()
      if not success then error(message) end
    end
  end
end

local function checkThrows(fn)
  return function ()
    local status, result = pcall(fn)
    return not status
  end
end

return M
