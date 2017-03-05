require 'open-uri'
require 'nokogiri'
require './post'
require './comment'
require './user'

class Main

    def run
        # curl -k https://news.ycombinator.com/item?id=7663775 > post.html
        post_url = ARGV.first

        if !post_url
            puts "Please provide a URL"
            return false
        end

        html_file = open(post_url)
        html_strings = html_file.read
        doc = Nokogiri::HTML(html_strings)

        person = User.new
        post_title = doc.search('.title > a:first-child').map { |link| link.inner_text }
        post = Post.new(person, post_title)
        puts "Post Title: #{post.title}"

        post_comments = doc.search('.comment > span:first-child').map { |span| span.inner_text }
        post_comments.each do |message|
            new_comment = Comment.new(post, message)
            post.add_comment(new_comment)
        end
        puts "Number of Comments: #{post.comments.count}"

    end

end

Main.new.run
