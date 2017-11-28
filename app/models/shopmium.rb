class Shopmium < ApplicationRecord

  validates :latitude, :longitude, :address, :city, :zip, :phone, presence: true
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Shopmium.create!(row.to_hash)
    end
  end
end
