import XMonad
import XMonad.Util.Paste

myModMask  = mod4Mask

myWorkspaces = ["term", "web", "crap"] ++ map show [4..9]

myBar = "xmobar"

myConfig = defaultConfig {
        modMask     = myModMask
    ,   workspaces  = myWorkspaces
    ,   borderWidth = 0
    ,   terminal    = "terminator"
    }

main = xmonad myConfig 
