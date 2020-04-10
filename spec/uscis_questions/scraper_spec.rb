# frozen_string_literal: true

require 'spec_helper'
require 'uscis_questions/scraper'

describe UscisQuestions::Scraper do
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
