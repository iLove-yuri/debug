return {
	Rat = {
		MinHealth = 5,
		MaxHealth = 8,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "RatIdle",
		HitAnim = "RatHit",
		DodgeAnim = "RatDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.12,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Gnaw", "Rat Flip" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			["Rat Eye"] = 3,
			["Rat Hide"] = 5
		}
	},
	["Devious Rat"] = {
		MinHealth = 8,
		MaxHealth = 8,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "RatIdle",
		HitAnim = "RatHit",
		DodgeAnim = "RatDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Gnaw", "Rat Flip" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			["Rat Eye"] = 3,
			["Rat Hide"] = 5
		}
	},
	["Vampiric Rat"] = {
		MinHealth = 14,
		MaxHealth = 14,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "RatIdle",
		HitAnim = "RatHit",
		DodgeAnim = "RatDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Gnaw", "Bloody Bite" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			["Vampiric Rat Tail"] = 5
		}
	},
	Bunny = {
		MinHealth = 6,
		MaxHealth = 6,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "BunnyIdle",
		HitAnim = "BunnyHit",
		DodgeAnim = "BunnyDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.694,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Nibble", "Morale Boost" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				FTH = 0.02
			},
			Abilities = {
				Nibble = {
					FTH = 0.025
				}
			}
		}
	},
	Dani = {
		MinHealth = 12,
		MaxHealth = 12,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "DaniIdle",
		HitAnim = "DaniHit",
		DodgeAnim = "DaniDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 2,
		YOffset = 0.306,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Canine Assault", "Dog Flip", "Man\'s Best Friend" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				CON = 0.02,
				CHA = 0.01
			},
			Abilities = {
				["Canine Assault"] = {
					DEX = 0.025,
					CHA = 0.025
				},
				["Dog Flip"] = {
					DEX = 0.025,
					CHA = 0.025
				}
			}
		}
	},
	["Bunny?"] = {
		MinHealth = 18,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		CritChance = 0.1,
		CritDamage = 1.35,
		Level = 0,
		IdleAnim = "NBunnyIdle",
		HitAnim = "NBunnyHit",
		DodgeAnim = "NBunnyDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.694,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Nibble", "Bunny Flip", "Bunny Kick", "Demoralizing Roar", "Cloudsplitting Manifestation" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				STR = 0.0075,
				DEX = 0.0075,
				CON = 0.015,
				INT = 0.0075,
				FTH = 0.0075,
				CHA = 0.0075,
				LCK = 0.0075
			},
			Abilities = {
				Nibble = {
					STR = 0.05,
					DEX = 0.05,
					INT = 0.05,
					FTH = 0.05,
					CHA = 0.05,
					LCK = 0.05
				},
				["Bunny Flip"] = {
					STR = 0.035,
					DEX = 0.035,
					INT = 0.035,
					FTH = 0.035,
					CHA = 0.035,
					LCK = 0.035
				},
				["Bunny Kick"] = {
					STR = 0.0275,
					DEX = 0.0275,
					INT = 0.0275,
					FTH = 0.0275,
					CHA = 0.0275,
					LCK = 0.0275,
					CasterLevel = 3
				},
				["Demoralizing Roar"] = {
					STR = 0.06,
					DEX = 0.06,
					INT = 0.06,
					FTH = 0.06,
					CHA = 0.06,
					LCK = 0.06,
					CasterLevel = 5
				},
				["Cloudsplitting Manifestation"] = {
					STR = 0.0125,
					DEX = 0.0125,
					INT = 0.0125,
					FTH = 0.0125,
					CHA = 0.0125,
					LCK = 0.0125,
					CasterLevel = 10
				}
			}
		}
	},
	Footfoot = {
		MinHealth = 18,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0.05,
		CritChance = 0.1,
		CritDamage = 1.35,
		Level = 0,
		IdleAnim = "NBunnyIdle",
		HitAnim = "NBunnyHit",
		DodgeAnim = "NBunnyDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -1.38,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Nibble", "Bunny Flip", "Bunny Kick", "Demoralizing Roar", "Cursewrit Butcherblade", "Cursewrit Butcherblade End" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				STR = 0.0075,
				DEX = 0.0075,
				CON = 0.015,
				INT = 0.0075,
				FTH = 0.0075,
				CHA = 0.0075,
				LCK = 0.0075
			},
			Abilities = {
				Nibble = {
					STR = 0.05,
					DEX = 0.05,
					INT = 0.05,
					FTH = 0.05,
					CHA = 0.05,
					LCK = 0.05
				},
				["Bunny Flip"] = {
					STR = 0.035,
					DEX = 0.035,
					INT = 0.035,
					FTH = 0.035,
					CHA = 0.035,
					LCK = 0.035
				},
				["Bunny Kick"] = {
					STR = 0.0275,
					DEX = 0.0275,
					INT = 0.0275,
					FTH = 0.0275,
					CHA = 0.0275,
					LCK = 0.0275,
					CasterLevel = 3
				},
				["Demoralizing Roar"] = {
					STR = 0.06,
					DEX = 0.06,
					INT = 0.06,
					FTH = 0.06,
					CHA = 0.06,
					LCK = 0.06,
					CasterLevel = 5
				},
				["Cursewrit Butcherblade"] = {
					STR = 0.0166,
					DEX = 0.0166,
					INT = 0.0166,
					FTH = 0.0166,
					CHA = 0.0166,
					LCK = 0.0166,
					CasterLevel = 10
				},
				["Cursewrit Butcherblade End"] = {
					STR = 0.02,
					DEX = 0.02,
					INT = 0.02,
					FTH = 0.02,
					CHA = 0.02,
					LCK = 0.02,
					CasterLevel = 10
				}
			}
		}
	},
	["Artificer\'s Turret"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		CritChance = 0.1,
		CritDamage = 1.35,
		Level = 0,
		IdleAnim = "TurrIdle",
		HitAnim = "TurrHit",
		Modifiers = { "Construct" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.694,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = {
			"Heat Slug",
			"Reconstruction",
			"Artillery Barrage",
			"Steamed Power",
			"Underking\'s Foot",
			"Snipe",
			"Overclock",
			"Dispense Morale",
			"Heat Blast",
			"Holy Grenade"
		},
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				CON = 0.015,
				INT = 0.0075
			},
			Abilities = {
				["Heat Slug"] = {
					INT = 0.03,
					CasterLevel = 1
				},
				["Artillery Barrage"] = {
					INT = 0.0125,
					CasterLevel = 5
				},
				["Underking\'s Foot"] = {
					INT = 0.025,
					CasterLevel = 8
				},
				["Steamed Power"] = {
					STR = 0,
					DEX = 0,
					INT = 0,
					FTH = 0,
					CHA = 0,
					LCK = 0,
					CasterLevel = 6
				},
				Snipe = {
					STR = 0,
					DEX = 0.035,
					INT = 0.015,
					FTH = 0,
					CHA = 0,
					LCK = 0,
					Conditions = {
						Effects = { "Assassination_Optics" }
					}
				},
				Overclock = {
					STR = 0,
					DEX = 0,
					INT = 0.01,
					FTH = 0,
					CHA = 0,
					LCK = 0.025,
					Conditions = {
						Effects = { "Destabilized_Rail_Cannon" }
					}
				},
				["Dispense Morale"] = {
					STR = 0,
					DEX = 0,
					INT = 0,
					FTH = 0,
					CHA = 0,
					LCK = 0,
					Conditions = {
						Effects = { "Morale_Dispenser" }
					}
				},
				["Heat Blast"] = {
					STR = 0.025,
					DEX = 0,
					INT = 0.01,
					FTH = 0,
					CHA = 0,
					LCK = 0,
					Conditions = {
						Effects = { "Resistance_Crusher_Protocol" }
					}
				},
				["Holy Grenade"] = {
					STR = 0,
					DEX = 0,
					INT = 0.01,
					FTH = 0.025,
					CHA = 0,
					LCK = 0,
					Conditions = {
						Effects = { "Imbued_Grenade_Launcher" }
					}
				}
			}
		},
		SpawnFunction = function(p1, p2) --[[ Line: 443 ]]
			if p1 and p2 then
				local t = { "STR", "DEX", "CON", "FTH", "CHA", "LCK" }
				local t2 = {}
				local t3 = {}
				for k, v in pairs(p2) do
					if table.find(t, k) then
						table.insert(t2, {
							name = k,
							value = v
						})
					end
				end
				table.sort(t2, function(p1, p2) --[[ Line: 455 ]]
					return p1.value > p2.value
				end)
				table.insert(t3, t2[1].name)
				table.insert(t3, t2[2].name)
				if table.find(t3, "STR") then
					p1:SetAttribute("Resistance_Crusher_Protocol", 1)
				end
				if table.find(t3, "DEX") then
					p1:SetAttribute("Assassination_Optics", 1)
				end
				if table.find(t3, "CON") then
					p1:SetAttribute("Emergency_Shielding_Module", 1)
				end
				if table.find(t3, "CHA") then
					p1:SetAttribute("Morale_Dispenser", 1)
				end
				if table.find(t3, "FTH") then
					p1:SetAttribute("Imbued_Grenade_Launcher", 1)
				end
				if not table.find(t3, "LCK") then
					return
				end
				p1:SetAttribute("Destabilized_Rail_Cannon", 1)
			end
		end
	},
	["Dwarftech Obliterator"] = {
		MinHealth = 70,
		MaxHealth = 70,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		CritChance = 0.25,
		CritDamage = 1.4,
		Level = 0,
		IdleAnim = "TurrIdle",
		HitAnim = "TurrHit",
		Modifiers = { "Construct" },
		Initiative = 5,
		XOffset = 4,
		YOffset = -0.694,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Heated Slug", "Self-Repair", "Artillery Bombardment", "Underking\'s Wrath" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 493 ]]
			p1:SetAttribute("Emergency_Shielding_Module", 1)
		end
	},
	["Malevolent Pumpkin"] = {
		MinHealth = 12,
		MaxHealth = 12,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		Level = 0,
		IdleAnim = "MPIdle",
		HitAnim = "MPHit",
		Modifiers = { "Plant" },
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Monster Mash" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			["Pumpkin Flesh"] = 10
		}
	},
	Pebble = {
		MinHealth = 9,
		MaxHealth = 12,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		Level = 0,
		IdleAnim = "PebbleIdle",
		HitAnim = "PebbleHit",
		Modifiers = { "Construct" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.7,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Boulder Bump" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			["Spell Scroll: Summon Pebble"] = 1,
			["Rock Fragments"] = 10,
			["Metal Scrap"] = 5
		}
	},
	["Summoned Pebble"] = {
		MinHealth = 8,
		MaxHealth = 8,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		Level = 0,
		IdleAnim = "PebbleIdle",
		HitAnim = "PebbleHit",
		DodgeAnim = "PebbleDodge",
		Modifiers = { "Construct" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -0.7,
		Rotation = { 0, -180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Boulder Bump" },
		MinGoldDrop = 2,
		MaxGoldDrop = 5,
		Drops = {
			Nothing = 25
		},
		SummonScaling = {
			Health = {
				INT = 0.015
			},
			Abilities = {
				["Boulder Bump"] = {
					INT = 0.04
				}
			}
		}
	},
	["Candy Demon"] = {
		MinHealth = 18,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 4,
		IdleAnim = "CDIdle",
		HitAnim = "CDHit",
		DodgeAnim = "CDDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		YOffset = 2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Inject Sugar", "Sugar Barrage" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Sugar = 1
		}
	},
	["Cave Bat"] = {
		MinHealth = 22,
		MaxHealth = 22,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 4,
		IdleAnim = "CaveBIdle",
		HitAnim = "CaveBHit",
		DodgeAnim = "CaveBDodge",
		Modifiers = { "Nocturnal" },
		Initiative = 1,
		XOffset = 2,
		YOffset = 2,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Cave Claws", "Sonic Scream", "Rabid Bite" },
		MinGoldDrop = 8,
		MaxGoldDrop = 15,
		Drops = {
			["Bat Wing"] = 1
		}
	},
	Bee = {
		MinHealth = 14,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 4,
		IdleAnim = "BeeIdle",
		HitAnim = "BeeHit",
		DodgeAnim = "BeeDodge",
		Modifiers = { "Small" },
		Initiative = 2,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bee Driller", "Sting", "Stinger Burst" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Stinger = 8,
			Honey = 12,
			["Spell Scroll: Rain of Stingers"] = 1
		}
	},
	B = {
		MinHealth = 16,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 1,
		MinStage = 3,
		IdleAnim = "BeeIdle",
		HitAnim = "BeeHit",
		DodgeAnim = "BeeDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "True Bee Driller", "Sting", "Stinger Burst" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Stinger = 8,
			Honey = 10,
			Nothing = 5,
			Cloth = 2,
			["Leather Scrap"] = 2,
			["Metal Scrap"] = 2
		}
	},
	["Fey Wisp"] = {
		MinHealth = 12,
		MaxHealth = 12,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 2,
		IdleAnim = "PixieIdle",
		HitAnim = "PixieHit",
		DodgeAnim = "PixieDodge",
		Modifiers = { "Small" },
		Initiative = 2,
		XOffset = 3,
		YOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Dust Bolt", "Magic Dust", "Charming Colors", "Faerie Fire" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Nothing = 5
		},
		SummonScaling = {
			Health = {
				DEX = 0.005,
				CHA = 0.015
			},
			Abilities = {
				["Dust Bolt"] = {
					DEX = 0.0075,
					CHA = 0.025
				},
				["Charming Colors"] = {
					DEX = 0.01,
					CHA = 0.03
				},
				["Faerie Fire"] = {
					DEX = 0.008,
					CHA = 0.0255
				}
			}
		},
		SpawnFunction = function(p1) --[[ Line: 720 ]]
			local t = {
				Color3.fromRGB(80, 142, 159),
				Color3.fromRGB(120, 180, 80),
				Color3.fromRGB(255, 100, 180),
				Color3.fromRGB(255, 230, 90)
			}
			local v1 = t[math.random(1, #t)]
			p1.Part.Color = v1
			p1.Part.Cubes.Color = ColorSequence.new(v1)
			p1.Part.PointLight.Color = v1
			p1.Part.Sparks.Color = ColorSequence.new(v1)
		end
	},
	Pixie = {
		MinHealth = 10,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 2,
		IdleAnim = "PixieIdle",
		HitAnim = "PixieHit",
		DodgeAnim = "PixieDodge",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		YOffset = 4,
		Rotation = { 0, 174, 0 },
		EnergyGainChance = 0,
		Abilities = { "Dust Bolt", "Wonderous Lights", "Magic Dust" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			["Pixie Dust"] = 8,
			["Red Flower"] = 3
		},
		SpawnFunction = function(p1) --[[ Line: 760 ]]
			local t = {
				Color3.fromRGB(80, 142, 159),
				Color3.fromRGB(120, 180, 80),
				Color3.fromRGB(255, 100, 180),
				Color3.fromRGB(255, 230, 90)
			}
			local v1 = t[math.random(1, #t)]
			p1.Part.Color = v1
			p1.Part.Cubes.Color = ColorSequence.new(v1)
			p1.Part.PointLight.Color = v1
			p1.Part.Sparks.Color = ColorSequence.new(v1)
		end
	},
	Bixie = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 2,
		IdleAnim = "PixieIdle",
		HitAnim = "PixieHit",
		DodgeAnim = "PixieDodge",
		Modifiers = {},
		Initiative = 2,
		XOffset = 3,
		YOffset = 4,
		Rotation = { 0, 174, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slicing Gale", "Violent Lights", "Enraging Dust" },
		MinGoldDrop = 15,
		MaxGoldDrop = 15,
		Drops = {
			["Pixie Dust"] = 8
		}
	},
	["Void Bee"] = {
		MinHealth = 56,
		MaxHealth = 50,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "BeeIdle",
		HitAnim = "BeeHit",
		DodgeAnim = "BeeDodge",
		Modifiers = { "Void" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Void Bee Driller", "Void Sting", "Voidblaze Burst" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Stinger = 8,
			Honey = 12,
			Cloth = 2,
			["Spell Scroll: Rain of Stingers"] = 1,
			["Leather Scrap"] = 2,
			["Metal Scrap"] = 2
		}
	},
	["Blood Spider"] = {
		MinHealth = 15,
		MaxHealth = 15,
		MaxEnergy = 6,
		EXPScaling = 0.85,
		DodgeChance = 0.1,
		Level = 4,
		IdleAnim = "SpiderIdle",
		HitAnim = "SpiderHit",
		DodgeAnim = "SpiderDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3.2,
		YOffset = -1.8,
		EnergyGainChance = 0,
		Abilities = { "Spider Bite", "Web Attach" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Rotation = { 0, 90, 0 },
		Drops = {
			["Spider Silk"] = 8,
			["Spider Eye"] = 8
		}
	},
	["Normal Spider"] = {
		MinHealth = 14,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.85,
		DodgeChance = 0.25,
		Level = 1,
		MinStage = 3,
		IdleAnim = "SpiderIdle",
		HitAnim = "SpiderHit",
		DodgeAnim = "SpiderDodge",
		Modifiers = { "Small" },
		Initiative = 3,
		XOffset = 3.2,
		YOffset = -2.1,
		EnergyGainChance = 0,
		Abilities = { "Spider Bite", "Web Attach" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Rotation = { 0, 90, 0 },
		Drops = {
			["Spell Scroll: Consuming Web"] = 1,
			["Spell Scroll: Summon Spider"] = 1,
			["Spider Silk"] = 8,
			["Spider Eye"] = 8,
			Cloth = 2,
			["Leather Scrap"] = 2,
			["Metal Scrap"] = 2,
			Nothing = 4
		}
	},
	Spider = {
		MinHealth = 14,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.85,
		DodgeChance = 0.1,
		Level = 4,
		IdleAnim = "SpiderIdle",
		HitAnim = "SpiderHit",
		DodgeAnim = "SpiderDodge",
		Modifiers = { "Small" },
		Initiative = 3,
		XOffset = 3.2,
		YOffset = -2.1,
		EnergyGainChance = 0,
		Abilities = { "Spider Bite", "Web Attach" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Rotation = { 0, 90, 0 },
		Drops = {
			["Spell Scroll: Consuming Web"] = 1,
			["Spell Scroll: Summon Spider"] = 1,
			["Spider Silk"] = 8,
			["Spider Eye"] = 8
		}
	},
	["Summoned Spider"] = {
		MinHealth = 14,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.85,
		DodgeChance = 0.1,
		Level = 3,
		IdleAnim = "SpiderIdle",
		HitAnim = "SpiderHit",
		DodgeAnim = "SpiderDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3.2,
		YOffset = -1.8,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Spider Bite", "Web Attach" },
		MinGoldDrop = 10,
		MaxGoldDrop = 20,
		Drops = {
			Nothing = 2
		},
		SummonScaling = {
			Health = {
				INT = 0.0125
			},
			Abilities = {
				["Spider Bite"] = {
					INT = 0.025
				},
				["Web Attach"] = {
					INT = 0.04
				}
			}
		}
	},
	Spidatron = {
		MinHealth = 12,
		MaxHealth = 15,
		MinStage = 2,
		MaxStage = 5,
		MaxEnergy = 6,
		EXPScaling = 0.65,
		DodgeChance = 0.05,
		Level = 1,
		IdleAnim = "SpidatronIdle",
		HitAnim = "SpidatronHit",
		DodgeAnim = "SpidatronDodge",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = -2.945,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bombardment", "Metallic Shredding" },
		MinGoldDrop = 0,
		MaxGoldDrop = 12,
		Drops = {
			["Metal Scrap"] = 3,
			["Stray Wires"] = 3,
			["Pyrrhite Bar"] = 3
		}
	},
	["Hearth Crucible Golem"] = {
		MinHealth = 32,
		MaxHealth = 35,
		MaxEnergy = 6,
		MinStage = 5,
		MaxStage = 7,
		EXPScaling = 0.65,
		BlockChance = 0.2,
		Level = 1,
		IdleAnim = "ChopbotIdle",
		HitAnim = "ChopbotHit",
		BlockAnim = "ChopbotBlock",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = 3.15,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Disregard", "Crucible Obliteration", "Molten Clobber" },
		MinGoldDrop = 12,
		MaxGoldDrop = 24,
		Drops = {
			["Metal Scrap"] = 3,
			["Stray Wires"] = 3,
			["Vial of Oil"] = 3,
			["Pyrrhite Bar"] = 8
		}
	},
	CHOP = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		MinStage = 3,
		MaxStage = 7,
		EXPScaling = 0.65,
		BlockChance = 0.2,
		Level = 1,
		IdleAnim = "ChopbotIdle",
		HitAnim = "ChopbotHit",
		BlockAnim = "ChopbotBlock",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = 3.43,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Chop Combo", "Heartflame", "Warblade Spin" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Nothing = 3
		},
		SummonScaling = {
			Health = {
				CON = 0.004,
				INT = 0.0065
			},
			Abilities = {
				["Chop Combo"] = {
					INT = 0.0075
				},
				["Warblade Spin"] = {
					INT = 0.0125
				},
				Heartflame = {
					INT = 0.015
				}
			}
		}
	},
	["Tampered Bot"] = {
		MinHealth = 25,
		MaxHealth = 27,
		MaxEnergy = 6,
		MinStage = 3,
		MaxStage = 7,
		EXPScaling = 0.65,
		BlockChance = 0.2,
		Level = 1,
		IdleAnim = "ChopbotIdle",
		HitAnim = "ChopbotHit",
		BlockAnim = "ChopbotBlock",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = 3.43,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slay the Intruders", "Flaming Exodus", "Winding Doom" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Metal Scrap"] = 3,
			["Stray Wires"] = 3,
			["Vial of Oil"] = 3,
			["Pyrrhite Bar"] = 3
		}
	},
	["Kindled Guardian"] = {
		MinHealth = 25,
		MaxHealth = 27,
		MaxEnergy = 6,
		MinStage = 3,
		MaxStage = 7,
		EXPScaling = 0.65,
		BlockChance = 0.2,
		Level = 1,
		IdleAnim = "ChopbotIdle",
		HitAnim = "ChopbotHit",
		BlockAnim = "ChopbotBlock",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = 3.43,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Chop Combo", "Heartflame", "Warblade Spin" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Metal Scrap"] = 3,
			["Stray Wires"] = 3,
			["Vial of Oil"] = 3,
			["Pyrrhite Bar"] = 3
		}
	},
	["Hearth Blower"] = {
		MinHealth = 22,
		MaxHealth = 24,
		MaxEnergy = 6,
		MinStage = 3,
		MaxStage = 7,
		EXPScaling = 0.65,
		Level = 1,
		IdleAnim = "HBIdle",
		HitAnim = "HBHit",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 3,
		YOffset = 1.85,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Launch Flame", "Living Flame Expulsion" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Black Powder"] = 3,
			["Metal Scrap"] = 3,
			["Stray Wires"] = 3,
			["Vial of Oil"] = 3,
			["Pyrrhite Bar"] = 3
		}
	},
	["Piloted Hearth Monarch"] = {
		MinHealth = 120,
		MaxHealth = 120,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		Level = 1,
		IdleAnim = "PHMIdle",
		BlockAnim = "PHMBlock",
		HitAnim = "PHMHit",
		Modifiers = { "Construct" },
		Initiative = 4,
		XOffset = 5,
		YOffset = 3.385,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Hot Knife", "Ground Pound", "Steam Release" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Mechanical Soul"] = 1
		},
		SpawnFunction = function(p1) --[[ Line: 1146 ]]
			p1:SetAttribute("Steam_Giant", 1)
		end,
		TurnStartFunction = function(p1) --[[ Line: 1149 ]]
			if p1.Reference:GetAttribute("UseMountainShaker") then
				p1.Reference:SetAttribute("UseMountainShaker", nil)
				p1.Reference:SetAttribute("MountainShakerCounter", 0)
			end
			if p1.Reference:GetAttribute("MountainShakerCounter") then
				p1.Reference:SetAttribute("MountainShakerCounter", p1.Reference:GetAttribute("MountainShakerCounter") + 1)
				if p1.Reference:GetAttribute("MountainShakerCounter") >= 3 then
					p1.Reference:SetAttribute("UseMountainShaker", true)
				end
			end
			if p1.Reference:GetAttribute("HP") <= p1.Reference:GetAttribute("MaxHP") * 0.5 or p1.Reference:GetAttribute("Steam") and p1.Reference:GetAttribute("Steam") >= 8 then
				if p1.Reference:GetAttribute("MountainShakerCounter") then
					return
				end
				p1.Reference:SetAttribute("UseMountainShaker", true)
				p1.Reference:SetAttribute("MountainShakerCounter", 0)
			end
		end
	},
	Paul = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.8,
		BlockChance = 0.2,
		Level = 3,
		IdleAnim = "BearIdle",
		HitAnim = "BearHit",
		BlockAnim = "BearBlock",
		Modifiers = { "Natural" },
		Initiative = 4,
		XOffset = 3,
		YOffset = -1.15,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Maul", "Call of the Wild", "Headlong Charge" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 3
		}
	},
	["Blood Bear"] = {
		MinHealth = 60,
		MaxHealth = 60,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.2,
		Level = 3,
		IdleAnim = "BearIdle",
		HitAnim = "BearHit",
		BlockAnim = "BearBlock",
		Modifiers = { "Natural" },
		Initiative = 5,
		XOffset = 3,
		YOffset = -1.15,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Maul", "Deafening Screech", "Headlong Charge" },
		MinGoldDrop = 50,
		MaxGoldDrop = 50,
		Drops = {
			["Raw Bear Meat"] = 3
		}
	},
	["Summoned Bear"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		Level = 3,
		IdleAnim = "BearIdle",
		HitAnim = "BearHit",
		BlockAnim = "BearBlock",
		Modifiers = { "Natural" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.15,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Maul", "Call of the Wild" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 3
		},
		SummonScaling = {
			Health = {
				FTH = 0.0085
			},
			Abilities = {
				Maul = {
					FTH = 0.015
				},
				["Call of the Wild"] = {
					FTH = 0.02
				}
			}
		}
	},
	["Dwarven Blaster"] = {
		MinHealth = 14,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		Level = 2,
		IdleAnim = "DGIdle",
		HitAnim = "PlayerHit",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		YOffset = 0.473,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Fire Blunderbuss", "Fire Bomb" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Metal Scrap"] = 3,
			["Pyrrhite Bar"] = 4,
			Cloth = 5
		}
	},
	["Captain Grimbly"] = {
		MinHealth = 22,
		MaxHealth = 22,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		Level = 2,
		IdleAnim = "DwarfIdle",
		HitAnim = "DwarfHit",
		BlockAnim = "DwarfBlock",
		Modifiers = { "Small", "Mini-Boss" },
		Initiative = 1,
		XOffset = 3,
		YOffset = 0.473,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Hammer Smash", "Small Shield Breaker", "Rally" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Metal Scrap"] = 3,
			["Pyrrhite Bar"] = 4,
			Cloth = 5
		}
	},
	Butcher = {
		MinHealth = 13,
		MaxHealth = 13,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "ButcherIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Hack Away", "Throw Victim" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Pumpkin Flesh"] = 5
		}
	},
	Vagrant = {
		MinHealth = 24,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		DeathAnim = "KaizerDeath",
		DeathIdleAnim = "KaizerDeathIdle",
		FadeOut = true,
		Modifiers = {},
		Initiative = 3,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Strong Left", "Flimsy Burst" },
		MinGoldDrop = 1,
		MaxGoldDrop = 2,
		Drops = {
			["Spare Change"] = 5,
			["Leather Scrap"] = 5,
			Cloth = 5,
			["Metal Scrap"] = 5
		},
		SpawnFunction = function(p1) --[[ Line: 1352 ]]
			local t = {
				Color3.fromRGB(10, 8, 8),
				Color3.fromRGB(28, 22, 18),
				Color3.fromRGB(44, 34, 24),
				Color3.fromRGB(65, 45, 30),
				Color3.fromRGB(90, 56, 38),
				Color3.fromRGB(115, 76, 54),
				Color3.fromRGB(139, 90, 43),
				Color3.fromRGB(152, 98, 56),
				Color3.fromRGB(165, 107, 70),
				Color3.fromRGB(195, 125, 65),
				Color3.fromRGB(220, 145, 55),
				Color3.fromRGB(230, 175, 100),
				Color3.fromRGB(230, 195, 130),
				Color3.fromRGB(238, 210, 155),
				Color3.fromRGB(245, 230, 200),
				Color3.fromRGB(160, 160, 160),
				Color3.fromRGB(192, 192, 192),
				Color3.fromRGB(245, 245, 245)
			}
			local t2 = {
				Color3.fromRGB(254, 243, 235),
				Color3.fromRGB(252, 230, 215),
				Color3.fromRGB(248, 222, 205),
				Color3.fromRGB(245, 215, 194),
				Color3.fromRGB(240, 205, 180),
				Color3.fromRGB(234, 192, 166),
				Color3.fromRGB(225, 185, 155),
				Color3.fromRGB(215, 175, 148),
				Color3.fromRGB(205, 165, 135),
				Color3.fromRGB(198, 153, 120),
				Color3.fromRGB(180, 135, 100),
				Color3.fromRGB(155, 115, 85),
				Color3.fromRGB(140, 102, 75),
				Color3.fromRGB(130, 92, 67),
				Color3.fromRGB(115, 80, 58),
				Color3.fromRGB(100, 70, 50),
				Color3.fromRGB(75, 50, 35),
				Color3.fromRGB(50, 35, 25)
			}
			local v1 = t[math.random(1, #t)]
			local v2 = t2[math.random(1, #t2)]
			p1.Head.Color = v2
			p1.Torso.Color = v2
			p1["Left Arm"].Color = v2
			p1["Right Arm"].Color = v2
			p1["Left Leg"].Color = v2
			p1["Right Leg"].Color = v2
			p1.Hair.Color = v1
		end
	},
	["Super Vagrant"] = {
		MinHealth = 130,
		MaxHealth = 130,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.15,
		Lifesteal = 0.2,
		Level = 2,
		IdleAnim = "EvolvedIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 12,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Strong Left", "Make Your Move", "Obliterating Barrage" },
		MinGoldDrop = 1,
		MaxGoldDrop = 2,
		SpawnFunction = function(p1) --[[ Line: 1428 ]]
			p1:SetAttribute("Evolved", 1)
			p1:SetAttribute("Perpetual_Mutation", 1)
		end,
		Drops = {
			["Evolved Soul"] = 1
		}
	},
	["Brigand Bladesman"] = {
		MinHealth = 12,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "SwordIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 3,
		XOffset = 3,
		YOffset = 0,
		ModelHeight = 5,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Light Slash", "Cross Slashes" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 5,
			["Metal Scrap"] = 5
		}
	},
	["Brigand Shieldbreaker"] = {
		MinHealth = 12,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "BrigandIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 3,
		XOffset = 3,
		YOffset = -0.6,
		ModelHeight = 5,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Spill Guts", "Fight Dirty" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 5,
			["Metal Scrap"] = 5
		}
	},
	Bandit = {
		MinHealth = 12,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "DaggerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 3,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Light Stab", "Quick Slash", "Fire Bomb" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 5,
			["Metal Scrap"] = 5,
			Cloth = 5
		},
		SpawnFunction = function(p1) --[[ Line: 1516 ]]
			local t = {
				Color3.fromRGB(10, 8, 8),
				Color3.fromRGB(28, 22, 18),
				Color3.fromRGB(44, 34, 24),
				Color3.fromRGB(65, 45, 30),
				Color3.fromRGB(90, 56, 38),
				Color3.fromRGB(115, 76, 54),
				Color3.fromRGB(139, 90, 43),
				Color3.fromRGB(152, 98, 56),
				Color3.fromRGB(165, 107, 70),
				Color3.fromRGB(195, 125, 65),
				Color3.fromRGB(220, 145, 55),
				Color3.fromRGB(230, 175, 100),
				Color3.fromRGB(230, 195, 130),
				Color3.fromRGB(238, 210, 155),
				Color3.fromRGB(245, 230, 200),
				Color3.fromRGB(160, 160, 160),
				Color3.fromRGB(192, 192, 192),
				Color3.fromRGB(245, 245, 245)
			}
			local t2 = {
				Color3.fromRGB(254, 243, 235),
				Color3.fromRGB(252, 230, 215),
				Color3.fromRGB(248, 222, 205),
				Color3.fromRGB(245, 215, 194),
				Color3.fromRGB(240, 205, 180),
				Color3.fromRGB(234, 192, 166),
				Color3.fromRGB(225, 185, 155),
				Color3.fromRGB(215, 175, 148),
				Color3.fromRGB(205, 165, 135),
				Color3.fromRGB(198, 153, 120),
				Color3.fromRGB(180, 135, 100),
				Color3.fromRGB(155, 115, 85),
				Color3.fromRGB(140, 102, 75),
				Color3.fromRGB(130, 92, 67),
				Color3.fromRGB(115, 80, 58),
				Color3.fromRGB(100, 70, 50),
				Color3.fromRGB(75, 50, 35),
				Color3.fromRGB(50, 35, 25)
			}
			local v1 = t[math.random(1, #t)]
			local v2 = t2[math.random(1, #t2)]
			p1.Head.Color = v2
			p1.Torso.Color = v2
			p1["Left Arm"].Color = v2
			p1["Right Arm"].Color = v2
			p1["Left Leg"].Color = v2
			p1["Right Leg"].Color = v2
			p1.Hair.Color = v1
		end
	},
	["Really Balanced Bandit"] = {
		MinHealth = 12,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.15,
		DodgeChance = 0.1,
		Level = 1,
		MinStage = 2,
		IdleAnim = "DaggerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 3,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Semi-Strong Stab", "Quick Slash", "OG Fire Bomb" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 5,
			["Metal Scrap"] = 5,
			Cloth = 5
		}
	},
	["Commanded Thrall"] = {
		MinHealth = 26,
		MaxHealth = 26,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0.1,
		DodgeChance = 0.05,
		Level = 2,
		IdleAnim = "DaggerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Stab", "Quick Slash", "Poke Up" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Tainted Leather"] = 4,
			["Dark Steel"] = 4,
			["Cursed Cloth"] = 4
		}
	},
	["Grandmaster Knight Peranil"] = {
		MinHealth = 135,
		MaxHealth = 135,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		BlockChance = 0.25,
		DodgeChance = 0.05,
		ModelHeight = 5,
		IdleAnim = "PaladinIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		DeathAnim = "PlayerHit",
		DeathIdleAnim = "PaladinIdle",
		BlockAnim = "PaladinGuard",
		ResistFear = true,
		Modifiers = { "Mini-Boss", "Divine Grace", "Armored" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Destined Blade",
		Abilities = { "Radiant Slash", "Flash of Radiance", "Excius", "Excelcius", "Borrowed Divinity", "Restoration" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		}
	},
	Giant = {
		MinHealth = 90,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		BlockChance = 0.25,
		DodgeChance = 0.05,
		IdleAnim = "GiantIdle",
		HitAnim = "GiantHit",
		DodgeAnim = "GiantDodge",
		BlockAnim = "GiantBlock",
		ResistFear = true,
		Modifiers = { "Thick Hide", "Boss" },
		Initiative = 1,
		XOffset = 7,
		YOffset = -0.3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Pummel", "Blade Sweep", "Roar", "Giant Slash", "Skewer" },
		MinGoldDrop = 150,
		MaxGoldDrop = 150,
		Drops = {
			["Dominating Soul"] = 10
		}
	},
	["Old Giant"] = {
		MinHealth = 100,
		MaxHealth = 100,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		BlockChance = 0.25,
		DodgeChance = 0.05,
		IdleAnim = "GiantIdle",
		HitAnim = "GiantHit",
		DodgeAnim = "GiantDodge",
		BlockAnim = "GiantBlock",
		Modifiers = { "Thick Hide", "Boss" },
		Initiative = 1,
		XOffset = 7,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0.2,
		Abilities = { "Giant\'s Fist", "Blade Swoop", "Bellowing Roar", "Giant Slash", "Skewer" },
		MinGoldDrop = 150,
		MaxGoldDrop = 150,
		Drops = {
			["Dominating Soul"] = 10
		}
	},
	Alaria = {
		MinHealth = 200,
		MaxHealth = 200,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		IdleAnim = "SBossIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		Modifiers = { "High Vampire" },
		Lifesteal = 0.35,
		Initiative = 10,
		XOffset = 4,
		YOffset = -1.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 1,
		EnergyGainChance = 0,
		Abilities = { "Harvest", "Crescent Cleave", "End of the Line", "Final Eclipse" },
		MinGoldDrop = 50,
		MaxGoldDrop = 50,
		Drops = {
			Nothing = 10
		},
		TurnStartFunction = function(p1) --[[ Line: 1724 ]]
			if not p1.Reference:GetAttribute("FightStartIchor") then
				p1.Reference:SetAttribute("FightStartIchor", true)
				p1.Reference:SetAttribute("Incarnadine_Ichor", 5)
			end
		end
	},
	Lugner = {
		MinHealth = 200,
		MaxHealth = 200,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		IdleAnim = "RbossIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		Modifiers = { "High Vampire" },
		Lifesteal = 0.35,
		Initiative = 10,
		XOffset = 4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0,
		UseFirst = "Emboldened Guard",
		Abilities = { "Duelist Jab", "Blood Tax", "Driving Stake", "Emboldened Guard", "Crimson Lunge" },
		MinGoldDrop = 50,
		MaxGoldDrop = 50,
		Drops = {
			Nothing = 10
		},
		TurnStartFunction = function(p1) --[[ Line: 1754 ]]
			if not p1.Reference:GetAttribute("FightStartIchor") then
				p1.Reference:SetAttribute("FightStartIchor", true)
				p1.Reference:SetAttribute("Incarnadine_Ichor", 5)
			end
		end
	},
	Kaizer = {
		MinHealth = 240,
		MaxHealth = 240,
		MaxEnergy = 6,
		EXPScaling = 0,
		IdleAnim = "BGSIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		DeathAnim = "KaizerDeath",
		DeathIdleAnim = "KaizerDeathIdle",
		FadeOut = false,
		Modifiers = { "High Vampire" },
		Lifesteal = 0.25,
		Initiative = 15,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0,
		UseFirst = "Debut",
		Abilities = { "Lord Slash", "Spilling Hour", "Blood Cross", "Sanguine Feast", "Debut", "To See It Through" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		TurnStartFunction = function(p1) --[[ Line: 1788 ]]
			if not p1.Reference:GetAttribute("FightStartIchor") then
				p1.Reference:SetAttribute("FightStartIchor", true)
				p1.Reference:SetAttribute("Incarnadine_Ichor", 5)
			end
		end
	},
	["Kaizer Test"] = {
		MinHealth = 100,
		MaxHealth = 100,
		MaxEnergy = 6,
		EXPScaling = 0,
		IdleAnim = "BGSIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		DeathAnim = "KaizerDeath",
		DeathIdleAnim = "KaizerDeathIdle",
		FadeOut = false,
		Modifiers = { "High Vampire" },
		Lifesteal = 0.25,
		Initiative = 15,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0,
		UseFirst = "To Figure It Out",
		Abilities = { "Lord Slash" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		TurnStartFunction = function(p1) --[[ Line: 1822 ]]
			if not p1.Reference:GetAttribute("FightStartIchor") then
				p1.Reference:SetAttribute("FightStartIchor", true)
				p1.Reference:SetAttribute("Incarnadine_Ichor", 5)
			end
		end
	},
	["Kaizer, Cyclic Calamity"] = {
		MinHealth = 400,
		MaxHealth = 400,
		MaxEnergy = 6,
		EXPScaling = 0,
		IdleAnim = "BGSIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		DeathAnim = "KaizerDeath",
		DeathIdleAnim = "KaizerDeathIdle",
		FadeOut = false,
		Modifiers = { "Kaizer" },
		Lifesteal = 0.35,
		MoveBackgroundColor = Color3.fromRGB(81, 0, 0),
		MoveTextColor = Color3.fromRGB(255, 0, 0),
		Initiative = 50,
		XOffset = 4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0,
		UseFirst = "Fin",
		Abilities = { "Lord\'s Ignition", "Midnight Sun", "Scorching Dawn", "Exsanguination", "Fin", "A Dying, Flickering Hope", "Journey\'s End" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		TurnStartFunction = function(p1) --[[ Line: 1857 | Upvalues: Players (copy) ]]
			if p1.Reference:GetAttribute("Repercussions_of_Your_Foolishness") then
				p1.Reference:SetAttribute("Repercussions_of_Your_Foolishness", p1.Reference:GetAttribute("Repercussions_of_Your_Foolishness") + 1)
			end
			for i, v in ipairs(Players:GetPlayers()) do
				if v:GetAttribute("isAlive") == false then
					p1.Reference:SetAttribute("Repercussions_of_Your_Foolishness", 1)
				end
			end
			if p1.Reference:GetAttribute("Repercussions_of_Your_Foolishness") and p1.Reference:GetAttribute("Repercussions_of_Your_Foolishness") >= 3 then
				p1.Reference:SetAttribute("UseJourneysEnd", true)
			end
			if p1.Reference:GetAttribute("HP") / p1.Reference:GetAttribute("MaxHP") <= 0.4 and not p1.Reference:GetAttribute("Our_Final_Stand") then
				p1.Reference:SetAttribute("Our_Final_Stand", 4)
			end
			if not p1.Reference:GetAttribute("FightStartIchor") then
				p1.Reference:SetAttribute("FightStartIchor", true)
				p1.Reference:SetAttribute("Incarnadine_Ichor", 10)
			end
		end
	},
	Cauldro = {
		MinHealth = 130,
		MaxHealth = 130,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		IdleAnim = "CauldroIdle",
		HitAnim = "CauldroHit",
		Modifiers = { "Outerbeing" },
		Initiative = 4,
		XOffset = 9,
		Rotation = { 0, 270, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0,
		Abilities = { "Shocking Roar", "Slap", "Dispense Doom", "Pumpkin Toss", "Cauldro Bash" },
		MinGoldDrop = 150,
		MaxGoldDrop = 150,
		Drops = {
			Nothing = 10
		}
	},
	["Void Giant"] = {
		MinHealth = 250,
		MaxHealth = 250,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		BlockChance = 0.25,
		DodgeChance = 0.05,
		IdleAnim = "GiantIdle",
		HitAnim = "GiantHit",
		DodgeAnim = "GiantDodge",
		BlockAnim = "GiantBlock",
		Modifiers = { "Thick Hide" },
		Initiative = 1,
		XOffset = 7,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Blackhole Pummel", "Voidclasp Sweep", "Collapsing Shout", "Void Giant Slash", "Destroy" },
		MinGoldDrop = 150,
		MaxGoldDrop = 150,
		Drops = {
			["Dominating Soul"] = 10
		}
	},
	["Ancient Hero"] = {
		MinHealth = 15,
		MaxHealth = 15,
		MaxEnergy = 6,
		EXPScaling = 0.95,
		BlockChance = 0,
		ModelHeight = 6,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "AHIdle",
		HitAnim = "AHHit",
		DodgeAnim = "AHDodge",
		Modifiers = { "Ethereal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.05,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Pride", "Wrath", "Hero\'s Boon" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 3
		},
		SummonScaling = {
			Health = {
				FTH = 0.0075
			},
			Abilities = {
				Pride = {
					FTH = 0.02
				},
				Wrath = {
					FTH = 0.015
				}
			}
		}
	},
	Thrall = {
		MinHealth = 25,
		MaxHealth = 25,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "ZombieIdle",
		HitAnim = "ZombieHit",
		DodgeAnim = "ZombieDodge",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Smash", "Infected Bite", "Swipe" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 2,
			["Metal Scrap"] = 2,
			["Bone Fragments"] = 5
		}
	},
	Zombie = {
		MinHealth = 28,
		MaxHealth = 30,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "ZombieIdle",
		HitAnim = "ZombieHit",
		DodgeAnim = "ZombieDodge",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Smash", "Infected Bite", "Swipe" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 3,
			["Bone Fragments"] = 5
		}
	},
	["Zombie..."] = {
		MinHealth = 28,
		MaxHealth = 30,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		MinStage = 1,
		MaxStage = 3,
		Level = 0,
		IdleAnim = "ZombieIdle",
		HitAnim = "ZombieHit",
		DodgeAnim = "ZombieDodge",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Smash", "Super Infected Bite", "Swipe" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 3,
			["Bone Fragments"] = 5
		}
	},
	["Esteemed Guest"] = {
		MinHealth = 30,
		MaxHealth = 30,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "ZombieIdle",
		HitAnim = "ZombieHit",
		DodgeAnim = "ZombieDodge",
		Modifiers = { "Undead" },
		Initiative = 3,
		XOffset = 2.4,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Crush", "Drink Up!", "Famished Bite", "Vicious Swipe" },
		MinGoldDrop = 15,
		MaxGoldDrop = 20,
		Drops = {
			["Tainted Leather"] = 4,
			["Dark Steel"] = 4,
			["Cursed Cloth"] = 4
		},
		SpawnFunction = function(p1) --[[ Line: 2065 ]]
			local t = {
				Color3.fromRGB(10, 8, 8),
				Color3.fromRGB(28, 22, 18),
				Color3.fromRGB(44, 34, 24),
				Color3.fromRGB(65, 45, 30),
				Color3.fromRGB(90, 56, 38),
				Color3.fromRGB(115, 76, 54),
				Color3.fromRGB(139, 90, 43),
				Color3.fromRGB(152, 98, 56),
				Color3.fromRGB(165, 107, 70),
				Color3.fromRGB(195, 125, 65),
				Color3.fromRGB(220, 145, 55),
				Color3.fromRGB(230, 175, 100),
				Color3.fromRGB(230, 195, 130),
				Color3.fromRGB(238, 210, 155),
				Color3.fromRGB(245, 230, 200),
				Color3.fromRGB(160, 160, 160),
				Color3.fromRGB(192, 192, 192),
				Color3.fromRGB(245, 245, 245)
			}
			local t2 = {
				Color3.fromRGB(254, 243, 235),
				Color3.fromRGB(252, 230, 215),
				Color3.fromRGB(248, 222, 205),
				Color3.fromRGB(245, 215, 194),
				Color3.fromRGB(240, 205, 180),
				Color3.fromRGB(234, 192, 166),
				Color3.fromRGB(225, 185, 155),
				Color3.fromRGB(215, 175, 148),
				Color3.fromRGB(205, 165, 135),
				Color3.fromRGB(198, 153, 120),
				Color3.fromRGB(180, 135, 100),
				Color3.fromRGB(155, 115, 85),
				Color3.fromRGB(140, 102, 75),
				Color3.fromRGB(130, 92, 67),
				Color3.fromRGB(115, 80, 58),
				Color3.fromRGB(100, 70, 50),
				Color3.fromRGB(75, 50, 35),
				Color3.fromRGB(50, 35, 25)
			}
			local v1 = t[math.random(1, #t)]
			local v2 = t2[math.random(1, #t2)]
			if math.random() >= 0.5 then
				p1.Shirt.ShirtTemplate = "rbxassetid://14157711558"
				p1.Pants.PantsTemplate = "rbxassetid://14157687405"
				p1.MaleHair.Color = v1
				p1.MaleHair.Transparency = 0
			else
				p1.Shirt.ShirtTemplate = "rbxassetid://14157711558"
				p1.Pants.PantsTemplate = "rbxassetid://14157687405"
				p1.FemaleHair.Color = v1
				p1.FemaleHair.Transparency = 0
			end
			p1.Head.Color = v2
			p1.Torso.Color = v2
			p1["Left Arm"].Color = v2
			p1["Right Arm"].Color = v2
			p1["Left Leg"].Color = v2
			p1["Right Leg"].Color = v2
		end
	},
	["Undead Shotgunner"] = {
		MinHealth = 15,
		MaxHealth = 17,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "USIdle",
		DodgeAnim = "PlayerDodge",
		HitAnim = "PlayerHit",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Shotgun Blast" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Imbued Cloth"] = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 2,
			["Sand In a Bottle"] = 5
		}
	},
	["Altered Shotgunner"] = {
		MinHealth = 42,
		MaxHealth = 45,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "USIdle",
		DodgeAnim = "PlayerDodge",
		HitAnim = "PlayerHit",
		Modifiers = { "Meta" },
		MinStage = 4,
		Initiative = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Static Blast" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Imbued Cloth"] = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 2,
			["Sand In a Bottle"] = 5
		}
	},
	["Undead Rifleman"] = {
		MinHealth = 15,
		MaxHealth = 17,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 3,
		IdleAnim = "URIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "PlayerDodge",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Repeater Shot" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 2,
			["Sand In a Bottle"] = 5
		}
	},
	["Two Gun Thomas"] = {
		MinHealth = 45,
		MaxHealth = 45,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.25,
		IdleAnim = "TGTIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Undead", "Mini-Boss" },
		ResistFear = true,
		Initiative = 4,
		XOffset = 4,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Two Gun Salute", "One For All", "All For One", "Sinful Shell" },
		MinGoldDrop = 50,
		MaxGoldDrop = 60,
		Drops = {
			["Wraith\'s Promise"] = 8,
			["Shadowy Hat"] = 8,
			["Sand In a Bottle"] = 4,
			["Ghastly Denim"] = 8
		}
	},
	["Mysterious Stranger"] = {
		MinHealth = 80,
		MaxHealth = 80,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.1,
		DodgeChance = 0.25,
		CritChance = 0.1,
		CritDamage = 1.2,
		IdleAnim = "MSIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		DeathAnim = "MSLeave",
		DeathIdleAnim = "MSLeave",
		ResistFear = true,
		Modifiers = { "Mysterious" },
		Initiative = 50,
		XOffset = 4,
		Rotation = { 0, 270, 0 },
		EnergyGainChance = 0,
		UseFirst = "Showdown",
		Abilities = { "Intervention" },
		MinGoldDrop = 50,
		MaxGoldDrop = 60,
		Drops = {},
		SummonScaling = {
			Health = {
				STR = 0,
				DEX = 0,
				CON = 0,
				INT = 0,
				FTH = 0,
				CHA = 0,
				LCK = 0.0075
			},
			Abilities = {
				Intervention = {
					LCK = 0.05
				}
			}
		}
	},
	["The Drifter"] = {
		MinHealth = 80,
		MaxHealth = 80,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.1,
		DodgeChance = 0.25,
		CritChance = 0.8,
		CritDamage = 1.2,
		IdleAnim = "PistolIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 50,
		XOffset = 4,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Showdown",
		Abilities = { "Fire", "Pocket Sand", "Showdown", "Draw" },
		MinGoldDrop = 50,
		MaxGoldDrop = 60,
		Drops = {
			["Solitary Soul"] = 10
		}
	},
	["Corrupted Legend"] = {
		MinHealth = 80,
		MaxHealth = 80,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.35,
		IdleAnim = "TGTIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Undead" },
		Initiative = 4,
		XOffset = 4,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Twin Stars", "Solar System Shaker", "Planet Buster", "Megidolaon" },
		MinGoldDrop = 50,
		MaxGoldDrop = 60,
		Drops = {
			["Wraith\'s Promise"] = 8,
			["Shadowy Hat"] = 8,
			["Sand In a Bottle"] = 4,
			["Ghastly Denim"] = 2
		}
	},
	Dryad = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0.2,
		Level = 7,
		IdleAnim = "DryadIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Fey" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Gift of the Feywild", "Effortless Charm", "Entangling Roots" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				INT = 0.007
			},
			Abilities = {
				["Mace Bash"] = {
					INT = 0.01
				},
				["Bash Combo"] = {
					INT = 0.007
				}
			}
		}
	},
	["Undead Knight"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0.2,
		Level = 7,
		IdleAnim = "UKIdle",
		HitAnim = "UKHit",
		BlockAnim = "UKBlock",
		Modifiers = { "Undead", "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Mace Bash", "Protect", "Bash Combo" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				INT = 0.007
			},
			Abilities = {
				["Mace Bash"] = {
					INT = 0.01
				},
				["Bash Combo"] = {
					INT = 0.007
				}
			}
		}
	},
	["Natty Death Knight"] = {
		MinHealth = 32,
		MaxHealth = 36,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0.2,
		Level = 1,
		IdleAnim = "DKIdle",
		HitAnim = "DKHit",
		BlockAnim = "DKBlock",
		Modifiers = { "Undead" },
		MinStage = 1,
		MaxStage = 3,
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Undertaker Strike", "Impaling" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 5
		}
	},
	["Death Knight"] = {
		MinHealth = 32,
		MaxHealth = 36,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0.2,
		Level = 9,
		IdleAnim = "DKIdle",
		HitAnim = "DKHit",
		BlockAnim = "DKBlock",
		Modifiers = { "Undead" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Undertaker Swing", "Impale" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 5
		}
	},
	["Static Knight"] = {
		MinHealth = 60,
		MaxHealth = 60,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0.2,
		Level = 9,
		IdleAnim = "DKIdle",
		HitAnim = "DKHit",
		BlockAnim = "DKBlock",
		Modifiers = { "Meta" },
		MinStage = 4,
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Static Swing", "Impaling" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 4,
			["Bone Fragments"] = 5
		}
	},
	["Void Knight"] = {
		MinHealth = 56,
		MaxHealth = 64,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		BlockChance = 0.28,
		Level = 7,
		IdleAnim = "DKIdle",
		HitAnim = "DKHit",
		BlockAnim = "DKBlock",
		Modifiers = { "Void" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Abyss Cleave", "Execution" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Leather Scrap"] = 2,
			["Metal Scrap"] = 2,
			["Bone Fragments"] = 5
		}
	},
	Mafioso = {
		MinHealth = 25,
		MaxHealth = 30,
		MaxEnergy = 4,
		EXPScaling = 0.75,
		DodgeChance = 0.1,
		Level = 0,
		IdleAnim = "MafiaIdle",
		HitAnim = "MafiaHit",
		DodgeAnim = "MafiaDodge",
		Modifiers = { "Human" },
		Initiative = 5,
		XOffset = 3,
		YOffset = -2.8,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Single Shot", "Rapid Fire" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 2,
			["Metal Scrap"] = 2,
			["Stylish Hat"] = 5
		}
	},
	["Found Spirit"] = {
		MinHealth = 17,
		MaxHealth = 17,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.25,
		Level = 0,
		IdleAnim = "GhostIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		Modifiers = { "Ethereal" },
		MinStage = 1,
		MaxStage = 3,
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ghostly Swipe", "Wailing" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 3,
			Ectoplasm = 5
		}
	},
	["Lost Spirit"] = {
		MinHealth = 12,
		MaxHealth = 15,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		Level = 8,
		IdleAnim = "GhostIdle",
		HitAnim = "PlayerHit",
		Modifiers = { "Ethereal" },
		Initiative = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ghostly Swipe", "Wail" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Fluorescent Flower"] = 2,
			Ectoplasm = 5
		}
	},
	["Strange Phantom"] = {
		MinHealth = 15,
		MaxHealth = 18,
		MaxEnergy = 6,
		EXPScaling = 0.6,
		BlockChance = 0,
		Level = 8,
		IdleAnim = "GhostIdle",
		HitAnim = "PlayerHit",
		Modifiers = { "Ethereal" },
		Initiative = 5,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ghostly Swipe", "Phantasmal Killer" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Fluorescent Flower"] = 2,
			Ectoplasm = 5
		}
	},
	["Vengeful Spirit"] = {
		MinHealth = 28,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		Level = 8,
		IdleAnim = "GhostIdle",
		HitAnim = "PlayerHit",
		Modifiers = { "Ethereal" },
		Initiative = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ghastly Swipe", "Bloody Wail" },
		MinGoldDrop = 7,
		MaxGoldDrop = 10,
		Drops = {
			Ectoplasm = 5
		}
	},
	["Void Spirit"] = {
		MinHealth = 24,
		MaxHealth = 30,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		Level = 0,
		IdleAnim = "GhostIdle",
		HitAnim = "PlayerHit",
		Modifiers = { "Ethereal" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ghostly Swipe", "Wail from the Abyss" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 3,
			Ectoplasm = 5
		}
	},
	["Ancient Vampire"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		CritChance = 3,
		CritDamage = 1.1,
		Level = 0,
		IdleAnim = "AVIdle",
		HitAnim = "AVHit",
		DodgeAnim = "AVDodge",
		Modifiers = { "Vampiric", "Trainer" },
		Initiative = 3,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bloodletting Swipe", "Space Ripper Stingy Eyes", "Divine Drink", "Time Stop" },
		MinGoldDrop = 15,
		MaxGoldDrop = 17,
		Drops = {
			["Antagonistic Soul"] = 10
		}
	},
	["Vampire :)"] = {
		MinHealth = 26,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		Level = 1,
		IdleAnim = "VampIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "VampDodge",
		Modifiers = {},
		MinStage = 1,
		MaxStage = 3,
		Initiative = 5,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Claw Strike", "Classic Blood Bolt", "I Dislike That Guy In Particular", "Incineration" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Spell Scroll: Incineration"] = 2,
			["Vial of Vampire\'s Blood"] = 9,
			["Bloody Fang"] = 9
		}
	},
	Vampire = {
		MinHealth = 26,
		MaxHealth = 30,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		Level = 8,
		IdleAnim = "VampIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "VampDodge",
		Modifiers = { "Vampiric" },
		Initiative = 5,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Claw Swipe", "Blood Bolt", "Guide Thrall", "Incineration" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Spell Scroll: Incineration"] = 2,
			["Vial of Vampire\'s Blood"] = 9,
			["Bloody Fang"] = 9,
			["Imbued Cloth"] = 3
		}
	},
	["Masked Vampire"] = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		Level = 8,
		IdleAnim = "VampIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "VampDodge",
		Modifiers = { "Vampiric" },
		Initiative = 5,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Claw Swipe", "Blood Bolt", "Guide Thrall", "Incineration" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Spell Scroll: Incineration"] = 2,
			["Tainted Leather"] = 6,
			["Dark Steel"] = 6,
			["Cursed Cloth"] = 6
		}
	},
	["Void Clan Vampire"] = {
		MinHealth = 75,
		MaxHealth = 75,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		Level = 0,
		IdleAnim = "VampIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "VampDodge",
		Modifiers = { "Vampiric" },
		Initiative = 3,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Claw Swipe", "Voidkin Blood Bolt", "Direct Minions", "Voidblaze Incineration" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Spell Scroll: Incineration"] = 2,
			Cloth = 3,
			["Vial of Vampire\'s Blood"] = 5,
			["Bloody Fang"] = 5
		}
	},
	["Necromancer Marceline"] = {
		MinHealth = 65,
		MaxHealth = 65,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		EnergyGain = 0.2,
		Level = 0,
		IdleAnim = "StaffIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "PlayerBlock",
		Modifiers = { "Human", "Trainer" },
		ResistFear = true,
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Death Bolt", "Summon Skeleton", "Spell Scroll: Necrotic Cloud", "Incineration" },
		MinGoldDrop = 20,
		MaxGoldDrop = 25,
		Drops = {
			["Halved Soul"] = 1
		}
	},
	Marionette = {
		MinHealth = 45,
		MaxHealth = 45,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "PuppetIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "Block",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		YOffset = 0,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Clashing Talon", "Red Nail", "Reconstruct" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Tainted Leather"] = 4,
			["Dark Steel"] = 4,
			["Cursed Cloth"] = 4
		}
	},
	["Undead Mage"] = {
		MinHealth = 22,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "UMIdle",
		HitAnim = "UMHit",
		DodgeAnim = "UMDodge",
		BlockAnim = "UMBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Death Bolt", "Summon Skeleton", "Necrotic Cloud" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Imbued Cloth"] = 6,
			["Spell Scroll: Necrotic Cloud"] = 1,
			Ectoplasm = 10,
			["Mysterious Key"] = 0.2
		}
	},
	["Void Skull"] = {
		MinHealth = 45,
		MaxHealth = 48,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 0,
		IdleAnim = "UMIdle",
		HitAnim = "UMHit",
		DodgeAnim = "UMDodge",
		BlockAnim = "UMBlock",
		Modifiers = { "Void" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Voidheat Blast", "Summon Void Knight", "Superheated Void Cloud" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			Cloth = 6,
			["Spell Scroll: Necrotic Cloud"] = 3,
			Ectoplasm = 10,
			["Mysterious Key"] = 0.2
		}
	},
	["Kobold Assassin"] = {
		MinHealth = 22,
		MaxHealth = 26,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 6,
		IdleAnim = "KAIdle",
		HitAnim = "KAHit",
		DodgeAnim = "KADodge",
		Modifiers = { "Draconic", "Small" },
		Initiative = 6,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Scaled Stab", "Spew Flame", "Flee", "Ripper Assault" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Red Scale"] = 5,
			["Dragonite Chip"] = 5
		}
	},
	["Altered Assassin"] = {
		MinHealth = 45,
		MaxHealth = 50,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 6,
		IdleAnim = "KAIdle",
		HitAnim = "KAHit",
		DodgeAnim = "KADodge",
		Modifiers = { "Meta", "Small" },
		Initiative = 6,
		MinStage = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Scaled Stab", "Spew Static", "Static Assault" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Red Scale"] = 5,
			["Dragonite Chip"] = 5
		}
	},
	["Kobold Warrior"] = {
		MinHealth = 24,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "KoboldWIdle",
		HitAnim = "KoboldWHit",
		DodgeAnim = "KoboldWDodge",
		BlockAnim = "KoboldWBlock",
		Modifiers = { "Draconic", "Small" },
		Initiative = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Scaled Advance", "Spew Flame", "Flee", "Dragon Slash" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Red Scale"] = 5,
			["Dragonite Chip"] = 5
		}
	},
	["Suspicious Bird"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 3,
		BlockChance = 0,
		DodgeChance = 0,
		CritChance = 0,
		Level = 0,
		IdleAnim = "PunishmentBirdIdle",
		HitAnim = "PunishmentBirdHit",
		DodgeAnim = "PunishmentBirdHit",
		BlockAnim = "PunishmentBirdHit",
		ResistFear = true,
		Modifiers = {},
		Initiative = 1,
		XOffset = 1.5,
		YOffset = 3.5,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Peck", "Punishment" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			Nothing = 5
		}
	},
	["Thanguard Plainarm"] = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		ModelHeight = 4.07,
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.47,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ancient Wrath", "Rattler", "Protector of the Lost" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Forgotten Soul"] = 10
		}
	},
	["Dwarven Skeleton"] = {
		MinHealth = 25,
		MaxHealth = 30,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		ModelHeight = 4.07,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.47,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bone Claw", "Funny Bone" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10,
			Cloth = 5,
			["Metal Scrap"] = 5
		}
	},
	["OG Skeleton"] = {
		MinHealth = 24,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "OGSkeletonIdle",
		HitAnim = "OGSkeletonHit",
		DodgeAnim = "OGSkeletonDodge",
		BlockAnim = "OGSkeletonBlock",
		Modifiers = {},
		MinStage = 1,
		MaxStage = 3,
		Initiative = 1,
		XOffset = 3,
		YOffset = -3.4,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bone Claw", "Funniest Bone" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10
		}
	},
	Skeleton = {
		MinHealth = 20,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bone Claw", "Funny Bone" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10,
			Cloth = 5,
			["Metal Scrap"] = 5
		}
	},
	["Summoned Skeleton"] = {
		MinHealth = 14,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Bone Claw", "Funny Bone" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 0
		},
		SummonScaling = {
			Health = {
				INT = 0.006
			},
			Abilities = {
				["Bone Claw"] = {
					INT = 0.01
				},
				["Funny Bone"] = {
					INT = 0.012
				}
			}
		}
	},
	["Summoned Blackened Skeleton"] = {
		MinHealth = 14,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "BlackSkelIdle",
		HitAnim = "BlackSkelHit",
		DodgeAnim = "BlackSkelDodge",
		BlockAnim = "BlackSkelBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Plague Blast", "Baneblade", "Lordsworn Lifedrinker" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 0
		},
		SummonScaling = {
			Health = {
				INT = 0.009
			},
			Abilities = {
				Baneblade = {
					INT = 0.01
				},
				["Plague Blast"] = {
					INT = 0.012
				},
				["Lordsworn Lifedrinker"] = {
					INT = 0.015
				}
			}
		}
	},
	Clown = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.1,
		Level = 7,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "PlayerDodge",
		BlockAnim = "PlayerBlock",
		Modifiers = { "OuterBeing" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.25,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Banana Peel", "Performance", "Punchline" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Red Nose"] = 10,
			["Striped Pants"] = 10,
			["Banana Peel"] = 10
		}
	},
	["Corroded Skeleton"] = {
		MinHealth = 25,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Toxin Blast", "Bone Claw" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10,
			["Irradiated Goop"] = 10
		}
	},
	["Blackened Skeleton"] = {
		MinHealth = 25,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "BlackSkelIdle",
		HitAnim = "BlackSkelHit",
		DodgeAnim = "BlackSkelDodge",
		BlockAnim = "BlackSkelBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Plague Blast", "Baneblade", "Lordsworn Lifedrinker" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10
		}
	},
	["Ancient Blackened Skeleton"] = {
		MinHealth = 25,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		BlockChance = 0,
		DodgeChance = 0.05,
		Level = 7,
		IdleAnim = "SkeletonIdle",
		HitAnim = "SkeletonHit",
		DodgeAnim = "SkeletonDodge",
		BlockAnim = "SkeletonBlock",
		Modifiers = { "Skeletal" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.7,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Plague Blast", "Funny Bone", "Bone Claw" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {
			["Bone Fragments"] = 10
		}
	},
	["Goblin Chief\'s Adoring Fan"] = {
		MinHealth = 12,
		MaxHealth = 12,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.5,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Tiny Strike", "Rally", "Admire" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 2
		},
		SummonScaling = {
			Health = {
				STR = 0.0075
			},
			Abilities = {
				["Tiny Strike"] = {
					STR = 0.015,
					DEX = 0.0075
				}
			}
		}
	},
	["Zatt, Hero of the Red Mountains"] = {
		MinHealth = 90,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -0.5,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Tiny Strike", "Rally", "Admire" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 2
		}
	},
	["Kobold Artificer"] = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 6,
		IdleAnim = "EGIdle",
		HitAnim = "EGHit",
		DodgeAnim = "EGDodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 8,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Wrench Work", "Fire Bomb", "Electro Bomb", "Project Barrier" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Innovative Soul"] = 10
		}
	},
	["Goblin Engineer"] = {
		MinHealth = 14,
		MaxHealth = 17,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 6,
		IdleAnim = "EGIdle",
		HitAnim = "EGHit",
		DodgeAnim = "EGDodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Craft Mechanical Helper",
		Abilities = { "Wrench Work", "Craft Mechanical Helper", "Flee", "Fire Bomb", "Electro Bomb" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Goblin Ear"] = 4,
			["Leather Scrap"] = 4,
			["Metal Scrap"] = 6,
			Cloth = 3
		}
	},
	["Trick o Treater"] = {
		MinHealth = 18,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "ToTIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Trick", "Harvest Candy" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Candy Corn"] = 1,
			Chocolate = 1,
			["Sour Drops"] = 1
		}
	},
	Goblin = {
		MinHealth = 14,
		MaxHealth = 17,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Tiny Strike", "Jugg", "Flee" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Goblin Ear"] = 1,
			["Leather Scrap"] = 1,
			Cloth = 1
		}
	},
	["Kobold Worker"] = {
		MinHealth = 18,
		MaxHealth = 22,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		MinStage = 2,
		MaxStage = 5,
		Level = 2,
		IdleAnim = "PickaxeIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Chipping Swing", "Hit Big", "Spew Flame", "Flee" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Red Scale"] = 2,
			["Dragonite Chip"] = 2,
			["Leather Scrap"] = 1,
			["Metal Scrap"] = 1,
			Cloth = 1
		}
	},
	["Goblin Worker"] = {
		MinHealth = 16,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		MinStage = 1,
		MaxStage = 4,
		Level = 2,
		IdleAnim = "PickaxeIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Chipping Swing", "Hit Big", "Flee" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Rock Fragments"] = 1,
			["Leather Scrap"] = 1,
			["Metal Scrap"] = 1,
			Cloth = 1
		}
	},
	["Rat Cultist"] = {
		MinHealth = 65,
		MaxHealth = 65,
		MaxEnergy = 6,
		EXPScaling = 1,
		Level = 2,
		IdleAnim = "RatCultistIdle",
		HitAnim = "FlHit",
		Modifiers = { "Mini-Boss" },
		Initiative = 5,
		XOffset = 4.5,
		YOffset = -1.55,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Dark Communion",
		Abilities = { "Flickering Chaos", "Dark Communion", "Summon Underling" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Devoted Soul"] = 1
		},
		SpawnFunction = function(p1) --[[ Line: 3528 ]]
			p1:SetAttribute("Devoted_Cultist", 1)
		end
	},
	Kowalski = {
		MinHealth = 28,
		MaxHealth = 28,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "BNinjaIdle",
		DodgeAnim = "RatNinjaDodge",
		HitAnim = "RatNinjaHit",
		Modifiers = { "Mini-Boss" },
		Initiative = 10,
		XOffset = 4.5,
		YOffset = -0.145,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Analysis",
		Abilities = { "Shinobi Stab", "Speed Blitz", "Shuriken Throw" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Mutated Rat Hide"] = 3,
			["Mutated Rat Eye"] = 2,
			["Cheesium Dagger"] = 4
		}
	},
	Private = {
		MinHealth = 38,
		MaxHealth = 38,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "RNinjaIdle",
		DodgeAnim = "RatNinjaDodge",
		HitAnim = "RatNinjaHit",
		Modifiers = { "Mini-Boss" },
		Initiative = 6,
		XOffset = 4.5,
		YOffset = -0.18,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Out Maneuvered",
		Abilities = { "Shinobi Slash", "Out Maneuvered", "Shuriken Toss" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Mutated Rat Hide"] = 3,
			["Mutated Rat Eye"] = 2,
			["Cheesium Sword"] = 4
		}
	},
	Skipper = {
		MinHealth = 32,
		MaxHealth = 32,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.2,
		Level = 2,
		IdleAnim = "RNinjaIdle",
		DodgeAnim = "RatNinjaDodge",
		HitAnim = "RatNinjaHit",
		Modifiers = { "Mini-Boss" },
		Initiative = 7,
		XOffset = 4.5,
		YOffset = -0.18,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Ratkin Rally",
		Abilities = { "Shinobi Slash", "Out Maneuvered", "Shuriken Toss", "Ratkin Rally" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Mutated Rat Hide"] = 3,
			["Mutated Rat Eye"] = 2,
			["Cheesium Sword"] = 4
		}
	},
	Rico = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "RNinjaIdle",
		DodgeAnim = "RatNinjaDodge",
		HitAnim = "RatNinjaHit",
		Modifiers = { "Mini-Boss" },
		Initiative = 8,
		XOffset = 4.5,
		YOffset = -0.18,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Shinobi Stab", "Speed Blitz", "Shuriken Throw" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Mutated Rat Hide"] = 3,
			["Mutated Rat Eye"] = 2,
			["Cheesium Dagger"] = 4
		}
	},
	Follower = {
		MinHealth = 25,
		MaxHealth = 25,
		MaxEnergy = 6,
		EXPScaling = 1,
		Level = 2,
		IdleAnim = "FlIdle",
		HitAnim = "FlHit",
		Modifiers = {},
		Initiative = 5,
		XOffset = 4.5,
		YOffset = -1.55,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ratling Punch", "Willing Sacrafice" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Rat Hide"] = 3,
			["Rat Eye"] = 2
		}
	},
	["Toxic Ratkin"] = {
		MinHealth = 28,
		MaxHealth = 32,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "TRatIdle",
		HitAnim = "TRatHit",
		DodgeAnim = "TRatDodge",
		Modifiers = {},
		Initiative = 5,
		XOffset = 4.5,
		YOffset = -1.55,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Toxic Slash", "Twitchy Assault" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Toxic Claw"] = 5,
			["Mutated Rat Hide"] = 3,
			["Mutated Rat Eye"] = 2
		}
	},
	["Mutated Rat"] = {
		MinHealth = 34,
		MaxHealth = 38,
		MaxEnergy = 6,
		EXPScaling = 1,
		DodgeChance = 0.05,
		Level = 2,
		IdleAnim = "MutatedRIdle",
		HitAnim = "MutatedRHit",
		DodgeAnim = "MutatedRDodge",
		Modifiers = {},
		Initiative = 5,
		XOffset = 3,
		YOffset = -6,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Mutated Nibble", "Rancid Hook Spin" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Mutated Rat Hide"] = 3,
			["Toxic Goop"] = 3,
			["Mutated Rat Eye"] = 2
		}
	},
	Scientist = {
		MinHealth = 30,
		MaxHealth = 30,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "ScienceIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		DeathAnim = "RunningScientist",
		DeathIdleAnim = "RunningScientist",
		FadeOut = true,
		Modifiers = { "Boss" },
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Doomed Press", "Toxin X", "Live To Serve", "Appeal To Authority" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 1
		},
		SpawnFunction = function(p1) --[[ Line: 3734 ]]
			p1:SetAttribute("Scientist", 1)
		end
	},
	["Injured Scientist"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "ScienceIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		DeathAnim = "RunningScientist",
		DeathIdleAnim = "RunningScientist",
		FadeOut = true,
		Modifiers = { "Boss" },
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.2,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Doomed Press", "Toxin X", "Appeal To Authority" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 1
		},
		SpawnFunction = function(p1) --[[ Line: 3765 ]]
			p1:SetAttribute("Scientist", 1)
		end
	},
	["Overtaken Goblin"] = {
		MinHealth = 24,
		MaxHealth = 24,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 5,
		XOffset = 3,
		YOffset = 0.5,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Tiny Strike", "Gouge" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Tainted Leather"] = 4,
			["Dark Steel"] = 4,
			["Cursed Cloth"] = 4
		}
	},
	Voidblin = {
		MinHealth = 37,
		MaxHealth = 41,
		MaxEnergy = 6,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "void" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Voidkin Strike" },
		MinGoldDrop = 8,
		MaxGoldDrop = 12,
		Drops = {
			["Goblin Ear"] = 8,
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 3,
			Cloth = 3
		}
	},
	Nightstalker = {
		MinHealth = 65,
		MaxHealth = 65,
		EXPScaling = 1,
		MaxEnergy = 6,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "BowIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Trainer" },
		Initiative = 50,
		XOffset = 3,
		YOffset = -1.125,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Born in Shade",
		Abilities = { "Shoot Bow", "Rain of Arrows", "Born in Shade", "Assassin\'s Shot", "Soulrip Arrow" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Amoral Soul"] = 1
		}
	},
	Feyling = {
		MinHealth = 45,
		MaxHealth = 45,
		EXPScaling = 1,
		MaxEnergy = 6,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "BowIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Trainer" },
		Initiative = 8,
		XOffset = 3,
		YOffset = 0,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Feyling\'s Mark",
		Abilities = { "Psychic Shot", "Gatling Jack", "Feybolt Arrow", "Blackout Arrow" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Caressing Soul"] = 1
		}
	},
	Yordini = {
		MinHealth = 40,
		MaxHealth = 40,
		EXPScaling = 0.8,
		MaxEnergy = 6,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "InstrumentIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Trainer" },
		Initiative = 8,
		XOffset = 3,
		YOffset = -1.095,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Concert",
		Abilities = { "Concert", "Brain Bash", "Shattering" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Endless Soul"] = 1
		}
	},
	Altrix = {
		MinHealth = 90,
		MaxHealth = 90,
		EXPScaling = 0.8,
		MaxEnergy = 6,
		BlockChance = 0.1,
		DodgeChance = 0.15,
		Level = 2,
		IdleAnim = "InstrumentIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Trainer" },
		Initiative = 12,
		XOffset = 3,
		YOffset = 0,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Dreadful Exposition",
		Abilities = { "Cruel Contempt", "Discordant Whispers", "Wretched Knowledge", "Dark Sonata" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Searching Soul"] = 1
		}
	},
	Ranger = {
		MinHealth = 13,
		MaxHealth = 13,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "BowIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.125,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Shoot Bow", "Rain of Arrows" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			Leather = 1
		}
	},
	["Goblin Rifle Guard"] = {
		MinHealth = 16,
		MaxHealth = 16,
		MaxEnergy = 2,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "GoblinRGuardIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Small" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.125,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Musket Fire", "Load Musket", "Flee" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Goblin Ear"] = 3,
			["Goblin Thinking Cap"] = 3,
			["Minor Healing Potion"] = 5
		}
	},
	["Voidblin Rifle Guard"] = {
		MinHealth = 39,
		MaxHealth = 43,
		MaxEnergy = 2,
		EXPScaling = 1,
		BlockChance = 0.2,
		DodgeChance = 0.1,
		Level = 2,
		IdleAnim = "GoblinRGuardIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Void" },
		Initiative = 1,
		XOffset = 3,
		YOffset = -1.125,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Voidforged Musket Fire", "Load Musket" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Goblin Ear"] = 1
		}
	},
	Monk = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.25,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "PlayerBlock",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 15,
		XOffset = 4,
		YOffset = 0.43,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0.3,
		UseFirst = "Way of Transcendence",
		Abilities = { "Way of Transcendence", "Fist of Transcendence", "Strike", "Sweep", "Barrage" },
		MinGoldDrop = 40,
		MaxGoldDrop = 50,
		Drops = {
			["Radiating Soul"] = 10
		}
	},
	Assassin = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.25,
		IdleAnim = "DaggerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "PlayerBlock",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 12,
		XOffset = 4,
		YOffset = -0.53,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Blade Barrage",
		Abilities = { "Backstab", "Vicious Attack", "Blade Barrage", "Stab", "Poke Up", "Shadowed Strike" },
		MinGoldDrop = 40,
		MaxGoldDrop = 50,
		Drops = {
			["Shadowed Soul"] = 10
		}
	},
	["Angered Wizard"] = {
		MinHealth = 32,
		MaxHealth = 32,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.25,
		IdleAnim = "StaffIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "PlayerBlock",
		ResistFear = true,
		Modifiers = { "Mini-Boss" },
		Initiative = 1,
		XOffset = 4,
		YOffset = -1.741,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Flame Bolt", "Imbued Lightning Strike", "Spell Scroll: Magic Missile", "Fireball", "Spell Scroll: Wind Burst" },
		MinGoldDrop = 40,
		MaxGoldDrop = 50,
		Drops = {
			["Wizard Hat"] = 2,
			["Ancient Staff"] = 5,
			["Spell Scroll: Magic Missile"] = 3,
			["Spell Scroll: Wind Burst"] = 3
		}
	},
	["Goblin Noble"] = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.5,
		BlockChance = 0.15,
		DodgeChance = 0.25,
		IdleAnim = "GNobleIdle",
		HitAnim = "GNobleHit",
		DodgeAnim = "GNobleDodge",
		BlockAnim = "GNobleBlock",
		ResistFear = true,
		Modifiers = { "Small", "Mini-Boss" },
		Initiative = 1,
		XOffset = 4,
		YOffset = 0.43,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Weakpoint", "Flourish", "Sabre Thrust" },
		MinGoldDrop = 40,
		MaxGoldDrop = 50,
		Drops = {
			["Goblin Ear"] = 3,
			["Goblin Thinking Cap"] = 3,
			["Minor Healing Potion"] = 5,
			["Fancy Monocle"] = 2,
			["Noble\'s Sabre"] = 8,
			["Goblin Regents Mandate"] = 3
		}
	},
	["Rat Ogre"] = {
		MinHealth = 80,
		MaxHealth = 80,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		PreferredSpawn = 3,
		Level = 0,
		IdleAnim = "RatOgreIdle",
		HitAnim = "RatOgreHit",
		Modifiers = { "Boss" },
		Initiative = 1,
		XOffset = 7,
		YOffset = -0.75,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Nibble", "Ratling Dropkick", "Rat Ogre Punch" },
		MinGoldDrop = 35,
		MaxGoldDrop = 50,
		Drops = {
			Nothing = 1
		}
	},
	["Mutated Rat Ogre"] = {
		MinHealth = 150,
		MaxHealth = 150,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.2,
		DodgeChance = 0,
		Level = 0,
		IdleAnim = "EvolvedBDRIdle",
		HitAnim = "BDRHit",
		DodgeAnim = "EvolvedBDRDodge",
		BlockAnim = "BDRBlock",
		Modifiers = { "Boss" },
		Initiative = 1,
		XOffset = 7,
		YOffset = -1.8,
		ModelHeight = 16,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Expunge Toxins", "Armblade Slash", "Rabbid Lunge", "Irradiated Clawing" },
		MinGoldDrop = 35,
		MaxGoldDrop = 50,
		Drops = {
			["Decaying Soul"] = 1
		},
		SpawnFunction = function(p1) --[[ Line: 4161 ]]
			p1:SetAttribute("Perpetual_Mutation", 1)
		end
	},
	["Rat!"] = {
		MinHealth = 35,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.2,
		DodgeChance = 0,
		Level = 0,
		MinStage = 4,
		IdleAnim = "RatOgreIdle",
		HitAnim = "RatOgreHit",
		BlockAnim = "RatOgreBlock",
		Modifiers = {},
		Initiative = 1,
		XOffset = 7,
		YOffset = -2,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Ratkin Smash", "Ratkin Spew", "Ratkin Kick", "Rat Ogre Spin" },
		MinGoldDrop = 35,
		MaxGoldDrop = 50,
		Drops = {
			["Rat Hide"] = 8,
			Nothing = 2
		}
	},
	Podrick = {
		MinHealth = 60,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.1,
		Level = 0,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		EnergyGainChance = 0,
		Abilities = { "Podrick Barrage", "Strike" },
		MinGoldDrop = 20,
		MaxGoldDrop = 25,
		Drops = {}
	},
	["Slimy Slime"] = {
		MinHealth = 30,
		MaxHealth = 45,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.05,
		Level = 1,
		IdleAnim = "SlimeIdle",
		HitAnim = "SlimeHit",
		DodgeAnim = "SlimeDodge",
		Modifiers = { "Gelatinous" },
		MinStage = 1,
		MaxStage = 3,
		Initiative = 1,
		XOffset = 2.5,
		YOffset = -2.85,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slime Devour", "Slime Spit" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 3,
			["Slime Chunk"] = 9
		}
	},
	Slime = {
		MinHealth = 28,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.05,
		Level = 8,
		IdleAnim = "SlimeIdle",
		HitAnim = "SlimeHit",
		DodgeAnim = "SlimeDodge",
		Modifiers = { "Gelatinous" },
		Initiative = 1,
		XOffset = 2.5,
		YOffset = -2.85,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slime Devour", "Slime Spit" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Leather Scrap"] = 3,
			["Metal Scrap"] = 3,
			["Slime Chunk"] = 9,
			["Fluorescent Flower"] = 3
		}
	},
	["Irradiated Slime"] = {
		MinHealth = 30,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.05,
		Level = 8,
		IdleAnim = "SlimeIdle",
		HitAnim = "SlimeHit",
		DodgeAnim = "SlimeDodge",
		Modifiers = { "Gelatinous" },
		Initiative = 1,
		XOffset = 2.5,
		YOffset = -2.85,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slime Devour", "Irradiated Spit" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Slime Chunk"] = 4,
			["Irradiated Goop"] = 8
		}
	},
	["Radioactive Slime"] = {
		MinHealth = 70,
		MaxHealth = 70,
		MaxEnergy = 6,
		PreferredSpawn = 3,
		EXPScaling = 0.55,
		DodgeChance = 0.05,
		Level = 8,
		IdleAnim = "SlimeIdle",
		HitAnim = "SlimeHit",
		DodgeAnim = "SlimeDodge",
		Modifiers = { "Gelatinous", "Mini-Boss" },
		Initiative = 1,
		XOffset = 2.5,
		YOffset = -5.22,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Toxic Overtaking", "Irradiated Spit", "Sludge Bomb" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Goop Covered Cap"] = 3,
			["Half Disolved Skull"] = 3,
			["Old Adventurer\'s Notes"] = 3
		},
		SpawnFunction = function(p1) --[[ Line: 4315 | Upvalues: Players (copy) ]]
			p1:SetAttribute("Spit_Up", 1)
			local count = 0
			for k, v in pairs(Players:GetChildren()) do
				if v:GetAttribute("isAlive") then
					count = count + 1
				end
			end
			p1:SetAttribute("Spit_Up_Scaling", count)
		end
	},
	["Flesh Guard"] = {
		MinHealth = 45,
		MaxHealth = 50,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.1,
		Level = 7,
		IdleAnim = "MeatManIdle",
		HitAnim = "MeatManHit",
		BlockAnim = "MeatManBlock",
		Modifiers = {},
		Initiative = 1,
		MinStage = 4,
		XOffset = 8,
		YOffset = 2.275,
		Rotation = { 0, 0, -81.433 },
		EnergyGainChance = 0,
		Abilities = { "Flesh Bash", "Crush", "Flesh Cyclone" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Meat Chunk"] = 8
		}
	},
	["Meat Cube"] = {
		MinHealth = 80,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.2,
		Level = 10,
		IdleAnim = "SlimeIdle",
		HitAnim = "SlimeHit",
		BlockAnim = "SlimeBlock",
		Modifiers = {},
		Initiative = 1,
		XOffset = 2.5,
		YOffset = -2.85,
		EnergyGainChance = 0,
		Abilities = { "Blood Pool", "Clot Swipe" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Meat Chunk"] = 8,
			Nothing = 3
		}
	},
	["Flesh Mage"] = {
		MinHealth = 35,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.1,
		Level = 0,
		IdleAnim = "StaffIdle",
		HitAnim = "PlayerHit",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = -5,
		MinStage = 4,
		XOffset = 3,
		YOffset = 0.037,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Flesh Seed", "Blood Rain", "Rupture Flesh" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Meat Chunk"] = 10,
			["Flesh Staff"] = 3
		}
	},
	Grandpa = {
		MinHealth = 60,
		MaxHealth = 60,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "GpaIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		PreferredSpawn = 2,
		ResistFear = true,
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slasher", "Beating", "Massacre" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Nightmarish Soul"] = 1
		}
	},
	Granny = {
		MinHealth = 40,
		MaxHealth = 40,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Mini-Boss" },
		Initiative = 4,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Granny Kick Barrage", "Granny Kick", "Pie Throw" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Granny\'s Mits"] = 2,
			["Granny\'s Glasses"] = 2,
			["Cook Book"] = 2
		}
	},
	["Turbo Granny"] = {
		MinHealth = 67,
		MaxHealth = 67,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.2,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Turbo Kick Barrage", "Pies For Everyone" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Granny\'s Mits"] = 2,
			["Granny\'s Glasses"] = 2,
			["Cook Book"] = 2
		}
	},
	["Knight Deputy"] = {
		MinHealth = 45,
		MaxHealth = 45,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.02,
		BlockChance = 0.15,
		IdleAnim = "KnightIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = {},
		Initiative = 2,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Knight Slash", "Rally", "Lay on Hands" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			Nothing = 10
		}
	},
	["Knight General"] = {
		MinHealth = 80,
		MaxHealth = 80,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.05,
		BlockChance = 0.2,
		IdleAnim = "KnightIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		ModelHeight = 5,
		Modifiers = { "Trainer" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Conquering Push",
		Abilities = { "Knight Slash", "Lay on Hands", "Shield of Faith", "Conquering Push", "Cross Slash" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Innocent Soul"] = 10
		}
	},
	["Grovetender Kai"] = {
		MinHealth = 45,
		MaxHealth = 45,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.05,
		BlockChance = 0.2,
		IdleAnim = "TomeIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 6,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Strike", "Cure Light Wounds", "Grovetender\'s Blessing", "Entangle" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Loving Soul"] = 10
		}
	},
	Zealot = {
		MinHealth = 100,
		MaxHealth = 100,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.05,
		BlockChance = 0.2,
		IdleAnim = "TomeIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Strike", "Smite", "Seal Wounds", "Bane", "Flash of Light", "Empire\'s Flame" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Shepherding Soul"] = 10
		}
	},
	["Slayer Captain Thorgrim Ironhammer"] = {
		MinHealth = 90,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "HammerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slaying", "Mountain\'s Justice", "The Grudge Settler" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Bellowing Soul"] = 10
		}
	},
	["The Hero"] = {
		MinHealth = 70,
		MaxHealth = 70,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "GreatswordIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		ModelHeight = 5,
		EnergyGainChance = 0,
		Abilities = { "Hero\'s Cleave", "Brutal Slashes", "Cleaving Blow", "Overpowering Slash" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Stagnant Soul"] = 10
		},
		SpawnFunction = function(p1) --[[ Line: 4623 ]]
			p1:SetAttribute("Reckless", 4)
		end
	},
	["The Beast"] = {
		MinHealth = 180,
		MaxHealth = 180,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "PlayerIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Trainer" },
		Initiative = 50,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Strike", "Sweep", "Wild Swipes", "Wolf Step" },
		MinGoldDrop = 20,
		MaxGoldDrop = 30,
		Drops = {
			["Beastly Soul"] = 10
		},
		SpawnFunction = function(p1) --[[ Line: 4650 ]]
			p1:SetAttribute("Unleashed", 99)
		end
	},
	Devilman = {
		MinHealth = 166,
		MaxHealth = 166,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.1,
		BlockChance = 0.15,
		IdleAnim = "DMIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		ResistFear = true,
		Modifiers = { "Boss" },
		Initiative = 7,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0.5,
		Abilities = { "Combo", "Rainstorm", "Wide Open!", "Inferno Trigger" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Defiant Soul"] = 10
		}
	},
	["Goblin Chief"] = {
		MinHealth = 65,
		MaxHealth = 65,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.2,
		IdleAnim = "GCIdle",
		HitAnim = "GCHit",
		BlockAnim = "GCBlock",
		ResistFear = true,
		Modifiers = { "Mini-Boss" },
		Initiative = 3,
		XOffset = 7,
		YOffset = -3.15,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Club Smash", "Beatdown", "Belly Flop" },
		MinGoldDrop = 50,
		MaxGoldDrop = 70,
		Drops = {
			["Gladiatorial Soul"] = 10
		}
	},
	["Original Goblin Chief"] = {
		MinHealth = 65,
		MaxHealth = 65,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		BlockChance = 0.25,
		IdleAnim = "OGCIdle",
		HitAnim = "OGCHit",
		BlockAnim = "OGCBlock",
		ResistFear = true,
		Modifiers = { "Mini-Boss" },
		Initiative = 3,
		XOffset = 7,
		YOffset = -6.7,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Original Club Smash", "Original Beatdown", "Belly Bump", "Body Slam" },
		MinGoldDrop = 50,
		MaxGoldDrop = 70,
		Drops = {
			["Gladiatorial Soul"] = 10
		}
	},
	["Flesh Mound"] = {
		MinHealth = 80,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.05,
		BlockChance = 0.2,
		Level = 10,
		IdleAnim = "FleshMIdle",
		HitAnim = "FleshMHit",
		BlockAnim = "MeatManBlock",
		DodgeAnim = "FleshMDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 8,
		YOffset = 0,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slap", "Head Bash" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Meat Chunk"] = 10,
			Nothing = 2
		}
	},
	["Wandering Ronin"] = {
		MinHealth = 80,
		MaxHealth = 90,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.25,
		BlockChance = 0.35,
		CritChance = 0.5,
		CritDamage = 1.75,
		IdleAnim = "RoninIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Boss" },
		Initiative = 3,
		XOffset = 3,
		YOffset = 0,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0.33,
		Abilities = { "Ronin Slash", "Two Fold Execute", "Eliminate", "Rupture" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			Nothing = 2
		}
	},
	Nedyak = {
		MinHealth = 60,
		MaxHealth = 60,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.1,
		Level = 0,
		IdleAnim = "TomeIdle",
		HitAnim = "PlayerHit",
		DodgeAnim = "Dodge",
		BlockAnim = "GuardHit",
		Modifiers = { "Human", "Mini-Boss" },
		ResistFear = true,
		Initiative = 10,
		XOffset = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Dark Fortelling",
		Abilities = { "Bane", "Curse Flux", "Dark Bolt", "Beckon the Void" },
		MinGoldDrop = 25,
		MaxGoldDrop = 25,
		Drops = {
			["Changeling Soul"] = 10
		}
	},
	["Void Being"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.05,
		Level = 0,
		BlockChance = 0.35,
		IdleAnim = "VoidBIdle",
		HitAnim = "VoidBHit",
		DodgeAnim = "VoidBDodge",
		BlockAnim = "VoidBBlock",
		Modifiers = {},
		Initiative = 3,
		XOffset = 8,
		YOffset = 2.7,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Void Lash", "Voidburn Bolt", "Beyond The Veil", "Void Pulse" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Abyssal Mass"] = 10,
			["Spell Scroll: Voidburn Bolt"] = 3,
			["Shard of Void"] = 1
		}
	},
	["Herald of The Void"] = {
		MinHealth = 180,
		MaxHealth = 180,
		MaxEnergy = 6,
		EXPScaling = 1.2,
		DodgeChance = 0.1,
		Level = 0,
		IdleAnim = "VoidHIdle",
		HitAnim = "VoidHHit",
		DodgeAnim = "VoidHDodge",
		Modifiers = { "Voidbeing", "Mini-Boss" },
		Initiative = 3,
		XOffset = 5,
		YOffset = 5.605,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		Abilities = { "Consumption", "Flame of Invasion", "Restore Chaos", "Void Inferno" },
		MinGoldDrop = 40,
		MaxGoldDrop = 50,
		Drops = {
			["Abyssal Mass"] = 6,
			["Spell Scroll: Void Inferno"] = 3,
			["Shard of Void"] = 3
		}
	},
	["Rock Golem Alpha"] = {
		MinHealth = 30,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		BlockChance = 0.25,
		IdleAnim = "RG2Idle",
		HitAnim = "RG2Hit",
		BlockAnim = "RG2Block",
		Modifiers = { "Construct", "Mini-Boss" },
		Initiative = 3,
		XOffset = 8,
		YOffset = -1.604,
		EnergyGainChance = 0.25,
		Abilities = { "Thunderclap", "Unstoppable Force", "Ground Slam" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Golem Heart"] = 10
		}
	},
	["Rock Golem Hatchling"] = {
		MinHealth = 22,
		MaxHealth = 22,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.05,
		IdleAnim = "RG1Idle",
		HitAnim = "RG1Hit",
		DodgeAnim = "RG1Dodge",
		Modifiers = { "Construct" },
		Initiative = 3,
		XOffset = 2.4,
		YOffset = -0.855,
		EnergyGainChance = 0,
		Abilities = { "Gemstone Pierce", "Cavernous Crusher" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Rock Fragments"] = 10
		}
	},
	["Bone Drake"] = {
		MinHealth = 222,
		MaxHealth = 222,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		BlockChance = 0.25,
		IdleAnim = "BoneDrakeIdle",
		HitAnim = "BoneDrakeHit",
		BlockAnim = "BoneDrakeBlock",
		ProjectilePart = "ProjectilePart",
		Modifiers = { "Skeletal", "Boss" },
		ResistFear = true,
		Initiative = 15,
		PreferredSpawn = 3,
		XOffset = 20,
		YOffset = -23.5,
		Rotation = { 0, 0, 0 },
		UseFirst = "Dreadlord\'s Call",
		Abilities = { "Bone Crunch", "Beckon The Beyond", "Neceneris", "Abyssal Breath", "Chained Wrath" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			Nothing = 1
		},
		TurnStartFunction = function(p1) --[[ Line: 4920 ]]
			if p1.Reference:GetAttribute("UseNecregenesis") then
				p1.Reference:SetAttribute("UseNecregenesis", nil)
				p1.Reference:SetAttribute("NecregenesisCounter", nil)
			end
			p1.Reference:SetAttribute("NecregenesisCounter", (p1.Reference:GetAttribute("NecregenesisCounter") or 0) + 1)
			if p1.Reference:GetAttribute("NecregenesisCounter") >= 6 then
				p1.Reference:SetAttribute("UseNecregenesis", true)
			end
		end
	},
	["Ancient Bone Drake"] = {
		MinHealth = 180,
		MaxHealth = 180,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		BlockChance = 0.25,
		IdleAnim = "AncientBoneDrakeIdle",
		HitAnim = "AncientBoneDrakeHit",
		BlockAnim = "AncientBoneDrakeBlock",
		Modifiers = { "Skeletal", "Boss" },
		ResistFear = true,
		Initiative = 50,
		PreferredSpawn = 3,
		XOffset = 12,
		YOffset = -31.35,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0,
		UseFirst = "Ghastly Presence",
		Abilities = { "Bone Chomp", "Ghastly Presence", "Call of the Boneyard", "Necrosis", "Doomed Breath", "Bone Tail Swipe" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			Nothing = 1
		},
		TurnStartFunction = function(p1) --[[ Line: 4956 ]]
			if p1.Reference:GetAttribute("UseCloudKill") then
				p1.Reference:SetAttribute("UseCloudKill", nil)
				p1.Reference:SetAttribute("CloudKillCounter", nil)
			end
			p1.Reference:SetAttribute("CloudKillCounter", (p1.Reference:GetAttribute("CloudKillCounter") or 0) + 1)
			if p1.Reference:GetAttribute("CloudKillCounter") >= 7 then
				p1.Reference:SetAttribute("UseCloudKill", true)
			end
		end
	},
	Baby = {
		MinHealth = 169,
		MaxHealth = 169,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.2,
		IdleAnim = "BabyIdle",
		HitAnim = "BabyHit",
		DodgeAnim = "BabyDodge",
		Modifiers = { "OuterBeing", "Boss" },
		ResistFear = true,
		XOffset = 3,
		YOffset = -0.3,
		Initiative = 3,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0.25,
		Abilities = { "True Incineration", "Chaos Beam", "First Flash Obliteration Beam", "Chaos Cut End", "Gather Corrupt Energy" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Chaotic Soul"] = 10
		}
	},
	["True Baby"] = {
		MinHealth = 500,
		MaxHealth = 500,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.2,
		IdleAnim = "BabyIdle",
		HitAnim = "BabyHit",
		DodgeAnim = "BabyDodge",
		Modifiers = { "OuterBeing" },
		ResistFear = true,
		XOffset = 3,
		Initiative = 3,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0.33,
		Abilities = { "Pyre of Finality", "Evicting Chaos Smite", "Final Flash Condensed Energy Exhibition", "Megidolaon", "Gather the Truth" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Chaotic Soul"] = 10
		}
	},
	["Mr. Bones"] = {
		MinHealth = 200,
		MaxHealth = 200,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		IdleAnim = "Mr.BonesIdle",
		HitAnim = "Mr.BonesHit",
		Modifiers = { "OuterBeing", "Boss" },
		ModelHeight = 19,
		ResistFear = true,
		PreferredSpawn = 2,
		XOffset = 3,
		YOffset = -1.785,
		Initiative = 3,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0.25,
		Abilities = { "Bone Shark", "Wild Ride", "Curse of Mr. Bones", "Devouring Sand", "Instill Fear" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Decrepit Soul"] = 10
		}
	},
	["Voidborn Prisoner"] = {
		MinHealth = 300,
		MaxHealth = 300,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		IdleAnim = "Mr.BonesIdle",
		HitAnim = "Mr.BonesHit",
		Modifiers = { "Void" },
		PreferredSpawn = 2,
		XOffset = 3,
		YOffset = -4.05,
		Initiative = 3,
		Rotation = { 0, -90, 0 },
		EnergyGainChance = 0.25,
		Abilities = { "Void Shark", "Everlasting Ride", "Curse of the Void", "Devouring Darkness", "Fear the Void" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Decrepit Soul"] = 10
		}
	},
	["Undead Hulk Valus"] = {
		MinHealth = 175,
		MaxHealth = 175,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		BlockChance = 0.2,
		IdleAnim = "UHIdle",
		BlockAnim = "UHBlock",
		HitAnim = "UHHit",
		Modifiers = { "Skeletal" },
		ResistFear = true,
		PreferredSpawn = 2,
		XOffset = 3,
		YOffset = -2.785,
		Initiative = 3,
		Rotation = { 0, 90, 0 },
		EnergyGainChance = 0.25,
		Abilities = { "Goring Charge", "Overpower", "Lifeless Cleave", "Shambling Blow" },
		MinGoldDrop = 30,
		MaxGoldDrop = 30,
		Drops = {
			["Lost Soul"] = 10
		}
	},
	["His Champion"] = {
		MinHealth = 200,
		MaxHealth = 200,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		BlockChance = 0.33,
		Rotation = { 0, 90, 0 },
		IdleAnim = "HCIdle",
		HitAnim = "HCHit",
		BlockAnim = "HCBlock",
		Modifiers = { "OuterBeing" },
		XOffset = 5,
		Initiative = 3,
		EnergyGainChance = 0.25,
		Abilities = { "Cleaving Blood Rend", "Gore Assault", "Spread His Will", "Sling Gore" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Emblem of Chaos"] = 10
		}
	},
	["Flesh Warder"] = {
		MinHealth = 34,
		MaxHealth = 50,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		Level = 0,
		IdleAnim = "FleshWarderIdle",
		HitAnim = "FleshWarderHit",
		Modifiers = { "Flesh", "Support" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Vicera Pump", "Call The Mound", "Meal Tracker" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {}
	},
	["Flesh Spider"] = {
		MinHealth = 12,
		MaxHealth = 14,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		Level = 0,
		IdleAnim = "FSIdle",
		HitAnim = "FSHit",
		DodgeAnim = "FSDodge",
		Modifiers = { "Flesh", "Ranged" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Clot Spit" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {}
	},
	["Red Samurai"] = {
		MinHealth = 120,
		MaxHealth = 120,
		MaxEnergy = 6,
		EXPScaling = 0.75,
		Level = 0,
		IdleAnim = "RedSamuraiIdle",
		HitAnim = "RedSamuraiHit",
		DodgeAnim = "RedSamuraiDodge",
		Modifiers = { "Flesh" },
		Initiative = 1,
		XOffset = 3,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0.44,
		Abilities = { "Crimson Sweep", "Crimson Swing", "Blood Rush" },
		MinGoldDrop = 5,
		MaxGoldDrop = 8,
		Drops = {}
	},
	["P.E.B.B.L.E"] = {
		MinHealth = 13,
		MaxHealth = 18,
		MaxEnergy = 4,
		EXPScaling = 0.9,
		BlockChance = 0,
		Level = 0,
		IdleAnim = "PebbleIdle",
		HitAnim = "PebbleHit",
		DodgeAnim = "PebbleDodge",
		Modifiers = { "Construct" },
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0.4,
		Abilities = { "Metallic Bash", "Destruction Beam", "Electro Blast" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			["Metal Scrap"] = 10
		}
	},
	["Weird Rat"] = {
		MinHealth = 10000,
		MaxHealth = 10000,
		MaxEnergy = 10,
		EXPScaling = 0,
		BlockChance = 0,
		DodgeChance = 0,
		Level = 0,
		IdleAnim = "RatIdle",
		HitAnim = "RatHit",
		DodgeAnim = "RatDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 0, 0 },
		EnergyGainChance = 0,
		Abilities = { "Gnaw" },
		MinGoldDrop = 100,
		MaxGoldDrop = 100,
		Drops = {
			Nothing = 1
		}
	},
	["Pebble?"] = {
		MinHealth = 20,
		MaxHealth = 20,
		MaxEnergy = 6,
		EXPScaling = 0.9,
		BlockChance = 0,
		DodgeChance = 0,
		CritChance = 0.1,
		CritDamage = 1.35,
		Level = 0,
		IdleAnim = "PebbleIdle",
		HitAnim = "PebbleHit",
		DodgeAnim = "PebbleDodge",
		Modifiers = {},
		Initiative = 1,
		XOffset = 4,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Boulder Bump", "Stony Stare", "Rubble Rouse", "Tectonic Tackle" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SummonScaling = {
			Health = {
				STR = 0.01,
				DEX = 0.01,
				CON = 0.02,
				INT = 0.01,
				FTH = 0.01,
				LCK = 0.01
			},
			Abilities = {
				["Boulder Bump"] = {
					STR = 0.025,
					DEX = 0.025,
					INT = 0.025,
					FTH = 0.025,
					LCK = 0.025
				},
				["Stony Stare"] = {
					CasterLevel = 3
				},
				["Rubble Rouse"] = {
					STR = 0.06,
					DEX = 0.06,
					INT = 0.06,
					FTH = 0.06,
					LCK = 0.06,
					CasterLevel = 5
				},
				["Tectonic Tackle"] = {
					STR = 0.01,
					DEX = 0.01,
					CON = 0.02,
					INT = 0.01,
					FTH = 0.01,
					LCK = 0.01,
					CasterLevel = 10
				}
			}
		}
	},
	["Ohio Final Boss"] = {
		MinHealth = 180,
		MaxHealth = 180,
		MaxEnergy = 6,
		EXPScaling = 0,
		BlockChance = 0.1,
		DodgeChance = 0.05,
		CritChance = 0.2,
		IdleAnim = "FBIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = { "Meta" },
		DeathAnim = "KaizerDeath",
		DeathIdleAnim = "KaizerDeathIdle",
		Initiative = 999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 0.25,
		UseFirst = "Warm Fuzz",
		Abilities = { "Warm Fuzz", "Cutting Room", "Feel the Noise", "Primordial Wind Torrent", "The First Pyre", "Primal Thunder" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5301 | Upvalues: Players (copy) ]]
			p1:SetAttribute("Immaterial_Power", 1)
			local count = 0
			for k, v in pairs(Players:GetChildren()) do
				if v:GetAttribute("isAlive") then
					count = count + 1
				end
			end
			p1:SetAttribute("Player_Scaling", count)
		end
	},
	["Ohio Final Boss Over Heaven"] = {
		MinHealth = 222,
		MaxHealth = 222,
		MaxEnergy = 6,
		EXPScaling = 0,
		BlockChance = 0.1,
		DodgeChance = 0.05,
		CritChance = 0.2,
		IdleAnim = "FBIdle",
		HitAnim = "FBHit",
		DodgeAnim = "FBDodge",
		BlockAnim = "FBBlock",
		Modifiers = { "Meta" },
		Initiative = 999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Warm Fuzz",
		Abilities = {
			"Warm Fuzz",
			"Cutting Room",
			"Feel the Noise",
			"Beginning of Chaos",
			"Primordial Wind Torrent",
			"The First Pyre",
			"Primal Thunder",
			"Heavenly Flash",
			"Frostdrake\'s Epitaph"
		},
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5340 | Upvalues: Players (copy) ]]
			p1:SetAttribute("Ascended_Power_Over_Heaven", 1)
			local count = 0
			for k, v in pairs(Players:GetChildren()) do
				if v:GetAttribute("isAlive") then
					count = count + 1
				end
			end
			p1:SetAttribute("Player_Scaling", count)
		end
	},
	["Concept of Reflex"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 6,
		EXPScaling = 0,
		DodgeChance = 0.2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Reflex",
		Abilities = { "Sight", "Erase Self: Reflex" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5377 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Offense"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 5,
		EXPScaling = 0,
		BlockChance = 0.2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Offense",
		Abilities = { "Attack", "Erase Self: Offense" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5406 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Lethality"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 5,
		EXPScaling = 0,
		CritChance = 1.2,
		CritDamage = 2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Lethality",
		Abilities = { "Precision", "Erase Self: Lethality" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5436 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Vitality"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Vitality",
		Abilities = { "Rejuvenate", "Erase Self: Vitality" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5464 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Motion"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Motion",
		Abilities = { "Stop", "Erase Self: Motion" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5492 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Essence"] = {
		MinHealth = 35,
		MaxHealth = 35,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erase Self: Essence",
		Abilities = { "Inspire", "Erase Self: Essence" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5520 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["Concept of Victory"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erasure",
		Abilities = { "Final Stand", "Erasure" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5548 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end,
		DeathFunction = function() --[[ Line: 5552 ]]
			for i, v in ipairs(game.Workspace.Enemies:GetChildren()) do
				if v:GetAttribute("Immaterial_Power") then
					v:SetAttribute("Immaterial_Power", nil)
				end
				if v:GetAttribute("Ascended_Power_Over_Heaven") then
					v:SetAttribute("Ascended_Power_Over_Heaven", nil)
				end
			end
		end
	},
	["True Concept of Reflex"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		DodgeChance = 0.2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Reflex",
		Abilities = { "Sight", "True Erasure of Self: Reflex" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5584 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Offense"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		BlockChance = 0.2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Offense",
		Abilities = { "Attack", "True Erasure of Self: Offense" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5613 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Lethality"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		CritChance = 1.2,
		CritDamage = 2,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Lethality",
		Abilities = { "Precision", "True Erasure of Self: Lethality" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5643 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Vitality"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Vitality",
		Abilities = { "Rejuvenate", "True Erasure of Self: Vitality" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5671 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Motion"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Motion",
		Abilities = { "Stop", "True Erasure of Self: Motion" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5699 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Essence"] = {
		MinHealth = 50,
		MaxHealth = 50,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "True Erasure of Self: Essence",
		Abilities = { "Inspire", "True Erasure of Self: Essence" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5727 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end
	},
	["True Concept of Victory"] = {
		MinHealth = 125,
		MaxHealth = 125,
		MaxEnergy = 5,
		EXPScaling = 0,
		IdleAnim = "PeonIdle",
		HitAnim = "FBHit",
		DodgeAnim = "Dodge",
		BlockAnim = "FBBlock",
		Modifiers = {},
		Initiative = 9999,
		XOffset = 5,
		YOffset = -0.4,
		Rotation = { 0, 90, 0 },
		PreferredSpawn = 2,
		EnergyGainChance = 1,
		UseFirst = "Erasure",
		Abilities = { "Final Stand", "Erasure" },
		MinGoldDrop = 0,
		MaxGoldDrop = 0,
		Drops = {
			Nothing = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5755 ]]
			p1:SetAttribute("Being_of_Concept", 1)
			p1:SetAttribute("Birth_of_a_Concept", 1)
		end,
		DeathFunction = function() --[[ Line: 5759 ]]
			for i, v in ipairs(game.Workspace.Enemies:GetChildren()) do
				if v:GetAttribute("Immaterial_Power") then
					v:SetAttribute("Immaterial_Power", nil)
				end
				if v:GetAttribute("Ascended_Power_Over_Heaven") then
					v:SetAttribute("Ascended_Power_Over_Heaven", nil)
				end
			end
		end
	},
	["Triple T"] = {
		MinHealth = 222,
		MaxHealth = 222,
		MaxEnergy = 6,
		EXPScaling = 0.7,
		DodgeChance = 0.05,
		IdleAnim = "TungIdle",
		HitAnim = "TungHit",
		DodgeAnim = "TungDodge",
		ResistFear = true,
		Modifiers = { "Mini-Boss" },
		Initiative = 6,
		XOffset = 3,
		YOffset = -1.105,
		Rotation = { 0, 180, 0 },
		EnergyGainChance = 0,
		Abilities = { "Slap Belly", "Homerun", "Brainrot Beatdown", "Handle It" },
		MinGoldDrop = 50,
		MaxGoldDrop = 50,
		Drops = {
			["Brainrotted Soul"] = 10
		},
		SpawnFunction = function(p1) --[[ Line: 5789 ]]
			p1:SetAttribute("Handles_It_Himself", 1)
		end
	},
	Golem = {
		MinHealth = 120,
		MaxHealth = 120,
		MaxEnergy = 6,
		EXPScaling = 1.3,
		DodgeChance = 0.15,
		BlockChance = 0.4,
		IdleAnim = "OGolemIdle",
		HitAnim = "OGolemHit",
		DodgeAnim = "OGolemDodge",
		BlockAnim = "OGolemBlock",
		Modifiers = { "Mini-Boss", "Construct" },
		Initiative = 3,
		XOffset = 8,
		YOffset = -8.3,
		ModelHeight = 17.5,
		EnergyGainChance = 0,
		Abilities = { "Clobber", "Pulverize", "Collapse", "Seismic Clap" },
		MinGoldDrop = 10,
		MaxGoldDrop = 15,
		Drops = {
			["Rock Fragments"] = 10
		}
	},
	["Rat Monarch"] = {
		MinHealth = 150,
		MaxHealth = 150,
		MaxEnergy = 6,
		EXPScaling = 0.55,
		DodgeChance = 0.1,
		IdleAnim = "RatMonarchIdle",
		HitAnim = "RatMonarchHit",
		DodgeAnim = "RatMonarchDodge",
		Modifiers = { "Mini-Boss" },
		Rotation = { 0, 180, 0 },
		Initiative = 1,
		XOffset = 16,
		YOffset = -9.63,
		EnergyGainChance = 0,
		Abilities = { "Plagued Smite", "Ratkin Radiance", "Imbue Plague", "Plagued Storm", "Call The Horde" },
		MinGoldDrop = 70,
		MaxGoldDrop = 90,
		Drops = {
			["Cheesy Soul"] = 1
		}
	},
	Michael = {},
	Raphael = {},
	Gabriel = {},
	Uriel = {}
}
