# エラーチェック

# フォームから入力された文字列
message = 'お宅の商品の発想から到着までがとても速くて助かりました。ただ、ちょっと箱がつぶれていたわよ'
max_length = 30

puts "入力メッセージ：#{message}"
if message.length > max_length
	puts "メッセージは#{max_length}文字以下で入力してください。"
end
