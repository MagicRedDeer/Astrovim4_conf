-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

local ascii_art = {}

ascii_art.header_light_bg = {
  [[Q^  ``;~~::::::::;;;::::::::;;::::::~:::rLFZqDN#gOZt/?;::'-````-,:^\LcicLiiLL|||]],
  [[Q:    ,,,:::::::::::::::::::::~~,,,,~;?tqRWgRKZir;::;:;;;::::,,,'',,::;rrrr^;:::]],
  [[Qu    -,::::::::::::~~,,,:~,,'',,',;|SqRHKkF=;:;;;>|(JyaZZoSjFzc?r^;::,',,'''''']],
  [[QN    .=zz\r;;::~,,,,,,'',''''-.,:\tZUKkF|;::;^\zoKRNQQQQ#NDKKd&dqeyuL;,'`      ]],
  [[QQm   ;&##&HUetc\r:,''''-----`.':^vuuz\^:::;\}kg#QQBRNQQQ@@QQNBBB#N6J|~,'`      ]],
  [[QQN;  ~NNWWW#QQQNRKZir:'-```````-,::~''':;r/SH#QBk\::KQ@@gQQt,Le}Jvr::'-`       ]],
  [[QQQQ~  ^i=^^;;>\c(zt}z?~`````   ``-'',:;r|\(ZdRUL,   ,yUQQQOr//r,',~,,-``       ]],
  [[QQQQQ(  `;LtaqW#QQQQRe}|,  ` ````.,::;r||||\}aPvc(?:'-'?uoa}|;'`-'',,,.``       ]],
  [[QQQQQ#t  ~uOQ@@QHEq@@@@@QE^``-''',~:;;>|=r;r/zSSoS}z(i/\=^;:,''',~::,'-`        ]],
  [[HQQQQRz`'(N@@@Wz:,rgQQQ@@QNu~,,:::,,,,:r||?rr|//icL\||>r^;;::::::::,'-          ]],
  [[    z#K  ;O#Nevo\',=SdQ@QWOu^::;:,-`  ';|/\\||\icvi\|?>rr^^;;;;::,'-``          ]],
  [[      |     :iJeD6eeeZouJJv(|;;;;:,'``.-`.,::;r|\///\\\||=>r;;::,'.``           ]],
  [[      ,       ;i/?>r>?\cvvzz|;;;^;:'`        ``,:^r>=>>>r^;;:::,'--`            ]],
  [[      /        >|=r^>||\Lc(|;:;;;^;,-          `,:;;;;;;;;;;::,,'-``            ]],
}

ascii_art.header_dark_bg = {
  [[ :vi||;^^^^^^;;;;;;;;;;;^^^;;;;;;;^^^^;;:~'.``   `.,":;;^>*?|||*r;::~,~,~~~~~:::]],
  [[ ;uzi\rr^^;;;;;;;;;;;;;^^^^^^^^^^r^^^;:,``  ``.~:;;;;;;;;;;;^^rr>>rr;;;::::;;;;;]],
  [[ 'S2iL*r^;;;;;;;;;;^^^^^^^^rr>>rr>^;:'````-':;;;;;::,,''..'''',,:::;;^r>rr>>>>>>]],
  [[  \yu\*:,,::;;;^^^^^^rr>>r>>>=**r;:,.``-':;;;;::,'``       ```` ``.''~;r=?/Llv1t]],
  [[  -uSv;    ``.,,::;^>>>=***???*>^;,'',:;;^;;:,-     `              `,:^r=|\/cvzt]],
  [[   ;Fx^          ``.~:;>?|||||||*^;;^>=>^;:"'`   -_;^`      ,r~.,,,:;^>?|\\Llvzx]],
  [[    ^1(;~::;;;:_,,,,,,:^|||||\\\|?*>>r^;::_,.```~^\icr'`   `:"":r>r^^r*||\\Llvzz]],
  [[     ,vz|;~,'`      `.,:r\\|\|||?*^;;;:::::_,'-,,,:^=*>:''',:;>??=>r^r*?|\/Llvzz]],
  [[      ,v\^'`    `-`      -:??*=>>r^;;;::::;:",'''',,,~"_:;;^r>>>r^;;^>*|\Liicvzx]],
  [[`    `,|>,     ,;^:        '^r^^^^^^^^;:::::::""~,~:::::;;;;^^^;;;^r>*\/LLcc(vvz]],
  [[E6Xz, `\\;`  .,'_>^:'`    `':;;;;r*|\\>;:"_:::_~,,~_:::::;;;;;;;^r>?||\L/icl7vvz]],
  [[QQQQQt:mq9Z(;~,.``....'',,,,:;;;;;r=|?**|*^^;;:::"""::_:::::;;;^r>*||\\//LLil7vz]],
  [[QQQQQNre9OD&Of;~"::::::,,,,,:;;;;;;>|\LiL/\\\|?r;;::::::::;;;;^r>*?|\\\\/iiLLc7v]],
  [[QQQQQi"a$KdDgNu::::::::_~,,:;;;;;;;r?\iil(((lL\?r;;;;;;;;;;;;^^r>?||\\Licc(iivvv]],
}

ascii_art.footer_light_bg = {
  [[           ``-',,,-````'r/>f:`:1.``,~'~:;*r::'-'^r,'~|:'````                    ]],
  [[      `-',___~,:vL;'``````^L,,:'.--;:,.-''~^^,'--':,:}:_',;,'`                  ]],
  [[`.;r;:;|=;:''',,'LB6;-`----,;j?'\F:-``````''_,'''-`-,:/vmNQRZ\:-                ]],
  [[::::,',,,,:,:vX^`:w#m^~::;;^/|^:>l;:,''-`---..-```````,L6QQQBQm_`               ]],
  [[',''.';i](>~:Lohv;,;tqe(r;r\zojzv\/r;:~,'-````--```  `````':,:u?_,'-`           ]],
  [[~:;r:,,:;L};;(uv|\v]fi;~~,'',_~:?*?^^;;;:,',,,'.```` ```````-':::,-`-,-         ]],
  [[riKR>,=9RZ^..'_*PQQ@@@Qqt|;,``  ``',:;:_:;|r:'---```````-'''',,:::_''''`        ]],
  [[^|]i::aa;'`-;EQQQg##RDORQQgQRhaxL]Zoox=:,:_,.`'',,:,'''--```````-',~:;:_,-      ]],
  [['zKv,:;;,``>DQQQ?::cc:^:;N@@@QNKk9kq9Ky|;_'--'_;;;;:~'.':;rr?||v]SmoL^;yR]'`    ]],
  [[,:,,S]~~:;]QQQQd:.`'_'_;LgBQN&e}(ue6RNquS\,`'|v{c;:,,'?Se9h6muv*^rL]|;uQQ>''    ]],
  [[-'ry/::rcf(^,-.,^rr>r\]oj?~''''',;uR#OXSz;'`rRX(^~'''zDNQ@@@@@Q6?;:Sfrk@Z'````  ]],
  [[^m];^ed\::~,,'''''_;:,:^::.-':^:',\eqdeZx^,'~;;;vd&gQ@@@@@@@@@@QO];1gtZZ;'   `-`]],
  [[|?::f&z,,^r:,':F>;*LLvir;_,,,:::_:ruMXSov=;,,':^Luk6HBQ@@@@@@@@@Du|cNgOo,`    ``]],
  [['.:}NO>'vBz',:\\,,,~,_:|\'.''_1],,:tez?^;_,''''''',_~~~;;*/v]wDNqeSm&QQQ\-``````]],
  [[                                                                                ]],
}

ascii_art.footer_dark_bg = {
  [[BBBBBBB###Ng8HK6PkDgggM9x\z;aRerHgMhP9Pm2vtamODOFJhKXcoKRWNN##BBBBBBQQBBBBBQBBBB]],
  [[######NDO6mwmX6Z?\jONNgMgg]\$Eo9HDD2o6HDO9P]FkKHH9Z6a^om9$ShK&#BBBQQQQQBBBBBBBBB]],
  [[NHjJoeucvjZKOqk$K\ ,oDRHHDDky;v9L^oDWWM&gRKKwk9KKDgDko\=_` `:LoD#BBQBBQQBQQQQBBB]],
  [[ZeeZkKUU6EaPZ="{ge_ _FXZoyS]\c]Zz|ue$qODRDDDdHDRRRRWWWk\,     :mg#BBBBBBBBBQBBBB]],
  [[K$qOd9j|^?zXZ\;,*j6Sr':?tutL>:;>=L\JSePkKD8gM8DDRgNNNNNgNg9Zke;vwhKDWNBBBBBBQQQQ]],
  [[XZj1eUPZu\^Sy?;*cL*^;|jXX$KKkmPavvv]FjojoP9kU$qdRgNNNNggM8RRD9eoahDMD6DNBBBQBBQQ]],
  [[t|'`zkv'`:{HdOwv~      'rif$MN##N&9kmjomefcJeODDD&MM8M8RDO999hPeeaw9qqO&NBBBBBBB]],
  [[Fi^|Zm::fKRDy,   `  `-'`  ` `,:r\^:;:rve6owUdRKq$hePKKKDDRggNNg&D9kPZSZw6D#BBBBB]],
  [[9>'?PejSkR8z-   7ao||oFZy      ',',''';cSwKDDqwojjuaPKHOmuJJ(ci*^;:;\]y;`^ONBBBB]],
  [[$ZEP;^PPej^    .oHRKm9mo\`   `:^?;:,``';;/hMKc=^|uZP$Ov;:',,_;?vFx\^cj;  zO9#BBB]],
  [[HOx;\eZ1|;?FPDH6FxtzJ/^:;(POqqK9k2;` '~;>uq81`~?]X9OK>-        ,7oZ;;t, :OMR8g#B]],
  [[F_^yF:.LooXhUKKOOKwjZke]aeHD9e{eKk/:'.::r{PKXjjf*.``            '^yr`r::SON#BgDg]],
  [[c7ea;`>EUFJm6qZ^zyv\\*|1jwUkPaZewet;`~;:?v2P69eF\;,,.           -;i|``':EW###NN8]],
  [[Odm^ 'zq= >96Z/LPhhXPwei/9dOqmr^h$or:>7]SmkKKqq9K9PmPXPSjv\?^_- ':;:`   /DWgNNNg]],
  [[                                                                                ]],
}

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "tpope/vim-repeat",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    enabled = vim.fn.executable "git" == 1,
    event = "User AstroGitFile",
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      if vim.o.background == "dark" then
        opts.section.header.val = ascii_art.header_dark_bg
        opts.section.footer.val = ascii_art.footer_dark_bg
      else
        opts.section.header.val = ascii_art.header_light_bg
        opts.section.footer.val = ascii_art.footer_light_bg
      end
      -- local button, get_icon = require("astronvim.utils").alpha_button, require("astronvim.utils").get_icon
      -- opts.section.buttons.val[1] = button(" LDR n n", get_icon("FileNew", 2, true) .. "New File  ")
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  --
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
}
