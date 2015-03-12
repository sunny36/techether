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
      if self.where("name LIKE ?", "%#{search}%").present?
          where("name LIKE ?", "%#{search}%")
      elsif self.where("tags LIKE ?", "%#{search}%").present?
        where("tags LIKE ?", "%#{search}%")
      elsif where("category LIKE ? OR name LIKE ? OR tags LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%").present?
        where("category LIKE ? OR name LIKE ? OR tags LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      else
        where("category LIKE ? OR name LIKE ? OR tags LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
        # Search for each individual word in the search query and return all results
        # array = search.split(' ')
        # array.each do | word |

        # end
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

  def slug
    name.downcase.gsub(" ", "-").gsub(".","")
  end

  def to_param
    "#{id}-#{slug}"
  end

  # Parse tags
  def parse_tags
    tag_array = []
    tags.split(',').each do | tag |
      while tag[0] == ' '
        tag = tag[1, tag.length]
      end
      tag_array << tag
    end
    return tag_array
  end

end
