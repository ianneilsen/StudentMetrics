class StudentDetail < ActiveRecord::Base
  
  validates_presence_of :stufirname, :stusurname, :dob
  mount_uploader :stupic, ImageUploader
  before_save :concat_details
  
  def concat_details    #concatenates student first, surname and dob to form student unique id for non-id data imports
    self.stunum = "#{stufirname}#{stusurname}#{dob}".downcase!
  end
   
  def self.search(search)
    if search
    where('stufirname LIKE ?', "%#{search}%")
    else
    scoped
  end
end

end
