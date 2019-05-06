i = "------------------------------------------------------------------------------------------------------------"
usert = "Вивести ім'я комп'ютера: "
ipt = "Вивести IP: "
pst = "Вивести ваші поточні активні процеси: "
freet = "Вивести стан оперативної пам'яті в мегабайтах: "
cput = "Вивести ЦПУ: "

# ic = shell_dir_listing = `ifconfig`

# Вивести ім'я комп'ютера
user = 'hostname'
# Вивести IP
ip = 'ifconfig'
# Вивести ваші поточні активні процеси
ps = 'ps'
# Вивести стан оперативної пам'яті в мегабайтах
free = 'free -m'
# Вивести ЦПУ
cpu = 'hwinfo --cpu'

print "#{usert}\n"
system(user)
print "#{i}\n"
print "#{ipt}\n"
system(ip)
print "#{i}\n"
print "#{pst}\n"
system(ps)
print "#{i}\n"
print "#{freet}\n"
system(free)
print "#{i}\n"
print "#{cput}\n"
system(cpu)
