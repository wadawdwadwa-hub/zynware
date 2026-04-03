local lib = {}
lib.__index = lib


function lib:GetService(self)
    return cloneref(game:GetService(self))
end


function lib:CloneFunction(self)
    return clonefunction(self)
end


function lib:CloneReference(self)
    return cloneref(self)
end


function lib:findfirstchild(self, value)
    return self:FindFirstChild(value)
end


function lib:findfirstchildofclass(self, class)
    return self:FindFirstChildOfClass(class)
end


function lib:wtvp(pos)
    return workspace.CurrentCamera:WorldToViewportPoint(pos)
end


function lib:wtsp(pos)
    return workspace.CurrentCamera:WorldToScreenPoint(pos)(pos)
end


function lib:return2DPos(position)
    return Vector2.new(position.X, position.Y)
end


function lib:framelimit(deltatime, fps)
	local rendertime = 0
    rendertime += deltatime
	if (rendertime < 1 / fps) then
		return
	end
	rendertime = 0
end

return lib
