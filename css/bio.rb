require 'rubygems'
require 'redcarpet'

bio = <<-BIO
## Bio

My name is Dana Woodman and I'm a software developer living in Sonoma County, California.

BIO

md = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
puts md.render(bio)
