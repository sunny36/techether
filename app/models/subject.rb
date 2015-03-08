class Subject < ActiveRecord::Base
  has_many :users
  has_many :resources
  accepts_nested_attributes_for :users
  validates :name, presence: true
  validates :description, presence: true

  # Method used to filter subject by category
  def self.in_category(category)
    if category.present?
      where("category LIKE ?", "%#{category}%")
    else
      Category.all
    end
  end

  # Sort categories by predefined order
  def self.sort(unsorted)
    sorted = ["General-Purpose", "Web Development", "Mobile Development", "Frameworks", "Mathematics-Oriented", "Database Manipulation", "Content Management Systems", "Other"]
    sorted.delete_if do | item |
      if !unsorted.include?(item)
        true
      end
    end
    return sorted
  end

  # Main search bar functionality
  def self.search(search)
  	if search.present?
      if connection.adapter_name == 'PostgreSQL'
        where("name ILIKE ? OR description ILIKE ? OR category ILIKE ? OR tags ILIKE ?",
              "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
      else
        where("name LIKE ? OR description LIKE ? OR category LIKE ? OR tags LIKE ?",
              "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
      end
  	else
  		Subject.all
  	end
  end

  # Get most recently updated
  def self.most_recent
    order("updated_at").limit(5)
  end

  # Sort by id
  def self.sort_id
    order("id")
  end

  def self.sort_name
    order('lower(name)')
  end

end
