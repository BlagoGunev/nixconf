{ pkgs, config, ... }: 

{
  nix.settings = {
    substituters = [ "https://cache.nixos-cuda.org" ];
    trusted-public-keys = [ "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M=" ];
  };

  nixpkgs.config.packageOverrides = pkgs: {
    ollama-cuda = pkgs.ollama-cuda.override {
      cudaArches = [ "61" ];
    };
  };

  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
    loadModels = [
      "gemma3:4b"
      "qwen3-vl:2b"
    ];
    environmentVariables = {
      CUDA_VISIBLE_DEVICES = "0";
      OLLAMA_LLM_LIBRARY = "cuda";
    };
  };
}