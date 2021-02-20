# 「価格のあるもの」を抽象化したクラス
# 親クラス、基底クラス、もしくはスーパークラス
class PricedObject
	def total_price
		price * Tax.rate
	end
	
	def price
		# 昨日が実装されていないことを表すエラーを発生させるコード
		raise NotImplementedError
	end
end

# 子クラス、派生クラス、もしくはサブクラス
class Product < PricedObject
	attr_accessor :price
end

# 子クラス、派生クラス、もしくはサブクラス
class OrderdItem < PricedObject
	attr_accessor :unit_price, :volume

	def price
		unit_price * volume
	end
end

class Book
	def title
		puts '本のタイトル'
	end
end

class Magazine < Book
	# オーバーライド
	def title
		super # 親クラスのメソッド呼び出し
		puts '雑誌のタイトル'
	end
end

magazine = Magazine.new
magazine.title