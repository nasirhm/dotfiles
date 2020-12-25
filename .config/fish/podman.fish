alias podmancleancontainers "podman ps -a --no-trunc | grep 'Exit' | awk '{print \$1}' | xargs -L 1 -r podman rm"
alias podmancleanimages "podman images -a --no-trunc | grep none | awk '{print \$3}' | xargs -L 1 -r podman rmi"
alias podmanclean "podmancleancontainers; and podmancleanimages"
