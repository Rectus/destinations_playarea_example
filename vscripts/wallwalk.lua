
-- 
function AlignWall(params)

	-- Check that a valid player activated the trigger.
	if params.activator and params.activator:GetClassname() == "player"
	then
		
		local offsetWall = Entities:FindByName(nil, "offset_wall")
		local offsetFloor = Entities:FindByName(nil, "offset_floor")
	
		local anchor = params.activator:GetHMDAnchor()
		
		local localOrigin = anchor:GetOrigin() - offsetFloor:GetOrigin() 
		anchor:SetOrigin(localOrigin + offsetWall:GetOrigin())
		
		local wallAngles = offsetWall:GetAngles()
		anchor:SetAngles(wallAngles.x, wallAngles.y, wallAngles.z)
	end
end

-- 
function AlignFloor(params)
	print(params.activator)
	-- Check that a valid player left the trigger.
	if params.activator and params.activator:GetClassname() == "player"
	then
		local offsetWall = Entities:FindByName(nil, "offset_wall")
		local offsetFloor = Entities:FindByName(nil, "offset_floor")
	
		local anchor = params.activator:GetHMDAnchor()
		
		local floorAngles = offsetFloor:GetAngles()
		anchor:SetAngles(floorAngles.x, floorAngles.y, floorAngles.z)
		
		local localOrigin = anchor:GetOrigin() - offsetWall:GetOrigin() 
		anchor:SetOrigin(localOrigin + offsetFloor:GetOrigin())
	end
end