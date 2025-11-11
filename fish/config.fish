#/usr/bin/fish

fish_add_path --path "$HOME/.local/bin"
set --export --path RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"
set --export PIPEWIRE_RUNTIME_DIR $XDG_RUNTIME_DIR/pipewire
set --export PULSE_RUNTIME_PATH $XDG_RUNTIME_DIR/pulse

set --export ANDROID_SDK_ROOT "$HOME/android-sdk"
#set --export STUDIO_JDK /usr/lib/jvm/java-11-openjdk

if status is-login
  if not set --query SSH_AGENT_PID
    eval (ssh-agent -c) &> /dev/null
  end
end

if status is-interactive
  alias ls='ls -alph --color=auto --time-style=long-iso --quoting-style=shell --group-directories-first'
end
