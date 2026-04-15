{ inputs, ... }:

let
  pkgs = import inputs.nixpkgs {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in
(pkgs.buildFHSEnv {
  name = "java-devshell";

  targetPkgs = p: with p; [
    just
    jdk
    gradle
    kotlin
    jetbrains.idea
    semgrep
  ];

  profile = ''
    export JAVA_HOME="${pkgs.jdk.home}"
  '';
}).env
