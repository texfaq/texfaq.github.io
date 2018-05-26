lfs = require("lfs")

for entry in lfs.dir(".") do
  if string.match(entry, "^FAQ%-") then
    print(entry)
    local file = assert(io.open(entry, "rb"))
    local contents = string.gsub(file:read("*all"), "\r\n", "\n")
    io.close(file)
    contents = string.gsub(contents, "permalink: FAQ","permalink: /FAQ")
    local newfile = io.open(entry, "w")
    io.output(newfile)
    io.write(contents)
    io.close(newfile)
  end
end

-- ldquo