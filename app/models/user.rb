class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  /x

  validates :password, 
    presence: true, 
    length: { in: Devise.password_length }, 
    format: { with: PASSWORD_FORMAT }, 
    confirmation: true, 
    on: [:create, :update] 

end
