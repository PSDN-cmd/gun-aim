RegisterNetEvent('nisanal')
AddEventHandler('nisanal', function()

local pedxd = GetPlayerPed( -1 )
    
if ( DoesEntityExist( pedxd ) and not IsEntityDead( pedxd ) ) then 

Citizen.CreateThread( function()
	RequestAnimDict( "combat@aim_variations@1h@gang" )
	   while ( not HasAnimDictLoaded( "combat@aim_variations@1h@gang" ) ) do 
                Citizen.Wait( 100 )
            end
				if IsEntityPlayingAnim(pedxd, "combat@aim_variations@1h@gang", "aim_variation_a", 3) then
				ClearPedSecondaryTask(pedxd)
				else
				TaskPlayAnim(pedxd, "combat@aim_variations@1h@gang", "aim_variation_a", 8.0, 2.5, -1, 49, 0, 0, 0, 0 )
            end 
        end )
    end 
end )