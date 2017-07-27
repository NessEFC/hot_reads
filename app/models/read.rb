class Read < ApplicationRecord
  validates :link_url, presence: true

  def update_count
    self.count += 1
    self.update_attributes(count: self.count)
  end

  def self.order_reads
    where(updated_at: 24.hours.ago..Time.now).order(count: :desc).limit(10)
  end

end
