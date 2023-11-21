local conf = {}

conf.saturn = {
	[[                                                   ]],
	[[                                              ___  ]],
	[[                                           ,o88888 ]],
	[[                                        ,o8888888' ]],
	[[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
	[[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
	[[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
	[[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
	[[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
	[[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
	[[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
	[[             . ..:.::o:ooooOoCoCCC"o:o             ]],
	[[             . ..:.::o:o:,cooooCo"oo:o:            ]],
	[[          `   . . ..:.:cocoooo"'o:o:::'            ]],
	[[          .`   . ..::ccccoc"'o:o:o:::'             ]],
	[[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
	[[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
	[[     ...:.'.:.::::"'    . . . . .'                 ]],
	[[    .. . ....:."' `   .  . . ''                    ]],
	[[  . . . ...."'                                     ]],
	[[  .. . ."'                                         ]],
	[[ .                                                 ]],
	[[                                                   ]],
}

conf.plastikman = {
	[[                                                    ]],
	[[                                                    ]],
	[[                 .0######0..                        ]],
	[[                0###########0.      .               ]],
	[[               o####" "######0.    (## m#o          ]],
	[[               ####(    ######0  ._ ##.##"nn        ]],
	[[               0####o   ###" ## (##o.######"        ]],
	[[       o00o.    0#####o,##. ,#"  "#######(          ]],
	[[     .0#####0.   0###########0     ########         ]],
	[[    .0#######0.   "0#########"  _.o###'"00"         ]],
	[[   .0###########o._ ""################       _      ]],
	[[   0####" "#########################0      .0#0n0   ]],
	[[   #####.   ""#####################"    _  0#####   ]],
	[[   0#####.     "###################._.o##o.#####"   ]],
	[[   "0#####..##mn ""#############################    ]],
	[[     "0#######""_    ""##################"#####"    ]],
	[[        ""####m###m      ""############"   ####     ]],
	[[       .########"""         .########"     "##"     ]],
	[[       ####"##"###o        (0######"        ""      ]],
	[[       "##".###,##     .o#o ""####.                 ]],
	[[            "##"      .0############.               ]],
	[[                    .n###############               ]],
	[[                                                    ]],
	[[                                                    ]],
}



return {
	'glepnir/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			-- config
			theme = 'doom',
			config = {
				header = conf.saturn, --your header
				center = {
					{
						icon = '  ',
						icon_hl = 'Title',
						desc = 'Find File           ',
						key = 'f',
						action = 'Telescope find_files'
					},
					{
						icon = '  ',
						desc = 'Find recent',
						--desc_hl = 'String',
						key = 'r',
						action = 'Telescope oldfiles'
					},
					{
						icon = '  ',
						desc = 'Config',
						key = 'c',
						action = 'cd ~/.config/nvim | Telescope find_files'
					}
				},
				footer = {} --your footer
			}
		}
	end,
	dependencies = { { 'nvim-tree/nvim-web-devicons' } }

}
