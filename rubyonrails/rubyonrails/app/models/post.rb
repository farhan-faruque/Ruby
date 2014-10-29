class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes

  validates :name, :presence => true
  validates :title, :presence => true, :length => {:maximum => 10}
  has_many :tags
  has_many :comments , :dependent => :destroy

  accepts_nested_attributes_for :tags, :allow_destroy => true,
                                :reject_if => proc { |attr| attrs.all? { |k,v| v.blank? } }

end
