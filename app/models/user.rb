class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Define additional attributes for the User model
  attr_accessor :username, :first_name, :last_name
  has_many :events, foreign_key: 'event_id', through: :lists
  has_and_belongs_to_many :events
  has_many :lists
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 8 }
  # Add more validations as needed
end
