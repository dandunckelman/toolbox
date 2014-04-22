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

myWorkSpaces    = ["Terminals", "Web", "Terminals2", "Chat", "Terminals3", "MySQL", "Terminals4", "FileBrowser", "Terminals5"]

main = xmonad
    gnomeConfig {
          terminal          = "gnome-terminal"
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
        -- key bindings
        myKeys (XConfig {modMask = modm}) = M.fromList $
            [ ((modm, xK_b), sendMessage ToggleStruts)
            , ((modm, xK_z), withFocused toggleBorder)
            ]
