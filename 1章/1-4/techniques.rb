# インスタンス作成時にinitializeメソッドが実行される
class User
	attr_reader :name, :address, :email
	def initialize(name, address, email)
		@name = name
		@address = address
		@email = email
	end
end

user = User.new("田中 太郎", "東京都", nil)

# メソッドの呼び出しに制限をかける
class Person
	attr_accessor :given_name, :family_name, :age
	def initialize(given_name, family_name, age, money)
		@given_name = given_name
		@family_name = family_name
		@age = age
		@money = money
	end
	
	# 億万長者かどうかを返す
	def billionaire?
		money >= 1000000000
	end

	def name(full: true, with_age: true)
		n = if full
			"#{given_name} #{family_name}"
		else
			given_name
		end
		n += "(#{age})" if with_age
		n
	end

	private

	# privateにして所持金額は隠す
	def money
		@money
	end
end

person = Person.new("田中", "次郎", 19, 10000000000)
puts person.billionaire?
puts person.name
puts person.name(with_age: false)
puts person.name(full: false)
puts person.name(with_age: false, full: false)
