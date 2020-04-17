# frozen_string_literal: true


require 'spec_helper'
require 'uscis_quiz_scraper/scraper'

describe UscisQuizScraper::QuestionsScraper do
  let(:scraper) { described_class.new }

  describe '#page' do
    it { expect(scraper.page).not_to be_nil }
  end

  describe '#questions' do
    it 'has 100 questions' do
      expect(scraper.questions.size).to eq(100)
    end
  end

  describe '#answers' do
    it 'has 100 answers' do
      expect(scraper.answers.size).to eq(100)
    end
  end
end

describe UscisQuizScraper::UpdatesScraper do
  let(:scraper) { described_class.new }

  describe '#page' do
    it { expect(scraper.page).not_to be_nil }
  end

  describe '#questions' do
    it 'has 9 questions' do
      expect(scraper.questions.size).to eq(9)
    end
  end

  describe '#answers' do
    it 'has 9 answers' do
      expect(scraper.answers.size).to eq(9)
    end
  end

  # Ids are necessary so that we can merge data.
  describe '#ids' do
    it 'has 9 ids' do
      expect(scraper.ids.size).to eq(9)
    end
  end
end
