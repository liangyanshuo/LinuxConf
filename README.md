# proxy

```
export http_proxy=http://127.0.0.1:20171 && export https_proxy=http://127.0.0.1:20171
```

# zsh

```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

mv LinuxConf/.zshrc ~/.zshrc
source ~/.zshrc
```

# vim
```
mv LinuxConf/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim ~/.vimrc # 执行 :PluginInstall

# Install YCM
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
```

# conda
```
# Install miniforge
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

mv LinuxConf/.condarc ~/.condarc
mamba env create -f environment.yml
```

# git

```
mv LinuxConf/.gitconfig ~/.gitconfig
```

# scp

```
# jump machine is required
scp -o ProxyJump=userB@ipB local_file userC@ipC:/path/to/destination
```

# Install cuda, pytorch

```
mamba install -c "nvidia/label/cuda-11.7.1" cuda # Using this command can install whole cuda，including nvcc
mamba install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.7 -c pytorch -c nvidia
```
