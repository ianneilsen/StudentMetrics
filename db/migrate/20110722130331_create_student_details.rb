class CreateStudentDetails < ActiveRecord::Migration
  def self.up
    create_table :student_details do |t|
      t.string :stufirName      #length should be longer than 60 chars and allow special characters such as hypens and accents
      t.string :stusurName      #length should be more than 60 chars and allow special characters such as hypens and accents
      t.date :dob            # only date to be stored in dd/mm/yyyy format
      t.string :stunum          #concatenation of firstname , surname and date of birth to create a unique id
      t.string :stupic          #file path location to student picture or actual blob file of pic - yet to be decided

      t.timestamps
    end
  end

  def self.down
    drop_table :student_details
  end
end


# todo set date format to dd/mm/yyyy in postgresql and rails - which one is bests