# maku_plate

fivem script for taking off / putting on plate, uses [ox_inventory](https://github.com/overextended/ox_inventory) for item and [ox_target](https://github.com/overextended/ox_target) for car interaction
If you encounter any issues, feel free to let me know here or reach out on my Discord erzajefrajeris

### Setup

-   Add new item to `ox_inventory/data/items.lua`

```lua
['vehicle_plate'] = {
    label = 'License plate',
	weight = 1,
	stack = false,
	client = {
		export = 'maku_plate.itemUsage'
	},
},
```

-   Move `assets/vehicle_plate.png` to `ox_inventory/web/images` folder
-   Move `assets/plate.lua.lua` to `ox_inventory`
-   Set `plate.lua` as a shared script in `ox_inventory/fxmanifest.lua`

  
