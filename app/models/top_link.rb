# == Schema Information
#
# Table name: top_links
#
#  id           :bigint           not null, primary key
#  name         :string(255)
#  link         :string(255)
#  color        :string(255)
#  shadow_color :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class TopLink < ApplicationRecord
end
