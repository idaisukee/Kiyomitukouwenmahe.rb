# coding: utf-8
towers = Range.new('A', 'E').to_a

floors = Range.new('1', '5').to_a

sides = ["内", "外"]

floor_rooms = ["B1", "D1", "E3", "E4"]

unused_blocks = ["A1内"]


blocks = towers.product(floors).product(sides).map do |i|
	i.flatten.join
end

rooms = blocks - (floor_rooms.product(sides)).map do |i|
	i.flatten.join
end - unused_blocks + floor_rooms

p rooms.sort
