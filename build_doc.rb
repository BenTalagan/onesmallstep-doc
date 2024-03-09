#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'kramdown'

def build_doc(name, with_pdf: true, inliner: false )
  text = File.open("./#{name}.md", "rb:utf-8") {|f| f.read }

  File.open("#{name}.html", "wb") { |f|
    f << Kramdown::Document.new(text).to_html(:auto_ids => true)
  }

  if with_pdf
    %x(wkhtmltopdf -T 20 -B 20 --encoding 'utf-8' --enable-local-file-access "#{name}.html" "#{name}.pdf")
  end

  if inliner
    # Uses the inliner node module
    %x(mv "#{name}.html" "#{name}-tmp.html")
    %x(inliner "#{name}-tmp.html" > "#{name}.html")
    %x(rm "#{name}-tmp.html")
  end
end

# build_doc("MIDI CC Mapper X")
build_doc("One Small Step", with_pdf: false, inliner: false)
