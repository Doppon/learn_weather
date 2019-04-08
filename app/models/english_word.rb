class EnglishWord < ApplicationRecord
  validates :word, presence: true
  validates :word_meaning, presence: true
  validates :sentence, presence: true
  validates :sentence_meaning, presence: true
end
