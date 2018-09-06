FROM ubuntu:18.04

########################################
# System Stuff
########################################

# Better terminal support
ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Update and install
RUN apt-get update && apt-get install -y \
      htop \
      bash \
      curl \
      wget \
      git \
      silversearcher-ag \
      software-properties-common \
      python-dev \
      python-pip \
      python3-dev \
      python3-pip \
      ctags \
      shellcheck \
      netcat \
      ranger \
      ack-grep \
      sqlite3 \
      # For python crypto libraries
      libssl-dev \
      libffi-dev \
      locales \
      # For Youcompleteme
      cmake

# Generally a good idea to have these, extensions sometimes need them
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install Neovim
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update && apt-get install -y \
      neovim


########################################
# Python
########################################

# Install python linting and neovim plugin
RUN pip install neovim jedi flake8 flake8-docstrings flake8-isort flake8-quotes
RUN pip install pep8-naming pep257 isort
RUN pip3 install neovim jedi flake8 flake8-docstrings flake8-isort flake8-quotes
RUN pip3 install pep8-naming pep257 isort mypy ansible-lint flake8-bugbear
RUN pip3 install flake8-commas flake8-comprehensions


########################################
# Personalizations
########################################
# Neovim needs this so that <ctrl-h> can work
RUN infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > /tmp/$TERM.ti
RUN tic /tmp/$TERM.ti
# Command for the image
CMD ["/bin/bash"]
# Add nvim config. Put this last since it changes often
ADD init.vim /root/.config/nvim/init.vim
# Install neovim plugins
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN nvim -i NONE -c PlugInstall -c quitall > /dev/null 2>&1
