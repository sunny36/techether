class Resource < ActiveRecord::Base
  # Use 'touch: true' in order to update subject through association
  belongs_to :subject, touch: true
  has_many :ratings

  validates :title, presence: true
  validates :link, presence: true

  scope :for_user, lambda{|id| where(user_id: id)}

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