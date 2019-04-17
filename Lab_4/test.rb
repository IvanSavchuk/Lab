# Тут колись буде код! xD

def mac_address
  return @mac_address if defined? @mac_address
  re = %r/^:-{5}[0-9A-Za-z][0-9A-Za-z][^:-]/o
  lines = nil
  cmds = ‘/sbin/ifconfig’, ‘/bin/ifconfig’, ‘ifconfig’,‘ipconfig /all’
  cmds.each do |cmd|
    begin
      stdout = IO.popen(cmd){|fd| fd.readlines}
    rescue
      stdout = nil
    end
    next unless stdout and stdout.size > 0
    lines = stdout and break
  end
  raise "failed" unless lines

  candidates = lines.select{|line| line =~ re}
  raise 'no mac address candidates' unless candidates.first

  maddr = candidates.first[re]
  raise 'no mac address found' unless maddr
  @mac_address = maddr.strip
end

puts mac_address
