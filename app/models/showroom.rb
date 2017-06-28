class Showroom < ActiveRecord::Base
  belongs_to :collection
  validates :name, presence: true
end
