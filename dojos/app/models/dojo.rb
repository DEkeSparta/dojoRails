class Dojo < ApplicationRecord
  has_many :teachers

  def total
  t = 0
  self.teachers.each do |teacher|
    teacher.pupils.each do |pupil|
      t += 1
    end
  end
  t
end
end
