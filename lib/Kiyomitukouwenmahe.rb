# coding: utf-8
tower = "A".."E"

floor = 1..5

side = ["内", "外"]

floorroom = ["B1", "D1", "E3", "E4"]

unused = ["A1内"]

block = []

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