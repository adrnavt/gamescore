class TopicsController < ApplicationController


  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  @post = Post.new
  
  end

 def create  
 @topic = Topic.new(:name => params[:topic][:name], :last_poster_id => current_user.id, :last_post_at => Time.now, :forum_id => params[:topic][:forum_id], :user_id => current_user.id)     
    @post = Post.new(params[:post])
    

  if @topic.save  
  	@topic.forum_id = params[:forum]
  	@topic.last_poster_id = current_user.id
  	@topic.user_id = current_user.id
  	@topic.last_post_at = Time.now
  	
  	@post.topic_id = @topic.id
  	@post.user_id = current_user.id
  	@post.update_attributes(params[:post])
  	@topic.update_attributes(params[:topic])
  redirect_to "/forums/#{@topic.forum_id}"
    
  else  
    render :action => 'new'  
  end  
end  

  

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    flash[:notice] = "Successfully destroyed topic."
    redirect_to "/forums/#{@topic.forum_id}"  
  end
end
