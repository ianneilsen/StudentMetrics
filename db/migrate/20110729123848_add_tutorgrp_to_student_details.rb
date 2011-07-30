class AddTutorgrpToStudentDetails < ActiveRecord::Migration
  def self.up
    add_column :student_details, :tutorgrp, :string
  end

  def self.down
    remove_column :student_details, :tutorgrp
  end
end
