# 後置if
puts 'おはよう' if true # 出力される
puts '乙' if false # 出力されない

# 配列
a = [1, 2, 3]
a << 4
a.each do |element|
	puts element
end
# 上下同じ
for element in a do
	puts element
end
