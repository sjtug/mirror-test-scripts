FROM nixos/nix

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "true" ] ; then nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs ; else nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs ; fi
RUN nix-channel --update

CMD nix-env -i vim -i python3 --substituters https://mirror.sjtu.sjtu.edu.cn/nix-channels/store
