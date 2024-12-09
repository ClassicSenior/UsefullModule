local usefullmodule = {}
usefullmodule.__index = function() end

local uncFuncs = {
    setclipboard()
}

task.spawn()
    local nonworkingfuncs = {}
    for i,v in pairs(uncFuncs) do
        local success, err = pcall(v)

        if err then
            table.insert(nonworkingfuncs, v)
        end
    end

    if nonworkingfuncs[1] ~= nil then
        return warn('Your executor does not support UsefullModule!')
    end
end

function usefullmodule:offsetForward(args, speaker)
    local character = game.Players.LocalPlayer.Character
    local forwardVector = workspace.CurrentCamera.CFrame.lookVector
    local newPosition = character.HumanoidRootPart.Position + (forwardVector * args[1])
    character.HumanoidRootPart.CFrame = CFrame.new(newPosition)
end

function usefullmodule:copyHwid()
    local fpbody = http_request({Url = 'https://httpbin.org/get', Method = 'GET'}).Body
    local fpdecoded = HttpService:JSONDecode(fpbody)
    local hwid = fpdecoded.headers[exec.."-Fingerprint"]
    setclipboard
end

function usefullmodule:copyHwid()

end

return usefullmodule
