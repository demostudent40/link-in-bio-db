# == Schema Information
#
# Table name: links
#
#  id             :bigint           not null, primary key
#  image          :string
#  image_alt_text :string
#  url            :string
#  url_text       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Link < ApplicationRecord
end
