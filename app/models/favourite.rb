class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :resource

  # Boolean method to check if subject has been favourited by current user
  def self.subject_favourited?(subject_id, user_id)
    if where('subject_id LIKE ? AND user_id LIKE ?', subject_id, user_id).present?
      return true
    else
      return false
    end
  end

  # Boolean method to check if resource has been favourited by current user
  def self.resource_favourited?(resource_id, user_id)
    if where('resource_id LIKE ? AND user_id LIKE ?', resource_id, user_id).present?
      return true
    else
      return false
    end
  end

  # Return the favourite row with given subject and user ids
  def self.find_subject_favourite(subject_id, user_id)
    where('subject_id LIKE ? AND user_id LIKE ?', subject_id, user_id).first
  end

  # Return the favourite row with given resource and user ids
  def self.find_resource_favourite(resource_id, user_id)
    where('resource_id LIKE ? AND user_id LIKE ?', resource_id, user_id).first
  end
end