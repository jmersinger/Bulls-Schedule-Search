class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         validates :first_name, :last_name, :major, presence: true

  has_many :regclasses
  has_many :avail_courses, through: :regclasses

end
