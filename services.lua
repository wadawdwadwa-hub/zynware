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
    return Camera:WorldToViewportPoint(pos)
end


function lib:wtsp(pos)
    return Camera:WorldToScreenPoint(pos)(pos)
end


function lib:framelimit(rendertime, deltatime, fps)
    rendertime += deltatime
	if (rendertime < 1 / fps) then
		return
	end
	rendertime = 0
end

return lib
