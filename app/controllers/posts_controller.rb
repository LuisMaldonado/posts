class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  def indexadmi
    @posts = Post.all
  end 
 
 def dislike
   @posts = Post.find(params[:id])
  if @posts.like==0 || @post.like==nil
    @posts.like=0
  else
    @posts.like=@posts.like-1
  end
  @posts.save
  redirect_to "/"
 end 

  def dislike2
  @posts = Post.find(params[:id])
  if @posts.like==0|| @post.like==nil
    @posts.like=0
  else
    @posts.like=@posts.like-1
  end
  @posts.save
  redirect_to @posts
 end 

  def report
    @post=Post.all
    @comentarios=Review.all
  end

  def search
    @post=Post.all
    @palabra= params[:palabra]
  end

  def filtrar
    @posts=Post.where("category == :categoria",categoria: params[:categoria])
  end

  def save
    @post=Post.find(params[:id])
    @comentario=Review.new
    @comentario.post_id=@post.id
    @comentario.coment = params[:review][:coment]
    @comentario.save
    redirect_to @post
  end

  def like
    @posts= Post.find(params[:id])
    if @posts.like==nil
    @posts.like=0
    end
    @posts.like=@posts.like+1
    @posts.save
    redirect_to "/posts"
  end

  def like2
    @posts= Post.find(params[:id])
    if @posts.like==nil
    @posts.like=0
    end
    @posts.like=@posts.like+1
    @posts.save
    redirect_to @posts
  end

  def comment
     @post=Post.find(params[:id])
     @comentario=Review.new
    end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

      if @post.save
        redirect_to "/posts/admi"
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    
      if @post.update(post_params)
         redirect_to "/posts/admi"
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
  
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
     redirect_to "/posts/admi"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :text, :like, :category)
    end
end
