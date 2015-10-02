class Rating < ActiveRecord::Base
  # Use 'touch: true' in order to update resource through association
  belongs_to :resource, touch: true
  belongs_to :user

  validates :value, presence: true


end