class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  #  :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :trackable
end
