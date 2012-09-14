require_relative '../email_parser'

require 'json'

describe EmailParser do

  describe "#parse" do
    File.readlines('./texts.json').each do |line|
      continue if line.strip.empty?
      json = JSON.parse(line)

      describe "with input: #{json["text"]}" do
        [:name, :local, :domain].each do |part|
          it "captures the #{part}: #{json[part.to_s]}" do
            result = EmailParser.parse(json["text"]).first
            result[part].should == json[part.to_s]
          end
        end
      end
    end
  end
end
