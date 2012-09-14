require_relative '../practice'
require_relative '../email_parser'

require 'json'
require 'pry'

describe Practice do

  describe "#process" do
    describe "given a list of texts" do
      answers = File.readlines('./answers.json').map do |line|
        json = JSON.parse(line)
        { :name => json["name"], :email => json["email"]}
      end

      text = File.open('./texts.txt').read
      results = Practice.new.process(text)

      results.each do |result|
        it "results should include #{result}, as specified in the answers" do
          answers.should include(result)
        end
      end
    end
  end
end
