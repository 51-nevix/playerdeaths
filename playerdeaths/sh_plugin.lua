local PLUGIN = PLUGIN

PLUGIN.name = "Player Deaths"
PLUGIN.author = "Nevix AKA Zloji_Pikachu"
PLUGIN.description = "Player deaths. If deaths >3, then charban. My first plugin."

function Schema:PlayerDeath(client)
    local character = client:GetCharacter()

    if (character) then
        local deaths = character:GetData("deathCount", 0) + 1

        if (deaths >= 3) then
            character:Ban()
        else
            character:SetData("deathCount", deaths)
        end
    end
end
