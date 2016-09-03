
-- Parents the activating players play area to the elevator entity.
function ParentPlayer(params)

	-- Check that a valid player activated the trigger.
	if params.activator and params.activator:GetClassname() == "player"
	then
		-- Get a reference to the elevator entity.
		local coaster = Entities:FindByName(nil, "coaster_car")
	
		params.activator:GetHMDAnchor():SetParent(coaster, "")
	end
end

-- Removes parenting for the activating player.
function UnParentPlayer(params)

	-- Check that a valid player left the trigger.
	if params.activator and params.activator:GetClassname() == "player"
	then
	
		params.activator:GetHMDAnchor():SetParent(nil, "")
	end
end