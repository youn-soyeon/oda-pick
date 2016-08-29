class PostsController < ApplicationController

  def index # 기존의 gift_list
  @posts = Post.all
  end

# C-------------------------------------
  def new   # 기존의 submit
  @post = Post.new
  end

  def create
  post = Post.new(post_params)
  post.save

  redirect_to post_path(post)
  end



# R-------------------------------------
  def show  # 기존의 detail
  @post = Post.find(params[:id])
  end


# U-------------------------------------
  def edit
    @post = Post.find(params[:id])
  end

  def update
  post = Post.find(params[:id])
  post.update(post_params)

  redirect_to post_path(post)
  end


# D-------------------------------------
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  redirect_to posts_path

  end
  def admin
    @posts = Post.all
  end

  def admin_user     #관리자페이지
    @posts = Post.all
    @users = User.all
  end

  def admin_content  #관리자페이지
    @posts = Post.all
  end

#끝

# 댓글부분
def reply_create
  @replies = Reply.all.order("id desc")
  reply = Reply.new
  reply.re_content =    params[:content_of_re] #뒤에콘텐츠는 index 에서의 name값이다.
  reply.post_id =       params[:post_of_re]
  reply.present_point = params[:point]
  reply.save
  redirect_to :back
end



    private #넘어온파라미터를 private함수로 사용한다.
    def post_params #포스트 디비안의 파라미터들
     params.require(:post).permit(:title, :content , :url, :anniversary,
     :age_group, :gift_gender, :money)
    end

    def user_parmas
      params.require(:user).permit(:email)
    end

end
