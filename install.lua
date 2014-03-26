local prefix = "https://github.com/Sxw1212/tree/raw/master/"

print("Installing tree...")
fs.delete("/tree")
fs.delete("/.bios")
fs.makeDir("/tree")

function get(url)
	local fh = http.get(url)
	if fh then
		return fh.readAll()
	else
		error("Unable to fetch " .. url)
	end
end

local bios = fs.open("/.bios", "w")
bios.write(get(prefix .. "bios.lua"))
bios.close()

local zn = fs.open("/tree/zn", "w")
zn.write(get(prefix .. "zn.lua"))
zn.close()

local tree = fs.open("/tree/tree", "w")
tree.write(get(prefix .. "tree.lua"))
tree.close()

print("Done!")
