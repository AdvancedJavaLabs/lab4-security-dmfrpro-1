{
  description = "Nix devshell with Java, IntelliJ IDEA, Gradle, and Kotlin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    blueprint.url = "github:numtide/blueprint";
  };

  outputs = inputs: inputs.blueprint { inherit inputs; };
}
