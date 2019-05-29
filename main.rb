$: << File.join(__dir__, "helpers")
require 'autoload'

library = Library.new

at_exit {
    puts "Good Bye!"
}