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