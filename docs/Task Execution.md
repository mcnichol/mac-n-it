##Download Repo
`git clone git@github.com:mcnichol/mac-n-it.git`

##Install
Terminal Stuff:
- Homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Workspace: `mkdir ~/workspace && cd ~/workspace`
- Iterm: `brew cask install iterm2`
    - Install Powerline fonts: 
        - `git clone git@github.com:powerline/fonts.git && cd fonts && ./install.sh`
        - **Validate Message:** *All Powerline fonts installed to /Users/enduser/Library/Fonts*    
    - Set item2 theme to Solarized Dark
    - Update Fonts to Powerline Meslo
    - ADD to ZSHRC: DEFAULT_USER=`whoami`
- GIT
    - Default username: git config —global user.name “${yourName}”
    - Default email: git config —global user.email “${yourEmail}” 
Application Stuff:


- Check out Pivotal Git Scripts
