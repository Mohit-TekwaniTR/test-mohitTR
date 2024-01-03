# Use the official GitHub Codespaces base image
FROM ghcr.io/github/vscode-dev-containers/universal:latest

# Use zsh as the default shell
ENV SHELL=/usr/bin/zsh

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog

# Use the Node.js binary from the mounted path
RUN ln -s "$(command -v node)" /usr/local/bin/node
