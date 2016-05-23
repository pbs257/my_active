class User < ActiveRecord::Base
end

class Customer < ActiveRecord::Base
  has_many :orders, dependent: :destroy


end

class Product < ActiveRecord::Base
  has_many :orders, dependent: :destroy
end

class Order < ActiveRecord::Base
  belongs_to :customer
end

