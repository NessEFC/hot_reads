require 'rails_helper'

RSpec.describe Read, type: :model do
  it 'has a valid factory' do
    expect(build(:read)).to be_valid
  end

  let(:read) { build(:read) }

  describe 'validations' do
    it { expect(read).to validate_presence_of(:link_url) }
  end

  describe 'attributes' do
    it { expect(read).to respond_to(:link_url) }
  end

  describe 'methods' do
    it 'updates count' do
      read = create(:read)
      initial_count = read.count

      read.update_count

      new_count = read.count

      expect(new_count).to eq(initial_count + 1)
    end

    it 'returns ordered list of hot reads' do
      create_list(:read, 10)
      old_read = create(:read, link_url: "http://website11.com", count: 11,  updated_at: 3.days.ago)

      reads = Read.order_reads

      expect(reads[0].count).to eq(10)
      expect(reads[0].link_url).to eq('http://website10.com')
      expect(reads[9].count).to eq(1)
      expect(reads[9].link_url).to eq('http://website1.com')
      expect(reads.include?(old_read)).to be false
    end
  end
end
