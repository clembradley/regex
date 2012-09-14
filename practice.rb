require './email_parser'

class Practice

  def process(text)
    EmailParser.parse(text).map do |result|
      { :name => result[:name], :email => (result[:local] + "@" + result[:domain]) }
    end
  end
end
