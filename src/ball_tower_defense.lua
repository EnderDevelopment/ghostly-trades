-- Ball Tower Defense Script

local GhostUnits = require(script.Parent.ghost_units)

-- Function to handle trades
local function onTradeAccepted(trade)
    local player = game.Players.LocalPlayer
    GhostUnits.addGhostUnitsToTrades(player, trade)
end

-- Connect to the trade accepted event
game:GetService("MarketplaceService").TradeAccepted:Connect(onTradeAccepted)

print("Ball Tower Defense script loaded")