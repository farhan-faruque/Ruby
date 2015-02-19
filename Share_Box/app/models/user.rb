class User < ActiveRecord::Base
  after_create :check_and_assign_shared_ids_to_shared_folders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :assets
  has_many :folders

  has_many :shared_folders,:dependent => :destroy
  has_many :being_shared_folders, class_name: "SharedFolder",foreign_key: "shared_user_id", dependent: :destroy

  def check_and_assign_shared_ids_to_shared_folders
    shared_folders_with_same_email = SharedFolder.find_all_by_shared_email(self.email)
    if shared_folders_with_same_email
      shared_folders_with_same_email.each do |shared_folder|
        shared_folder.shared_user_id = self.id
        shared_folder.save
      end
      end
    end
end
