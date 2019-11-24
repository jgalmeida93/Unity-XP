### [**ZSH**](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
```bash
sudo apt -y install zsh
```

### [**Oh-my-ZSH**](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

###  [**ZPlugin**](https://github.com/zdharma/zplugin)
 - [**Syntax highlighting**](https://github.com/zdharma/fast-syntax-highlighting)  
 - [**Auto suggestions**](https://github.com/zsh-users/zsh-autosuggestions)  
 - [**ZSH completions**](https://github.com/zsh-users/zsh-completions)  

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
echo zplugin light zdharma/fast-syntax-highlighting >> ~/.zshrc
echo zplugin light zsh-users/zsh-autosuggestions >> ~/.zshrc  
echo zplugin light zsh-users/zsh-completions >> ~/.zshrc
```

By [**Jonas Gabriel**](https://github.com/jgalmeida93)
