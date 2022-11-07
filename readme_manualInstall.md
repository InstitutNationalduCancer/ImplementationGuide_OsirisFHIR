## Prerequisites (for macOS)
### Java
Install [Java&trade; SE Runtime Environment](https://www.java.com/fr/).
> See _[Installing the JDK on macOS](https://docs.oracle.com/en/java/javase/15/install/installation-jdk-macos.html#GUID-F575EB4A-70D3-4AB4-A20E-DBE95171AB5F)_, if any issue

### Ruby
Install Ruby:

First install `chruby`and `ruby-install`:
```
brew install chruby ruby-install
```

Install the latest stable version of Ruby:
```
ruby-install ruby
````

Once it is done, configure your shell to automatically use `chruby`:
```
echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-3.1.2" >> ~/.zshrc # run 'chruby' to see actual version
```
> If you’re using **Bash**, replace `.zshrc` with `.bash_profile`.

Quit and relaunch Terminal, check that everything is working with 
```
ruby -v
```

### Jekyll
Finally, install [Jekyll](https://jekyllrb.com/docs/installation/macos/):
```
gem install jekyll
```

### Sushi
Install [Node.js](https://nodejs.org/) then `fsh-sushi`.

> To install sushi, see [Sushi Installation guide](https://fshschool.org/docs/sushi/installation/)