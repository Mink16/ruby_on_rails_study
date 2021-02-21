# nil ガード
number ||= 10
# 上下同じ
number || (number = 10)

def children
	@children ||= []
end


# ボッチ演算子(safe navigation operator)
class User
	def name
		'名前'
	end
end

user = User.new
puts user.name

object = nil
puts object&.name

name = if object
	puts object.name
else
	nil
end
name = object ? object.name : nil
name = object&.name


# %記法
ary1 = ['apple', 'banana', 'orange']
puts ary1
ary2 = %w(apple banana orange)
puts ary2

ary3 = [:apple, :banana, :orange]
puts ary3
ary4 = %i(apple banana orange)
puts ary4

# 配列の各要素から特定の属性だけを取り出す
class User
	attr_accessor :name
end

user1 = User.new
user2 = User.new
user3 = User.new
user1.name = '田中太郎'
user2.name = '佐藤次郎'
user3.name = '小林三郎'

users = [user1, user2, user3]
names = []

# どんどん書き方が効率化されていくよ
users.each do |user|
	names << user.name
end
p names

names = users.map do |user|
	user.name
end
p names

names = users.map { |user| user.name }
p names

names = users.map(&:name)
p names
