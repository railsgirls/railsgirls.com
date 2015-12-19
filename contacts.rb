# This script extracts all the email addresses found in all files.
# The resulting data isn't perfect, but the quickest way to get
# contact information for all Rails Girlschapters.

emails = Dir['*.html'].flat_map do |file|
  html = File.read(file)
  puts File.basename(file, '.html')
  html.scan(/mailto:([^"'\?>]+)/).flatten.uniq.each do |email|
    puts " * #{email}"
  end
  puts "-" * 50
end
