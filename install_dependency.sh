# install openssl 1.x on home folder
wget https://www.openssl.org/source/openssl-1.1.1t.tar.gz
tar xvzf openssl-1.1.1t.tar.gz
cd openssl-1.1.1t
./config --prefix=$HOME/.openssl --openssldir=$HOME/.openssl no-ssl2
make && make test
make install
cd ..

echo 'export PATH=$HOME/.openssl/bin:$PATH' >> $HOME/.zshrc
echo 'export LD_LIBRARY_PATH=$HOME/.openssl/lib' >> $HOME/.zshrc
echo 'export LDFLAGS="-L $HOME/.openssl/lib -Wl,-rpath,$HOME/.openssl/lib"' >> $HOME/.zshrc
echo 'export CPPFLAGS="-I$HOME/.openssl/include"' >> $HOME/.zshrc
echo 'export CONFIGURE_OPTS="-with-openssl=$HOME/.openssl"' >> $HOME/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm version
gvm install go1.20 -B
gvm use go1.20 --default

curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/

