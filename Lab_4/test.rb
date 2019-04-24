# https://gist.github.com/clayalvord/3055865

@user = 'whoami'
@system = 'scutil --get ComputerName'
@ip = ('ifconfig en0 | grep netmask').split
@vers = ('sw_vers | grep ProductVersion').split
@hw_info = 'system_profiler'
@up = ('uptime').split(',')

if @vers[1].include?('10.5')
  @hw_name = 'Processor Name'
  @hw_speed = 'Processor Speed'
else
  @hw_name = 'CPU Type'
  @hw_speed = 'CPU Speed'
end

puts "User: #{@user}"
puts "Computer: #{@system}"
puts "IP: #{@ip[1]}"
puts "OS Version: #{@vers[1]}"
puts @hw_info.grep(/#{@hw_name}/).to_s.strip
puts @hw_info.grep(/#{@hw_speed}/)[0].to_s.strip
puts @hw_info.grep(/Memory:/)[0].to_s.strip
puts "Uptime: #{@up[0].strip}"
