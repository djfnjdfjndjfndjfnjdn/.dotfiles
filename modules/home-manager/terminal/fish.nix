{
  # Configure Fish
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Disable fish greeting
      set fish_greeting

      # Set fish vi keybindings
      fish_vi_key_bindings
    '';
  };
}
