class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :name, :password, :estado, :password_digest, :remember_digest)
    end
end
