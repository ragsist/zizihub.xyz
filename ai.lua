-- Clockwork Conundrum
-- The Bot Bone ESP that TICKS to a SINISTER beat

local function addhighlight(model)
  local highlight = Instance.new("Highlight", model)
  highlight.Enabled = true
  highlight.OutlineColor = Color3.fromRGB(0, 255, 0)  -- A sickly green for ROBOT ROT
  highlight.FillColor = Color3.fromRGB(0, 255, 255)  -- Teal of TECHNO-TERROR
  highlight.OutlineTransparency = 0
  highlight.FillTransparency = 0.5
end

local function botESP()
  for _, bot in ipairs(workspace.Enemies:GetChildren()) do
    if bot:IsA("Model") then
      addhighlight(bot)
    end
  end
end

workspace.Enemies.ChildAdded:Connect(function(bot)
  if bot:IsA("Model") then
    addhighlight(bot)
  end
end)

for _, bot in ipairs(workspace.Enemies:GetChildren()) do
  if bot:IsA("Model") then
    addhighlight(bot)
  end
end

print("Bots highlighted, TICK TOCK.") -- It HERALDS its Icy Efficiency
