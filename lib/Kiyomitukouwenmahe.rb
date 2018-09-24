# coding: utf-8
tower = Range.new('A', 'E').to_a

floor = Range.new('1', '5').to_a

side = ["内", "外"]

floorroom = ["B1", "D1", "E3", "E4"]

unused = ["A1内"]


block = tower.product(floor).product(side).map do |i|
	i.flatten.join
end

for t in tower

	for f in floor

		for s in side

			block << t + f.to_s + s

		end

	end

end

floorroomdummy = []

for f in floorroom

	for s in side

		floorroomdummy << f + s

	end

end

real = (block - floorroomdummy + floorroom - unused).sort

for r in real

	print r , "\n"

end
