local mod = get_mod("RejoinMission")

---[[
mod.rejoin = function()
    if not Managers.mechanism then
        mod:echo("Error - Managers.mechanism = nil")
    elseif Managers.mechanism._mechanism then
        mod:echo("Error - Managers.mechanism._mechanism = nil")
    elseif Managers.mechanism._mechanism._retry_join then
        mod:echo("Error - Managers.mechanism._mechanism._retry_join = nil")
    else
        mod:echo("Attempting to rejoin ongoing game...")
        Managers.mechanism._mechanism:_retry_join()
    end
end

mod:command("rejoin", "Rejoin ongoing mission, if any", function()
    mod.rejoin()
end)
--]]

--[[
local retry_join_function = function(self)
    local mechanism = self._mechanism
    if mechanism and mechanism._retry_join then
        mechanism:_retry_join()
    end
end

mod:hook_require(
    "scripts/managers/mechanism/mechanism_manager",
    function(template)
        template.retry_join = retry_join_function
        return template
    end)

mod:command("rejoin", "Rejoin ongoing mission, if any", function()
    if not Managers.mechanism.retry_join then
        mod:echo("Error - Managers.mechanism.retry_join does not exist")
    else
        Managers.mechanism:retry_join()
    end
end)
--]]
