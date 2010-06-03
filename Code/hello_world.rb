# http://github.com/sandal/prawn
require 'rubygems'
require 'prawn'

Prawn::Document::generate(
  'hello.pdf') do |pdf|
  pdf.text 'Hello World'
end