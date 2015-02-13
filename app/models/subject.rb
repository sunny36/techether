class Subject < ActiveRecord::Base
  has_many :users
  has_many :resources
  accepts_nested_attributes_for :users
  validates :name, presence: true
  validates :description, presence: true

  def self.in_category(category)
    if category.present?
      where("category LIKE ?", "%#{category}%")
    else
      Category.all
    end
  end

  def self.sort(unsorted)
    sorted = ["General-Purpose", "Web Development", "Mobile Development", "Frameworks", "Mathematics-Oriented", "Database Manipulation", "Content Management Systems", "Other"]
    sorted.each do | item |
      if !unsorted.include?(item)
        sorted.delete(item)
      end
    end
    return sorted
  end

  # Main search bar functionality
  def self.search(search)
  	if search.present?
      if connection.adapter_name == 'PostgreSQL'
        where("name ILIKE ? OR description ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      else
        where("name LIKE ? OR description LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
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
