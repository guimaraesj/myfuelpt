class Station < ApplicationRecord
  geocoded_by :complete_address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :fuel_types # last part added

  def complete_address
    [address, city, district].compact.join(', ')
  end
end
