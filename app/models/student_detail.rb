class StudentDetail < ActiveRecord::Base
  
  validates :stufirname, :stusurname, :dob, :presence => true
  mount_uploader :stupic, ImageUploader
  before_save :concat_details
  #validates_uniqueness_of :stunum, :message => ["Check student name and dob, there already seems to be a similar student special number"]
  
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
