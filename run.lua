require 'efw'
local json_io = require 'json_io'
local tblfmt = require 'tblfmt'

local res,config = json_io.read_from_file("config-arm.json")

if(res) then
local cmd = tblfmt.process(config,'sep')
--print(cmd)
os.execute(cmd) 
end
