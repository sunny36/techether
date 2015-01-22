class Resource < ActiveRecord::Base
  belongs_to :subject

  validates :title, presence: true
  validates :description, presence: true
  

end