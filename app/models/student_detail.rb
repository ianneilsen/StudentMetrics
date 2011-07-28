class StudentDetail < ActiveRecord::Base
  #attr_accessible :studpic, :student_detail_id
  validates_presence_of :stufirName, :stusurName, :dob
  mount_uploader :stupic, ImageUploader
  before_save :concat_details
  
  def concat_details    #concatenates student first, surname and dob to form student unique id for non-id data imports
    self.stunum = "#{stufirName}#{stusurName}#{dob}".downcase!
  end
   
  def self.search(search)
    if search
    where('stufirName LIKE ?', "%#{search}%")
    else
    scoped
  end
end

end
