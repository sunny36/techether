class Subject < ActiveRecord::Base
  has_many :users
  has_many :resources
  accepts_nested_attributes_for :users
  validates :name, presence: true
  validates :description, presence: true

  # Main search bar functionality
  def self.search(search)
  	if search.present?
      if connection.adapter_name == 'PostgreSQL'
        where("name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
      else
        where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
      end
  	else
  		Subject.all
  	end
  end

  # Get most recently updated
  def self.most_recent
    order("updated_at").limit(5)
  end

end
