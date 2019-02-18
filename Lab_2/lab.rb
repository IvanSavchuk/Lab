i = " "
# Відкриває файл sum.txt
File.open("sum.txt") do |file|
  i = File.read("sum.txt")
end
# Виводить вказане число в sum.txt
puts i.to_i
# Рандомне число
r = Random.rand(8)
# Додає вказане число в файлі sum.txt і введене з клавіатури
sum = i.to_i + r.to_i
# Вводить ваше число з клавіатури
puts "Введіть ваше число: "
t = gets
# Перевірка числа
if t.to_i == sum
  puts "Введене число вірне!"
else
  puts "Введене число не вірне!"
end
# Виводить число
puts sum.to_i
