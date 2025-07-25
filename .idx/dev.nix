{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    git
    curl
    wget
    nodejs_20
    python311
    htop
    docker
    docker-compose
    gnupg
    openssh
    zsh
    unzip
    zip
    sudo
  ];

  shellHook = ''
    echo "✅ Môi trường đã sẵn sàng. Docker, Node.js, Python, sudo, htop đã cài."
  '';
}
