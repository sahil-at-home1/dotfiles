" =============================================================================
" Filename: autoload/lightline/colorscheme/onehalflight.vim
" lightline theme for onehalflight color scheme
" =============================================================================

let s:mono0 = [ '#383a42', 237 ] "black
let s:mono1 = [ '#f0f0f0', 255 ] "cursorline
let s:mono2 = [ '#5d677a', 243 ] "grey
let s:mono3 = [ '#fafafa', 231 ] "white

let s:yellow = [ '#e5c07b', 180 ]
let s:red = [ '#e06c75', 168 ]
let s:magenta = [ '#c678dd', 176 ]
let s:blue = [ '#61afef', 75 ]
let s:cyan = [ '#56b6c2', 73 ]
let s:green = [ '#98c379', 114 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:mono0, s:green ], [ s:mono3, s:mono2 ] ]
let s:p.normal.middle = [ [ s:green, s:mono1 ] ]
let s:p.normal.right = [ [ s:mono0, s:green ], [ s:mono3, s:mono2 ] ]

let s:p.normal.error = [ [ s:mono0, s:red ] ]
let s:p.normal.warning = [ [ s:mono0, s:yellow ] ]

let s:p.inactive.left =  [ [ s:mono3, s:mono2 ], [ s:mono3, s:mono2 ] ]
let s:p.inactive.middle = [ [ s:mono3, s:mono1 ] ]
let s:p.inactive.right = [ [ s:mono0, s:mono3 ], [ s:mono3, s:mono2 ] ]

let s:p.insert.left = [ [ s:mono0, s:blue ], [ s:mono3, s:mono2 ] ]
let s:p.insert.middle = [ [ s:blue, s:mono1 ] ]
let s:p.insert.right = [ [ s:mono0, s:blue ], [ s:mono3, s:mono2 ] ]

let s:p.replace.left = [ [ s:mono0, s:red ], [ s:mono3, s:mono2 ] ]
let s:p.replace.middle = [ [ s:red, s:mono1 ] ]
let s:p.replace.right = [ [ s:mono0, s:red ], [ s:mono3, s:mono2 ] ]

let s:p.visual.left = [ [ s:mono0, s:yellow ], [ s:mono3, s:mono2 ] ]
let s:p.visual.middle = [ [ s:yellow, s:mono1 ] ]
let s:p.visual.right = [ [ s:mono0, s:yellow ], [ s:mono3, s:mono2 ] ]

let s:p.tabline.left = [ [ s:mono2, s:mono1] ]
let s:p.tabline.tabsel = [ [ s:mono3, s:mono2 ] ]
let s:p.tabline.middle = [ [ s:mono2, s:mono1] ]
let s:p.tabline.right = [ [ s:mono0, s:mono3 ] ]

let g:lightline#colorscheme#onehalflight#palette = lightline#colorscheme#flatten(s:p)
