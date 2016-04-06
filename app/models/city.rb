class City < ActiveRecord::Base
  has_many :people, inverse_of: :born_in, foreign_key: 'born_in_id'
end
