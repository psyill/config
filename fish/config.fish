#/usr/bin/fish

if status is-login
  set --export --path --prepend PATH "$HOME/.cargo/bin" "$HOME/.local/bin"

  set --export --path RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"

  set --export ANDROID_SDK_ROOT "$HOME/android-sdk"
  #set --export STUDIO_JDK /usr/lib/jvm/java-11-openjdk

  set --export QT_QPA_PLATFORM wayland-egl
  set --export QT_QPA_PLATFORMTHEME qt5ct
  set --export QT_WAYLAND_DISABLE_WINDOWDECORATION 1
  set --erase QT_STYLE_OVERRIDE

  set --export SDL_VIDEODRIVER wayland

  eval (ssh-agent -c) &> /dev/null

  set --export PIPEWIRE_RUNTIME_DIR $XDG_RUNTIME_DIR/pipewire
  set --export PULSE_RUNTIME_PATH $XDG_RUNTIME_DIR/pulse
end

if status is-interactive
  alias ls='ls -alph --color=auto --time-style=long-iso --quoting-style=shell --group-directories-first'
  alias adplay='adplay --emulator=woody --freq=48000 --surround --16bit --verbose -r -m -O alsa --device=hw:1,0'
end
