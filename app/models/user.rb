class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :subject
  accepts_nested_attributes_for :subject

  delegate :name, :description, to: :subject, prefix: true, allow_nil: true

end
