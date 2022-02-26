--Beemo's simple whitelist
_G.Key = "DnjWLYtnr6bdBQEjEpkJEJhJ5ftGeMEWYnMz3EhjD8xarYRPEp"

local keys = {
    "xteMD933L5fFcRUrQ7EfdZwGZ3tqdrej6P7eSKXhHrhgMAaErW",
    "CZP75sL8PustxBH5hrrJCUYH7FF7gAPeFrFBvWFqufCtx5pDSY",
    "DnjWLYtnr6bdBQEjEpkJEJhJ5ftGeMEWYnMz3EhjD8xarYRPEp"
}

local counter = 1
local keyCheck
for i,v in pairs(keys) do
    if counter == #keys then
    --not whitelisted!
    keys = ""
    game.Players.LocalPlayer:Kick("Not a valid key!")
    else
        if v == _G.Key then
            --Whitelisted!
            print("Successfully whitelisted!")
            keyCheck = _G.Key
            keys = ""
        else
            counter = counter +1
        end
    end
end

while true do
    if _G.Key == keyCheck then
        --Not spoofed
    else
        game.Players.LocalPlayer:Kick("Do not try and spoof your key!")
    end
    wait()
end
