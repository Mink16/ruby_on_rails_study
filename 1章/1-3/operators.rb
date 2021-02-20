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

# ハッシュ
# 文字列をキー
{ "tokyo" => 134432, "kanagawa" => 62346 }
# ハッシュロケットの代わりにコロンを使っている
{ "tokyo": 543, "kanagawa": 9785342 }
# シンボルをキーにしている
{ :tokyo => 954278, :kanagawa => 3542987 }
# 上と同じでコロンを使っている(これが最も一般的)
{ tokyo: 85641, kanagawa: 6518 }
# 数値をキーにしている
{ 13 => 908798435, 14 => 972345 }

options = { font_size: 100, color: 'red' }
puts options[:font_size]

options[:font_family] = 'Arial'
puts options[:font_family]


options.each do |key, value|
	puts key
	puts value
end
