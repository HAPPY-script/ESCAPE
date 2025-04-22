local placeId = game.PlaceId

if placeId == 2753915549 then
    -- Sea 1
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
elseif placeId == 4442272183 then
    -- Sea 2
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
elseif placeId == 7449423635 then
    -- Sea 3
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape1.lua"))()
else
    -- Nếu không phải cả 3 Sea trên, chạy script ngoại lệ
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/NONE/refs/heads/main/NONE"))()
end
