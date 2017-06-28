class Collection < ActiveRecord::Base
has_many :showrooms, dependent: :destroy
has_many :exhibits, dependent: :destroy
validates :name,  :desc, :start_date, :finish_date, presence: true
  accepts_nested_attributes_for :showrooms, allow_destroy: true
  def showroom_ids=(params)
    params.split.uniq.each do |id|
      self.showrooms << Showroom.find_by(id: id.to_i)
    end
  end

end
