class Post

    attr_accessor :writer, :title, :comments

    def initialize(writer, title)
        @writer = writer
        @title = title
        @comments = []
        puts "I'm a post! LOL. Today we are talking about #{@title} with #{@writer.name}"
    end

end
