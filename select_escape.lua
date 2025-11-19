local sea1ID = 85211729168715
local sea2ID = 79091703265657
local sea3ID = 7449423635
local sea3ID2 = 100117331123089

return function(sections)
    local placeId = game.PlaceId
    if placeId == sea1ID then
        local PVPPage1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
        PVPPage1(sections)
    elseif placeId == sea2ID then
        local PVPPage2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
        PVPPage2(sections)
    elseif placeId == sea3ID then
        local PVPPage3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
        PVPPage3(sections)
    elseif placeId == sea3ID2 then
        local PVPPage3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
        PVPPage3(sections)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/NONE/refs/heads/main/NONE"))()
    end
end
