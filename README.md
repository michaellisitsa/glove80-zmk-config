# MoErgo Glove80 Custom Configuration for ZMK

## Resources
- The [official MoErgo Glove80 Support](https://moergo.com/glove80-support) web site. Glove80 documentation and other technical resources.
- The [official ZMK Documentation](https://zmk.dev/docs) web site. Find the answers to many of your questions about ZMK Firmware.
- The [official Glove80 ZMK Distribution](https://github.com/moergo-sc/zmk). Repositiory for ZMK firmware customized for Glove80. 
 
## Instructions
1. Create your own repository using this repository as a template ([instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)) and check it out on your local computer.
2. Edit the keymap file(s) to suit your needs
3. Commit and push your changes to your personal repo. Upon pushing it, GitHub Actions will start building a new version of your firmware with the updated keymap.

## Firmware Files
To locate your firmware files and reflash your Glove80...
1. log into GitHub and navigate to your personal config repository you just uploaded your keymap changes to.
2. Click "Actions" in the main navigation, and in the left navigation click the "Build" link.
3. Select the desired workflow run in the centre area of the page (based on date and time of the build you wish to use). You can also start a new build from this page by clicking the "Run workflow" button.
4. After clicking the desired workflow run, you should be presented with a section at the bottom of the page called "Artifacts". This section contains the results of your build, in a file called "glove80.uf2"
5. Download the glove80.uf2
6. Flash the firmware to Glove80 according to the user documentation on the official Glove80 Glove80 Support website (linked above)

Your keyboard is now ready to use.

# Philosophy

## Home row mods

- Follow urobs timeless home row mods see https://github.com/urob/zmk-config?tab=readme-ov-file#timeless-homerow-mods
- Use a separate thumb button for sticky shift and caps word

For future compatibility with non-zmk firmware, see used features and their equivalents
| ZMK                                                                                                                                              | QMK                                                                                                                                          | Kanata                | Behaviour                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|-------------------------------------------------------------------------------------------------|
| [Positional Hold Tap](https://zmk.dev/docs/keymaps/behaviors/hold-tap#positional-hold-tap-and-hold-trigger-key-positions)                        | [Bilateral Combinations]( https://github.com/manna-harbour/qmk_firmware/blob/bilateral-combinations/docs/tap_hold.md#bilateral-combinations) | tap-hold-release-keys | Hold behaviour only on cross-hand key combinations                                              |
| [supporting feature Hold-trigger-on-release](https://zmk.dev/docs/keymaps/behaviors/hold-tap#positional-hold-tap-and-hold-trigger-key-positions) | [supporting feature Chordal Hold](https://github.com/qmk/qmk_firmware/blob/master/docs/tap_hold.md#chordal-hold)                             |                       | Allow multiple modifiers to be held on home row, delaying decision to tap on next same-side key |
| Require prior idle ms                                                                                                                            | [Flow Tap](https://github.com/qmk/qmk_firmware/blob/develop/docs/tap_hold.md#flow-tap)                                                       |                       | Register tap during fast typing.                                                                |
| Interrupt Flavor: Balanced                                                                                                                       | Tap or Hold Decision: [  Permissive Hold  ](https://github.com/qmk/qmk_firmware/blob/develop/docs/tap_hold.md#tap-or-hold-decision-modes)    | tap-hold-release      | Register hold if key tapped and released before modifier removed                                |
| Caps Word                                                                                                                                        | Caps Word                                                                                                                                    |                       | Whole word capitalisation                                                                       |
| Mod Morph                                                                                                                                        | Key Overrides                                                                                                                                |                       | Shift for next word                                                                             |
| Sticky Key                                                                                                                                       | One Shot Key                                                                                                                                 |                       | Shift for next character                                                                        |

## Symbol layer

Taken from [Glorious Engrammer](https://github.com/sunaku/glove80-keymaps/releases/tag/v42-rc5)

Moved characters from number and bottom row onto right hand pinky, to allow for future use of 3x6 keyboards

## Number layer

Standard keypad and vim navigation keys G, j, k taken from Glorious Engrammer

## Future - Navigation Layer

Use hjkl for up/down/left/right. Have alt, cmd, shift for moving/deleting words or lines on left home row.
