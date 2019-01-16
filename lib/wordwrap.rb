#!/usr/bin/env ruby

# file: wordwrap.rb


class WordWrap

  attr_reader :to_s

  def initialize(s, cols=80)

    a = s.split(/ /).inject(['']) do |r,word|

      word.lines.each.with_index do |x,i|

        if ((r[-1] + x).length < cols) or x[/[=]/] then
          r[-1] << (r[-1].empty? ? x : ' ' + x)
        else
          r +=  [x]
        end
        r[-1] = r[-1].chomp ; r += [''] if x[-1] == "\n"

      end

      r

    end

    @to_s = a.join("\n")

  end

end

if __FILE__ == $0 then

  WordWrap.new(ARGV[0]).to_s

end
