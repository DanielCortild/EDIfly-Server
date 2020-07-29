class ProductBriefing < ApplicationRecord
  has_one_attached :file
end

class Whitepaper < ApplicationRecord
  has_one_attached :file
end

class Faq < ApplicationRecord
  has_one_attached :file
end
