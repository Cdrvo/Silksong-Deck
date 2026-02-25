local sss = { "hearts", "clubs", "diamonds", "spades" } 
local rrr = { "Jack", "Queen", "King", "Ace" } 

SMODS.Atlas({
	key = "hksilksong_lc",
	px = 71,
	py = 95,
	path = "hksilksong_lc.png",
})

--[[SMODS.Atlas({
	key = "hksilksong_şc",
	px = 71,
	py = 95,
	path = atlas_path_hc,
})]]

for _, suit in ipairs(sss) do
	SMODS.DeckSkin({
		key = suit .. "_skin",
		suit = suit:gsub("^%l", string.upper),
		ranks = rrr,
		lc_atlas = "hksk_hksilksong_lc",
		hc_atlas = "hksk_hksilksong_lc",
		loc_txt = {
			["en-us"] = "Silksong",
		},
		posStyle = "deck",
	})
end
