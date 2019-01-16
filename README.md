# Introducing the wordwrap gem

## Installation

`gem install wordwrap`

## Usage

    require 'wordwrap'

    msg = 'This makes the possibility of breaking up a string alot easier than simply writing your own.'
    s = WordWrap.new(msg, 30).to_s
    puts s

output:

<pre>
This makes the possibility of
breaking up a string alot
easier than simply writing
your own.
</pre>

    s.split(/\n/).map(&:length)
    #=> [29, 25, 26, 9] 


    msg = 'Today is Wednesday'
    s = WordWrap.new(msg, 30).to_s
    a = s.split(/\n/)
    #=> ["Today is Wednesday"]

## Resources 

* wordwrap https://rubygems.org/gems/wordwrap

word_wrap wordwrap wrap slice
