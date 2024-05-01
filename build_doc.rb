#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'kramdown'

def build_doc(name, with_pdf: true)
  text = File.open("./#{name}.md", "rb:utf-8") {|f| f.read }

  File.open("#{name}.html", "wb") { |f|
    f << Kramdown::Document.new(text).to_html(:auto_ids => true)
  }

  if with_pdf
    %x(wkhtmltopdf -T 20 -B 20 --encoding 'utf-8' --enable-local-file-access "#{name}.html" "#{name}.pdf")
  end

end

build_doc("v0.9.6", with_pdf: false)
build_doc("v0.9.7", with_pdf: false)
build_doc("v0.9.8", with_pdf: false)
build_doc("v0.9.9", with_pdf: false)
build_doc("v0.9.10", with_pdf: false)
build_doc("v0.9.11", with_pdf: false)
build_doc("v0.9.12", with_pdf: false)

build_doc("index", with_pdf: false)