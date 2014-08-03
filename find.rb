# find the number of common followers between two twitter users
# Accepts a file with data like this:
# Yzaatreh,1132592270
# Lina18,84549020
# Lina18,458608351
# Lina18,1003803530
# abuhilalah,1324877911
require "awesome_print"

filename = ARGV[0]
lastc1 = ""
data, els = {}

File.open(filename, 'r').each do |line|
	newc1,c2 = line.split(",")
	newc1.strip!
	c2.strip!
	if (newc1 != lastc1)
		data[lastc1] = els if lastc1 != ""
		lastc1 = newc1
		els = {}
	end
	els[c2] = nil  # add this to the list
end
# ap data

# data = { 	'mary' => {'barb' => nil, 'bill' => nil, 'susan' => nil},
# 		'rick' => {'susan' => nil, 'marty' => nil},
# 		'david' => {'scott' => nil, 'barb' => nil, 'larry' => nil, 'michael' => nil, 'carl' => nil, 'susan' => nil},
# 		'carl' => {'david' => nil, 'reagan' => nil}
# }

results = {}
names = data.keys
(0..names.size-2).each do |k|
	(1..names.size-1-k).each do |i|
		@t = 0
		@name1 = names[k]
		@name2 = names[k+i]
		hash1 = data[@name1]
		hash2 = data[@name2]
		keys1 = hash1.keys
		keys1.each do |key1|
			if hash2.has_key?(key1)
				# puts "found #{key1} from #{@name1}'s list in #{@name2}'s list" 
				@t = @t + 1
			end
		end
		if (@name1 < @name2)
				r = @name1 + ":" + @name2
		else 
				r = @name2 + ":" + @name1
		end
		results[r] = @t
	end
end
ap results
# e.g. {"mary:rick"=>1, "david:mary"=>2, "carl:mary"=>0, "david:rick"=>1, "carl:rick"=>0, "carl:david"=>0}

results.each_pair do |key, value|
	s = key.split(":")
	# puts "#{s[0]}\t#{s[1]}\t#{value}"
end

