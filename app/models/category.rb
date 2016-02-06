class Category < ActiveRecord::Base
  has_many :watches

  def self.by_type(params)
    cat = where("tag LIKE ?", params)
    Watch.where(category: cat)
  end

end
