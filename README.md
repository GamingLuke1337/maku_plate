# maku_plate

fivem script for taking off / putting on plate, uses [ox_inventory](https://github.com/overextended/ox_inventory) for item and [ox_target](https://github.com/overextended/ox_target) for car interaction
If you encounter any issues, feel free to let me know here or reach out on my Discord erzajefrajeris

### Setup

-   Add new item to `ox_inventory/data/items.lua`

```lua
['vehicle_plate'] = {
	label = 'Kennzeichen',
	weight = 1,
	stack = false,
	client = {
		export = 'maku_plate.itemUsage',
		image =  'vehicle_plate.png',
	},
},
```

-   Move `assets/vehicle_plate.png` to `ox_inventory/web/images` folder
-   Move `assets/plate.lua` to `ox_inventory`
-   Set `plate.lua` as a shared script in `ox_inventory/fxmanifest.lua`:
replace 
```lua
shared_script '@ox_lib/init.lua'
```
with
```lua
shared_scripts {
    '@ox_lib/init.lua',
    'plate.lua',
}
```

