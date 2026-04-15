{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "SquishyDaniel";
    userEmail = "103461271+SquishyDaniel@users.noreply.github.com";
    lfs.enable = true;
    extraConfig = {
      push = { autoSetupRemote = true; };
      core = { editor = "re.sonny.Commit"; };
    };
  };

  home.packages = [ pkgs.gh ];
}
