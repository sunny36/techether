class Resource < ActiveRecord::Base
  # Use 'touch: true' in order to update subject through association
  belongs_to :subject, touch: true
  has_many :ratings

  validates :title, presence: true
  validates :link, presence: true
  

end