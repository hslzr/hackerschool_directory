class Language < ActiveRecord::Base
  belongs_to :hacker, though: :hacker_languages
end
