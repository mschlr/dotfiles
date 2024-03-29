# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set path for cargo-related bins if it exists
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

# source other stuff
for i in $HOME/.local/include/*;
    do source $i
done
