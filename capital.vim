" vim-airline companion theme of Paramount
" colorscheme

let s:black           = { "gui": "#262626", "cterm": "235" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_black     = { "gui": "#4E4E4E", "cterm": "239" }
let s:lighter_black   = { "gui": "#606060", "cterm": "241" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:lightest_gray   = { "gui": "#EEEEEE", "cterm": "255" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple     = { "gui": "#af5fd7", "cterm": "134" }
let s:light_purple    = { "gui": "#a790d5", "cterm": "140" }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

let g:airline#themes#paramount#palette = {}

let g:airline#themes#paramount#palette.accents = {
      \ 'red': [ '#ffffff' , '' , 231 , '' , '' ],
      \ }

let s:N1 = [ '#343434' , '#a0a0a0' , 237 , 248 ]
let s:N2 = [ '#343434' , '#b3b3b3' , 237 , 250 ]
let s:N3 = [ '#343434' , '#c7c7c7' , 237 , 252 ]
let g:airline#themes#paramount#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#paramount#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#b6d6fd' , 237 , 153 , '' ] ,
      \ }


let s:I1 = [ '#eeeeee' , '#10A778' , 255 , 36  ]
let s:I2 = [ '#343434' , '#a3a3a3' , 237 , 249 ]
let s:I3 = [ '#343434' , '#b0b0b0' , 237 , 250 ]
let g:airline#themes#paramount#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#paramount#palette.insert_modified = {
      \ 'airline_c': [ '#343434' , '#b6d6fd' , 237 , 153 , '' ] ,
      \ }
let g:airline#themes#paramount#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#10A778' , s:I1[2] , 36 , '' ] ,
      \ }


let g:airline#themes#paramount#palette.replace = copy(g:airline#themes#paramount#palette.insert)
let g:airline#themes#paramount#palette.replace.airline_a = [ s:I1[0] , '#E32791' , s:I1[2] , 162 , '' ]
let g:airline#themes#paramount#palette.replace.airline_z = [ s:I1[0] , '#E32791' , s:I1[2] , 162 , '' ]
let g:airline#themes#paramount#palette.replace_modified = g:airline#themes#paramount#palette.insert_modified

let s:V1 = [ '#a3a3a3' , '#af5fd7' , 249 , 134 ]   
let s:V2 = [ '#343434' , '#a3a3a3' , 237 , 249 ]
let s:V3 = [ '#343434' , '#b0b0b0' , 237 , 250 ]
let g:airline#themes#paramount#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#paramount#palette.visual_modified = {
      \ 'airline_c': [ '#343434' , '#b6d6fd' , 237 , 153 , '' ] ,
      \ }

let s:IA = [ '#777777' , '#c7c7c7' , 244 , 251 , '' ]
let g:airline#themes#paramount#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#paramount#palette.inactive_modified = {
      \ 'airline_c': [ '#b6d6fd' , '' , 153 , '' , '' ] ,
       \ }

let g:airline#themes#paramount#palette.tabline = {
      \ 'airline_tab':      ['#343434', '#b3b3b3',  237, 250, ''],
      \ 'airline_tabsel':   ['#ffffff', '#af5fd7',  231, 134 , ''],
      \ 'airline_tabtype':  ['#343434', '#a0a0a0',  237, 248, ''],
      \ 'airline_tabfill':  ['#343434', '#c7c7c7',  237, 251, ''],
      \ 'airline_tabmod':   ['#343434', '#b6d6fd',  237, 153, ''],
      \ }

let s:WI = [ '#343434', '#F3E430', 237, 221 ]
let g:airline#themes#paramount#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#paramount#palette.normal_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.insert.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.insert_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.visual.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.visual_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.replace.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

let g:airline#themes#paramount#palette.replace_modified.airline_warning =
    \ g:airline#themes#paramount#palette.normal.airline_warning

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#paramount#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#343434' , '#c7c7c7' , 237 , 251 , ''     ] ,
      \ [ '#343434' , '#b3b3b3' , 237 , 250 , ''     ] ,
      \ [ '#eeeeee' , '#b6d6fd' , 255 , 153 , ''     ] )
