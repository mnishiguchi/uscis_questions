# frozen_string_literal: true

require 'awesome_print'
require 'thor'
require 'uscis_quiz_scraper/scraper'

module UscisQuizScraper
  class Cli < Thor
    desc 'questions', 'Fetch 100 questions from the uscis website'
    def questions
      scraper.questions.each do |question|
        puts question
      end
    end

    desc 'answers', 'Fetch 100 answers from the uscis website'
    def answers
      scraper.answers.each_with_index do |answer, index|
        puts "#{index + 1}. #{answer}"
      end
    end

    desc 'sample', 'Randomly pick a question'
    def sample
      ap scraper.questions.sample
    end

    desc 'question [id]', 'Get a question at the specified id'
    def question(id)
      index = (id.to_i - 1) % 100
      puts scraper.questions[index]
    end

    desc 'answer [id]', 'Get a answer at the specified id'
    def answer(id)
      index = (id.to_i - 1) % 100
      ap scraper.answers[index]
    end

    desc 'json', 'Fetch json of 100 questions and answers from the uscis website'
    def json
      puts JSON.pretty_generate(scraper.result)
    end

    private

    def scraper
      UscisQuizScraper::QuestionsScraper.new
    end
  end
end
