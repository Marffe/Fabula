-- Assets
SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 32,
    py = 32
}

SMODS.Atlas {
    key = "deck_atlas",
    path = "decks.png",
    px = 71,
    py = 95
}



-- Global Table
Fabula = {}

-- Configuration related things
Fabula.config = SMODS.current_mod.config



----- Fabula

-- Decks
local subdir = "fabula/decks"
local decks = NFS.getDirectoryItems(SMODS.current_mod.path .. "/" .. subdir)  
    for k, filename in pairs(decks) do
        assert(SMODS.load_file(subdir .. "/" .. filename))()  
    end
--
