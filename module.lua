local usefullmodule = {}

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
    setclipboard(hwid)
end

return usefullmodule
