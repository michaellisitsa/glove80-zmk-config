# We have removed the check on pkg?
# { pkgs ?  import <nixpkgs> {}
{ firmware ? import ../src {}
# semi colon separated paths to modules
, extraModules ? []
}:

let
  config = ./.;

  glove80_left = firmware.zmk.override {
    board = "glove80_lh";
    keymap = "${config}/glove80.keymap";
    kconfig = "${config}/glove80.conf";
    extraModules = extraModules;
  };
  glove80_right = firmware.zmk.override {
    board = "glove80_rh";
    keymap = "${config}/glove80.keymap";
    kconfig = "${config}/glove80.conf";
    extraModules = extraModules;
  };

in firmware.combine_uf2 glove80_left glove80_right
