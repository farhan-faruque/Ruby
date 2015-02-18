class Folder < ActiveRecord::Base
  belongs_to :user
  has_many :assets,:dependent => :destroy
  acts_as_tree
end
