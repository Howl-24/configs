return {
   -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
   -- ssh_domains = {},
   ssh_domains = {
      -- yazi's image preview on Windows will only work if launched via ssh from WSL
      {
         name = 'wsl.ssh',
         remote_address = '192.168.0.196',
         multiplexing = 'None',
         default_prog = { 'bash', '-l' },
         ssh_option = {
            identityfile = 'C:/Users/Howl/.ssh/keys/Pi_key',
          },      
      },
   },

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},

   -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
   wsl_domains = {
      {
         name = 'WSL:Debian',
         distribution = 'Debian',
         username = 'howl',
         default_cwd = '/home/howl',
         default_prog = { 'zsh', '-l' },
      },
   },
}
