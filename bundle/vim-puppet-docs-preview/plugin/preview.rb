#!/usr/bin/env ruby

# This script reads a file from standard input, renders it in the preview template,
# and writes the resulting HTML to /tmp/filename.html.
# Following that, it attempts to open the file in Chrome.

require 'kramdown'
require 'erb'
require 'shellwords'

filename = ARGV[0].split("/").last
converted_filename = filename.sub(/\.(markdown|md|textile)$/, '.html')

markdown_content = ARGF.read
html_content = Kramdown::Document.new(markdown_content).to_html

template_path = File.expand_path('docs_preview_template.html', File.dirname(__FILE__))
template = File.read(template_path)

output = template.gsub('#DOCUMENT_CONTENT#', html_content)
File.open("/tmp/#{converted_filename}", 'w') {|fout| fout.puts output}

exec "open /tmp/#{converted_filename.shellescape} -a /Applications/Google\\ Chrome.app"
