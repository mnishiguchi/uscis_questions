require "spec_helper"
require "uscis_questions/cli"

describe UscisQuestions::Cli do
  let(:cli) { described_class.new }

  it "is valid" do
    expect(cli).not_to be nil
  end
end
