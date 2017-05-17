import XMonad

myModMask  = mod4Mask

myWorkspaces = ["term", "web", "crap"] ++ map show [4..9]

myBar = "xmobar"

main = xmonad defaults

defaults = defaultConfig {
       modMask = myModMask
    ,  workspaces = myWorkspaces
    }
