import yaml
import subprocess

config_file_path = r"C:\Users\Howl\.glzr\glazewm\config.yaml"

with open(config_file_path, 'r', encoding='utf-8') as file:
    config = yaml.safe_load(file)

if (config['window_effects']['focused_window']['transparency']['opacity'] != '100%' and
        config['window_effects']['other_windows']['transparency']['opacity'] != '100%'):
    config['window_effects']['focused_window']['transparency']['opacity'] = '100%'
    config['window_effects']['other_windows']['transparency']['opacity'] = '100%'
else:
    config['window_effects']['focused_window']['transparency']['opacity'] = '99%'
    config['window_effects']['other_windows']['transparency']['opacity'] = '95%'

with open(config_file_path, 'w', encoding='utf-8') as file:
    yaml.safe_dump(config, file, default_flow_style=False, allow_unicode=True)

subprocess.run(["glazewm", "command", "wm-reload-config"])