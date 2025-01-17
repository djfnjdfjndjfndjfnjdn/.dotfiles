{
  imports = [
    ./fish.nix
    ./starship.nix
  ];

  # Configure Foot
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";

        font = "SauceCodePro Nerd Font:size=10.8:style=SemiBold";
        font-bold = "SauceCodePro Nerd Font:size=10.8:style=Bold";
        font-italic = "SauceCodePro Nerd Font:size=10.8:style=Italic";
        font-bold-italic = "SauceCodePro Nerd Font:size=10.8:style=Bold Italic";
        line-height = "19";
        underline-offset = "19";

        pad = "6x0";
      };
      cursor = {
        color = "2e3440 d8dee9";
      };
      colors = {
        foreground = "d8dee9";
        background = "2e3440";

        regular0 = "3b4252";
        regular1 = "bf616a";
        regular2 = "a3be8c";
        regular3 = "ebcb8b";
        regular4 = "81a1c1";
        regular5 = "b48ead";
        regular6 = "88c0d0";
        regular7 = "e5e9f0";

        bright0 = "4c566a";
        bright1 = "bf616a";
        bright2 = "a3be8c";
        bright3 = "ebcb8b";
        bright4 = "81a1c1";
        bright5 = "b48ead";
        bright6 = "8fbcbb";
        bright7 = "eceff4";

        dim0 = "373e4d";
        dim1 = "94545d";
        dim2 = "809575";
        dim3 = "b29e75";
        dim4 = "68809a";
        dim5 = "8c738c";
        dim6 = "6d96a5";
        dim7 = "aeb3bb";
      };
    };
  };
}
