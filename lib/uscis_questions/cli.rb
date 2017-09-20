require "awesome_print"
require "thor"
require "uscis_questions/scraper"

module UscisQuestions
  class Cli < Thor
    desc "questions", "Fetch 100 questions from the uscis website"
    def questions
      UscisQuestions::Scraper.new.questions.each do |question|
        puts question
      end
    end

    desc "answers", "Fetch 100 answers from the uscis website"
    def answers
      UscisQuestions::Scraper.new.answers.each_with_index do |answer, index|
        puts "#{index + 1}. #{answer}"
      end
    end

    desc "sample", "Randomly pick a question"
    def sample
      ap UscisQuestions::Scraper.new.questions.sample
    end

    desc "question [id]", "Get a question at the specified id"
    def question(id)
      index = (id.to_i - 1) % 100
      puts UscisQuestions::Scraper.new.questions[index]
    end

    desc "answer [id]", "Get a answer at the specified id"
    def answer(id)
      index = (id.to_i - 1) % 100
      ap UscisQuestions::Scraper.new.answers[index]
    end

    desc "json", "Fetch json of 100 questions and answers from the uscis website"
    def json
      puts UscisQuestions::Scraper.new.json
    end

    desc "hash", "Fetch ruby hash of 100 questions and answers from the uscis website"
    def hash
      puts UscisQuestions::Scraper.new.hash
    end

    desc "pretty_hash", "Fetch ruby hash of 100 questions and answers from the uscis website"
    def pretty_hash
      ap UscisQuestions::Scraper.new.hash
    end
  end
end
