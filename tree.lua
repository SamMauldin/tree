print("Welcome to Tree!")

if fs.exists("/tree.cfg") then
	
else
	print("Config not found.")
	os.run( {}, "/rom/programs/shell")
end
