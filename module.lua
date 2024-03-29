local usefullmodule = {}

function usefullmodule:ffsetForward()
    local character = game.Players.LocalPlayer.Character
    local forwardVector = workspace.CurrentCamera.CFrame.lookVector
    local newPosition = character.HumanoidRootPart.Position + (forwardVector * args[1])
    character.HumanoidRootPart.CFrame = CFrame.new(newPosition)
end

return usefullmodule
