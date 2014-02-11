nums=Array[1,2,3,4,5,6]
puts "#{nums}"
$x=nums.size
puts $x
$y=$x/2
($y..$x).each do |i|
puts "#{nums[i]}"
end