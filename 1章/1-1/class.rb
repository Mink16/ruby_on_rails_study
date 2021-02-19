# クラスの書き方

class Cat
	def chaseDown(mouse)
		puts "一生懸命「#{mouse}」を追いかけた…" # メッセージの出力
	end
end

tom = Cat.new
puts tom.chaseDown("ジェリー")