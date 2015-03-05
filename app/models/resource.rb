class Resource < ActiveRecord::Base
  # Use 'touch: true' in order to update subject through association
  belongs_to :subject, touch: true
  has_many :ratings

  validates :title, presence: true
  validates :link, presence: true

  def self.sort(unsorted)
    predefined = ["Beginner", "Intermediate", "Advanced"]
    sorted = []
    predefined.each do | ordered_item |
      unsorted.each do | item |
        if item.difficulty == ordered_item
          sorted << item
        end
      end
    end
    return sorted
  end
  

end