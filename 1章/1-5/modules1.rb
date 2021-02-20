# おしゃべり能力
module Chatting
	def chat
		"hello"
	end
end

# 泣く能力
module Weeping
	def weep
		"しくしく"
	end
end

# undefined method `new' for Chatting:Module (NoMethodError)
# object = Chatting.new

# モジュールをクラスに取り込んで振る舞いを追加することを「Mix-in(ミックスイン)」と呼ぶ
class Dog
	include Chatting
end

class Human
	include Chatting
	include Weeping
end

pochi = Dog.new
puts pochi.chat

taro = Human.new
puts taro.chat
puts taro.weep