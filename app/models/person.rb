# class Person < ActiveRecord::Base
#   def full_name
#     "#{surname}, #{given_name}"
#   end
# end

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
  belongs_to :born_in, inverse_of: :people, class_name: 'City'
end
