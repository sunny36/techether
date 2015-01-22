class Resource < ActiveRecord::Base
  # Use 'touch: true' in order to update subject through association
  belongs_to :subject, touch: true

  validates :title, presence: true
  validates :description, presence: true
  

end