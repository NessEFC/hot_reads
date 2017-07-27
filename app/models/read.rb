class Read < ApplicationRecord
  validates :link_url, presence: true

  def update_count
    self.count += 1
    self.update_attributes(count: self.count)
  end
end
