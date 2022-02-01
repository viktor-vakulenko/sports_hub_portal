# frozen_string_literal: true

class User < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
end
