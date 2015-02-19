class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :assets
  has_many :folders

  has_many :shared_folders,:dependent => :destroy
  has_many :being_shared_folders, class_name: "SharedFolder",foreign_key: "shared_user_id", dependent: :destroy
end
