set script_dir $(dirname $(status --current-filename ))

fish_add_path "/Users/lo1ol/Library/Python/3.9/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"

for script in $(ls -1 "$script_dir/"*.fish | grep -v "config\.fish")
    . $script
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
