{
  # Enable X11 Windowing System
  services.xserver.enable = true;

  # Configure SDDM
  services.displayManager.sddm = {
    enable = true;
  };
}
