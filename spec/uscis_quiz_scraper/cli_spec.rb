# frozen_string_literal: true

require 'spec_helper'
require 'uscis_quiz_scraper/cli'

describe UscisQuizScraper::Cli do
  let(:cli) { described_class.new }

  it 'is valid' do
    expect(cli).not_to be nil
  end
end
