# == Schema Information
#
# Table name: counters
#
#  id         :bigint           not null, primary key
#  count      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Counter < ApplicationRecord
  def self.increment!
    Counter.transaction do
      Counter.find_or_create_by!(id: 1)
      Counter.where(id: 1).update_all('count = count + 1')
    end
  end

  def self.access_counter
    Counter.find_or_create_by!(id: 1)
  end
end
