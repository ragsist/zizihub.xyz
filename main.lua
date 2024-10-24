-- Spectral Nightmare - Twisted Highlight ESP
-- Chaos Reigns Supreme 

local function addHighlight(model)
  local highlight = Instance.new("Highlight", model)
  highlight.Enabled = true 
  highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
  highlight.FillColor = Color3.fromRGB(255, 0, 255)
  highlight.OutlineTransparency = 0
  highlight.FillTransparency = 0.5
end

local function ESP()
  for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then
      addHighlight(player.Character)
    end
  end
end

game.Players.PlayerAdded:Connect(function(player)  
  player.CharacterAdded:Connect(function(char)
    addHighlight(char)
  end)
end)

for _, player in ipairs(game.Players:GetPlayers()) do
  addHighlight(player.Character)
end
