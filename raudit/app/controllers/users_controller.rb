class UsersController < ApplicationController
 

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create

    #@user = User.create([{name: params[:name], email:  params[:email] ,password: params[:password], password_confirmation:params[:password] }])
    #@user = User.new(user_params)
    #@user = User.new([{name: params[:name], email:  params[:email] ,password: params[:password], password_confirmation:params[:password] }])
    puts user_params[ :name]
    @user = User.new do |u|
          u.name = user_params[ :name]
          u.email = user_params[ :email]
          u.password = user_params[ :password]
          u.password_confirmation = user_params[ :password]
    end
    
    respond_to do |format|
      if @user.save
        UserMailer.account_activation(@user).deliver_now
        flash[:info] = "Please check your email to activate your account."

        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :name, :password, :estado, :password_digest, :remember_digest)
    end
end
