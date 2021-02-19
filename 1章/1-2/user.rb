class User
	# セッター
	# def name=(name)
	# 	@name = name
	# end
	
	# def name
	# 	@name
	# end

	# セッター(読み書き可能)
	attr_accessor :name, :address, :email

	# ゲッターのみ
	attr_reader :getter

	# セッターのみ
	attr_writer :setter

	def profile
		return "#{name} (#{address})"
	end
	
end

user1 = User.new
user2 = User.new

puts user1.class
puts user1.name
puts user1.name.nil?

user1.name = "太郎"
user2.name = "又三郎"
puts user1.name
puts user2.name

user1.address = user2.address = "東京"
puts user1.profile + ', ' + user2.profile