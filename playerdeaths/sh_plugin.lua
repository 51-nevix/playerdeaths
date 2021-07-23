local PLUGIN = PLUGIN

PLUGIN.name = "Player Deaths"
PLUGIN.author = "Nevix AKA Zloji_Pikachu"
PLUGIN.description = "Player deaths. If deaths >3, then charban. My first plugin."

local index = "deathCount"
function PLUGIN:PlayerDeath(client)
    local character = client:GetCharacter()

    if (character) then
        local deaths = character:GetData(index, 0) + 1

        if (deaths >= 3) then
            character:SetData(index, 0)
            character:Ban()
        else
            character:SetData(index, deaths)
        end
    end
end
