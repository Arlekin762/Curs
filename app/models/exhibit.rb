class Exhibit < ActiveRecord::Base
  belongs_to :collection
  validates :name, :descr, :price, :age, :size, :condit, :collection_id, presence: true
  accepts_nested_attributes_for :collection, allow_destroy: true

  def self.search(params)
    result = Exhibit.includes(:collection).references(:collection)
    if params['collection'].present?
      result = result.where(collections: {c_name: params['collection']})
    end
    if params['name'].present?
      result = result.where(name: params['name'])
    end
    if params['descr'].present?
      result = result.where(descr: params['descr'])
    end
    if params['price'].present?
      result = result.where(price: params['price'])
    end
    if params['age'].present?
      result = result.where(age: params['age'])
    end
    if params['size'].present?
      result = result.where(size: params['size'])
    end
    if params['condit'].present?
      result = result.where("condit": params['condit'])
    end
     


   result.all
  end
end

