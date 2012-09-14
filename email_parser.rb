class EmailParser

  def self.parse(text)
    regex = /(?:"(?<name>[\D]+)"\s+)?[<\[]?(mailto:)?(?<local>\S*)@(?<domain>[^\s>\]]*)[\s>\]]?/i

    text.scan(regex).map do |match|
      { :name => match[0].to_s, :local => match[1].downcase, :domain => match[2].downcase }
    end
  end
end

require 'json'

lines = File.readlines('./texts.json')
json = JSON.parse(lines[4])
text = %q(1. chad.pry@gmail.com
2. Chad <chad.pry@gmail.com>
6. "Chad Pry (Instructor)" <chad.pry@gmail.com>
8. "Chad Pry" <chad.pRY@gmail.com>
4. "Chad Pry" [mailto:chad.pry@gmail.com])
puts EmailParser.parse(text).inspect
