curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
pyenv install 3.10.10
pyenv virtualenv 3.10.10 neovim
pyenv local neovim
pip install pynvim
pyenv local system
