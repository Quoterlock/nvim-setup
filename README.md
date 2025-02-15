# key bindings
create new file/folder - `a` in nvim-tree
delete - `a` in nvim-tree
search - `/`
clear search - <leader> + h

find file - <leader> + ff

split window - :vsplit
to left window - ctrl + w + h
to right window - ctrl + w + l
ade width - ctrl + w + <widht> + >
dec width - ctrl + w + <width> + <


# guides
## To add new plugin
1. add `use` in `plugins.lua`
2. create `<plugin_name>.lua` file in `lua/core/plugins_config` folder
3. add `require` to `init.lua` in `lua/core/plugins_settings/init.lua`
