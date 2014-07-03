require 'asciidoctor'
require 'erb'
require 'github/markdown'

guard 'shell' do
  watch(/^.+\.a(scii)?doc$/) do |m|
    Asciidoctor.render_file(m[0], :in_place => true, :safe => :unsafe)
  end

  watch(/^.+\.(md|markdown)$/) do |m|
    html_file = m[0].sub(/.[^.]+$/, '.html')
    File.open(html_file, 'w') do |file|
      file.puts %q{<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">}
      file.puts File.open("guard-md.css").read
      file.puts %q{</style>
</head>}
      file.puts GitHub::Markdown.render(File.open(m[0]).read)
      file.puts %q{</html>}
    end
  end

  watch(/^.+\.rst$/) do |m|
    html_file = m[0].sub(/.[^.]+$/, '.html')
    `rst2html --stylesheet=guard-rst.css #{m[0]} #{html_file}`
  end
end

guard 'livereload' do
  watch(%r{^.+\.(css|js|html)$})
end
