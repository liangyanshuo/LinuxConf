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
vim ~/.vimrc # conduct :PluginInstall

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
mamba create -n env_name python=version
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

# gcc and gxx for deepspeed
```
mamba install -c conda-forge gcc_linux-64==version # the version should be consistent with gxx
mamba install -c conda-forge gxx_linux-64==version # the version should be consistent with gcc
ln -s {path}/miniforge3/envs/{envs_name}/bin/x86_64-conda_cos6-linux-gnu-gcc {path}/miniforge3/envs/{envs_name}/bin/gcc
ln -s {path}/miniforge3/envs/{envs_name}/bin/x86_64-conda_cos6-linux-gnu-g++ {path}/miniforge3/envs/{envs_name}/bin/g++
```

# using git clone to install datasets and models from hugging face
mamba install git git-lfs
git lfs install
git clone https://huggingface.co/google-t5/t5-small 
