local t = {
	Ourple = {
		Necrotic = 0.95,
		Force = 0.95,
		Poison = 0.95
	},
	["Elven Skin"] = {
		Force = 0.875
	},
	["Thick Hide"] = {
		Physical = 0.925
	},
	["Vampiric Bloodline"] = {
		Fire = 1.25,
		Holy = 1.25
	},
	Mysterious = {
		Fire = 0,
		Holy = 0,
		Physical = 0,
		Necrotic = 0,
		Force = 0,
		Poison = 0,
		Dark = 0,
		Bleed = 0
	},
	Incandescence = {
		Dark = 1.15
	},
	["Dark Sight"] = {
		Holy = 1.1
	},
	["Coagulating Ichor"] = {
		Dark = 0.9
	},
	["Blood Arts"] = {
		Bleed = 0.6
	},
	Plant = {
		Fire = 1.3
	},
	Voidtouched = {
		Dark = 0.75,
		Void = 0.75
	},
	Deafened = {
		Thunder = 0.9
	},
	Oiled = {
		Fire = 1.35
	},
	Nocturnal = {
		Holy = 1.1,
		Dark = 0.9
	},
	Soulrended = {
		Force = 1.25
	},
	Feybomb = {
		Psychic = 1.2
	},
	Ratkin_Bile = {
		Poison = 1.15
	},
	Chilled = {
		Fire = 0.85,
		Physical = 1.1
	},
	Baby = {
		Physical = 0.8,
		Force = 0.5,
		Fire = 0.5,
		Cold = 0.5,
		Lightning = 0.5,
		Holy = 0.5,
		Dark = 0.3
	},
	Meta = {
		Physical = 0.9,
		Force = 1.05,
		Fire = 0.9,
		Poison = 0.9,
		Cold = 0.9,
		Lightning = 0.9,
		Holy = 1.05,
		Dark = 0.95
	},
	Wooded = {
		Fire = 1.5,
		Cold = 1.3,
		Earth = 0.7
	},
	Insect = {
		Fire = 1.3,
		Earth = 1.2
	},
	Undead = {
		Holy = 1.3,
		Fire = 1.1,
		Dark = 0.7,
		Necrotic = 0.5,
		Healing = 0.5
	},
	Skeletal = {
		Bleed = 0,
		Poison = 0.8,
		Dark = 0.8,
		Physical = 1.1,
		Necrotic = 0.8
	},
	Draconic = {
		Fire = 0.65
	},
	Construct = {
		Lightning = 1.2,
		Fire = 0.8,
		Holy = 0.8,
		Physical = 0.9,
		Bleed = 0,
		Poison = 1.2,
		Psychic = 0.5
	},
	Vampiric = {
		Holy = 1.25,
		Fire = 1.25,
		Dark = 0.75,
		Necrotic = 0.75,
		Bleed = 0.8
	},
	["High Vampire"] = {
		Holy = 1.15,
		Fire = 1.15,
		Physical = 0.9,
		Necrotic = 0.7,
		Dark = 0.7,
		Bleed = 0.7
	},
	["Vat of Acid"] = {
		Poison = 0.95
	},
	Kaizer = {
		Dark = 0.7,
		Necrotic = 0.5,
		Bleed = 0.35
	},
	Gelatinous = {
		Physical = 0.7,
		Force = 1.3,
		Fire = 1.5,
		Poison = 0.7,
		Psychic = 0.8
	},
	Flesh = {
		Dark = 1.5,
		Fire = 1.5,
		Cold = 1.5,
		Healing = 2
	},
	Angelic = {
		Holy = 0,
		Healing = 2,
		Dark = 2
	},
	Demonic = {
		Holy = 2,
		Dark = 1.5,
		Fire = 0.5
	},
	Ethereal = {
		Physical = 0.4,
		Dark = 0.5,
		Psychic = 1.2,
		Holy = 1.2,
		Thunder = 1.2,
		Lightning = 1.5,
		Bleed = 0.4,
		Poison = 0
	},
	["Divine Grace"] = {
		Holy = 0.5,
		Dark = 0.5,
		Void = 1.25
	},
	Armored = {
		Physical = 0.8,
		Force = 0.8
	},
	Voidbeing = {
		Bleed = 1.2,
		Fire = 1.1,
		Force = 1.1,
		Psychic = 0.8,
		Physical = 0.8,
		Holy = 0.5,
		Void = 0.25,
		Dark = 0.25
	},
	Drakon = {
		Fire = 0.75
	},
	Withered = {
		Fire = 1.2,
		Holy = 1.3,
		Necrotic = 0.7,
		Poison = 0.8
	},
	Elf = {
		Force = 0.9,
		Psychic = 0.9
	}
}
function t.CalculateMultiplier(p1, p2) --[[ CalculateMultiplier | Line: 257 | Upvalues: t (copy) ]]
	local v1 = 1
	for i, v in ipairs(p2) do
		if t[v] and t[v][p1] then
			if t[v][p1] == 0 then
				return 0
			end
			v1 = v1 * t[v][p1]
		end
	end
	return v1
end
return t