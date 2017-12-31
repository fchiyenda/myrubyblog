class PostCommentsController < InheritedResources::Base

  def create
    @post_comment = PostComment.new(params.require(:post_comment).permit(:name, :email, :body, :post_id))
    if @post_comment.save
     	flash[:notice] = "Comment was sucessfully created."
     	redirect_to(@post_comment.post)
    else
    	flash[:notice] = "Error creating post_comment: #{@post_comment.errors}"
     	redirect_to(@post_comment.post)
      end
   end
end

