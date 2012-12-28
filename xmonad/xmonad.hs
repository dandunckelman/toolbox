import XMonad
import XMonad.Layout
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.NoBorders
import XMonad.Operations
import XMonad.Actions.DwmPromote
import XMonad.Actions.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.UrgencyHook
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Prompt
import XMonad.Prompt.Man
import XMonad.Prompt.Ssh
import XMonad.Prompt.Window
import XMonad.Prompt.Shell
import XMonad.Util.Cursor
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Config.Gnome

import qualified XMonad.StackSet as W
import qualified Data.Map as M
import Graphics.X11
import Graphics.X11.Xlib
import Data.Bits ((.|.))
import Data.Ratio ((%))
import Data.List
import System.IO

myWorkSpaces    = ["Web", "Terminal", "IDE", "IM", "Places", "FTP", "Chef"]

main = xmonad
    gnomeConfig {
          terminal          = "gnome-terminal"
        , manageHook        = manageHook defaultConfig <+> myManageHook
        , layoutHook        = smartBorders (layoutHook gnomeConfig)
        , startupHook       = setDefaultCursor xC_pirate
        , focusFollowsMouse = False
        , modMask           = mod4Mask
        , logHook           = ewmhDesktopsLogHook >> setWMName "LG3D"
        , handleEventHook   = ewmhDesktopsEventHook
        , borderWidth       = 1
        , workspaces        = myWorkSpaces
        , keys = \c -> myKeys c `M.union` keys defaultConfig c
    }
    where
        myManageHook = composeAll . concat $
            [ [manageDocks]
            , [ (className  =? "." <&&> resource =? ".") --> doFloat ]
            , [ (className  =? "Nautilus" <&&> resource =? "nautilus") --> doFloat ]
            , [ (className  =? "Thunderbird-bin" <&&> resource =? "Password Required") --> doFloat ]
            , [ (className  =? "Do" <&&> resource =? "Do") --> doFloat ]
            , [ (className  =? "Npviewer.bin" <&&> resource =? "npviewer.bin") --> doFloat ]
            , [ (className  =? "Nm-connection-editor" <&&> resource =? "nm-connection-editor") --> doFloat ]
            , [ (className  =? "Totem-plugin-viefwer" <&&> resource =? "totem-plugin-viewer") --> doFloat ]
            , [ (className  =? "File-roller" <&&> resource =? "file-roller") --> doFloat ]
            , [ resource    =? r --> doIgnore              | r <- myIgnores]
            , [ fmap ( c `isInfixOf`) className --> doFloat | c <- myMatchAnywhereFloatsC ]
            , [ fmap ( c `isInfixOf`) title     --> doFloat | c <- myMatchAnywhereFloatsT ]
            ]

        -- apps
        myIgnores     = ["Do"]

        myMatchAnywhereFloatsC = []
        myMatchAnywhereFloatsT = ["VLC"]

        -- key bindings
        myKeys (XConfig {modMask = modm}) = M.fromList $
            [ ((modm, xK_b), sendMessage ToggleStruts)
            , ((modm, xK_z), withFocused toggleBorder)
            ]
