{ pkgs, ... }: {
  home.packages = with pkgs; [ jq ripgrep fd curl httpie ];

}
