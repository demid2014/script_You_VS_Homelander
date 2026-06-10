-- ESP для сыворотки V в You VS Homelander
print("ESP запущен! Ищу сыворотку V...")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

spawn(function()
    while wait(0.5) do
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v:FindFirstChild("Highlight") then
                if string.find(v.Name, "V") or string.find(v.Name, "Compound") then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.fromRGB(0, 255, 0)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.FillTransparency = 0.3
                    highlight.Parent = v
                    print("Найдена сыворотка: " .. v.Name)
                end
            end
        end
    end
end)

-- Уведомление в игре
game.StarterGui:SetCore("SendNotification", {
    Title = "ESP V";
    Text = "Скрипт загружен! Ищу сыворотку...";
    Duration = 3;
})
