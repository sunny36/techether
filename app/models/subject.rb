class Subject < ActiveRecord::Base
  has_many :users
  has_many :resources
  accepts_nested_attributes_for :users
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :tags, presence: true

  scope :for_user, lambda{|id| where(user_id: id)}

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
      elsif where("description LIKE ?", "%#{search}%").present?
        where("description LIKE ?", "%#{search}%")
      else
        # Search for each individual word in the search query and return all results
        array = search.split(' ')
        relation = where("category LIKE ? OR name LIKE ? OR tags LIKE ?", "%#{array[0]}%", "%#{array[0]}%", "%#{array[0]}%")
        array.each do | word |
          relation.merge(where("category LIKE ? OR name LIKE ? OR tags LIKE ?", "%#{word}%", "%#{word}%", "%#{word}%"))
        end
        return relation
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

  # Alphabetical
  def self.sort_name
    order('lower(name)')
  end

  # Sort by User count
  def self.sort_user_count
    order('user_count desc')
  end

  # Sort by Resource count
  def self.sort_resource_count
    order('resource_count desc')
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
