class Station < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :fuel_types # last part added

  # def address
  #   [address, city, district].compact.join(', ')
  #   # ver se o address da tabela não precisa de ser migrado para 'street'

  #   #link: https://github.com/alexreisner/geocoder
  # end
end
