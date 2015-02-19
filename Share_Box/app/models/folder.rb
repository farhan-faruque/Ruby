class Folder < ActiveRecord::Base
  belongs_to :user
  has_many :assets,:dependent => :destroy
  has_many :shared_folders,dependent: :destroy
  acts_as_tree

  def shared?
    !self.shared_folders.empty?
  end
end
