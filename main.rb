require './post'
require './comment'
require './user'


class Main

    def run
        person = User.new
        post = Post.new(person, 'Hedgehogs')
        comment = Comment.new(post, person)
    end

end

Main.new.run
