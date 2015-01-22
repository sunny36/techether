class Subject < ActiveRecord::Base
  has_many :users
  has_many :resources
  accepts_nested_attributes_for :users
  validates :name, presence: true
  validates :description, presence: true

  def self.search(search)
  	if search.present?
  		where("name LIKE ?", "%#{search}%")
  	else
  		Subject.all
  	end
  end

end
