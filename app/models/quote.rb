class Quote < ApplicationRecord
  # define attributes for the first and last quote in the db
  def next_id
    self.class.where('id > ?', self.id).pluck(:id).first
  end

  def previous_id
    self.class.where('id < ?', self.id).pluck(:id).last
  end
end
