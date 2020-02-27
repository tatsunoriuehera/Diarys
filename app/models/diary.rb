class Diary < ApplicationRecord
  validates:title,presence:true,length:{maximum:255}
  validates:body,presence:true,length:{maximum:10_000}
  validate :proper_title_and_body

  private

  def proper_title_and_body
    unless title.starts_with?('today')
      errors.add(:title,'please start today')
    end
    unless body.ends_with?('.')
      errors.add(:body,'please end period')
    end
  end
end
