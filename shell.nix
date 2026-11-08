{ pkgs ? import <nixpkgs> {} }:

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      gcc
      cmake
      pkg-config
      binutils
      autoconf
      automake
      libtool
      pkg-config

      SDL2
      SDL2_image
      SDL2_mixer
      SDL2_ttf

      glew
      glm
      glfw3
      freetype
      mesa_glu
      freeglut
    ];

    shellHook = ''
    gcc --version
    cd src
    tree
    '';    
}
