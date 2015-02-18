class Asset < ActiveRecord::Base
  belongs_to :user
  belongs_to :folder
  #attr_accessor :uploaded_file

  has_attached_file :uploaded_file

  validates_attachment_size :uploaded_file, :less_than => 10.megabytes
  validates_attachment_presence :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :uploaded_file, url: "/assets/get/:id", path: ":Rails_root/assets/:id/:basename.:extension"


  def file_name
    uploaded_file_file_name
  end

  def file_size
    uploaded_file_file_size
  end


end
