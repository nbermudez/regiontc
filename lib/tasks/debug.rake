namespace :debug do
  desc 'It prints the files urls to make sure that there are actually being saved'
  task :print_file_urls => :environment do
    articles = Article.all
    articles.each do |article|
      puts "Article Id: #{article.id}"
      puts "Article Resource file: #{article.resource.file}"
      puts "Article Url attribute: #{article.resource.url}"
      puts '--------------------------------------'
    end
  end
end