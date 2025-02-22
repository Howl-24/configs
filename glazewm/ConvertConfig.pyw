import yaml
import subprocess

original_config_file_path = r"C:\Users\Howl\.glzr\glazewm\config.orig.yaml"
updated_config_file_path = r"C:\Users\Howl\.glzr\glazewm\config.yaml"

with open(original_config_file_path, 'r', encoding='utf-8') as file:
    config = yaml.safe_load(file)

with open(updated_config_file_path, 'w', encoding='utf-8') as file:
    yaml.safe_dump(config, file, default_flow_style=False, allow_unicode=True)

subprocess.run(["glazewm", "command", "wm-reload-config"])