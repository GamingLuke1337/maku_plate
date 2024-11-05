-- Save the original function under a new name to avoid cyclic calling
local originalGetVehicleNumberPlateText = GetVehicleNumberPlateText

-- Override the GetVehicleNumberPlateText function
GetVehicleNumberPlateText = function(vehicle)
    -- Get the license plate text from the original function
    local plate = originalGetVehicleNumberPlateText(vehicle)
    
    -- If the license plate is empty, load the value from the state bag
    if plate:gsub('%s+', '') == '' then
        local statebag = Entity(vehicle).state.plate
        if statebag ~= nil then
            plate = statebag
        end
    end

    return plate
end
