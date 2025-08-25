{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  packages = [
    pkgs.git
    pkgs.cmake
    pkgs.ncurses
    pkgs.pkg-config
    pkgs.openssl
    pkgs.libcxx
    pkgs.libxml2
    pkgs.libxslt
    pkgs.libyaml
    pkgs.readline
    pkgs.sqlite
    pkgs.zlib
    pkgs.zstd
    pkgs.coreutils
    pkgs.libpq
  ];

  services.postgres = {
    enable = true;
    #extensions = extensions: [ extensions.postgis ];
    #initialDatabases = [{ name = "mydb"; }];
    #initialScript = ''
    #  CREATE EXTENSION IF NOT EXISTS postgis;
    #'';
  };

  languages.ruby.enable = true;
  languages.ruby.package = pkgs.ruby_3_4;
}
