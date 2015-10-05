class Rating < ActiveRecord::Base
  # Use 'touch: true' in order to update resource through association
  belongs_to :resource, touch: true
  belongs_to :user

  validates :value, presence: true

  scope :for_user, lambda{|id| where(user_id: id)}

end