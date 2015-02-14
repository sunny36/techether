class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :subject
  has_many :ratings
  accepts_nested_attributes_for :subject

  validates :name, presence: true

  delegate :name, :description, to: :subject, prefix: true, allow_nil: true

end
