class Subject < ActiveRecord::Base
  has_many :users
  accepts_nested_attributes_for :users
  validates :name, presence: true

  def self.search(search)
  	if search.present?
  		where("name LIKE ?", "%#{search}%")
  	else
  		where(true)
  	end
  end

end
