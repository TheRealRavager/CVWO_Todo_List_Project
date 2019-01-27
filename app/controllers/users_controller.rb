class UsersController < ApplicationController
	before_action :boot_non_admins, except: [:new, :create, :edit, :update] #need to add a way for users to edit only their own details
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

	def edit
		check_user unless check_admin
  end

	def create
		# If user creation or edit is cancelled, send admins back to users page and non-admins to main page
		if params[:cancel]
			if check_admin
				redirect_to users_path
			else
				redirect_to root_path
			end
		else
			@user = User.new(user_params)
			respond_to do |format|
				if @user.save
					if check_admin
						format.html { redirect_to users_path, notice: 'User was successfully created.' }
					else
						format.html { redirect_to root_path, notice: 'User was successfully created.' }
					end
				else
					format.html { render :new }
					format.json { render json: @user.errors, status: :unprocessable_entity }
				end
			end
		end
  end

	def update
		if params[:cancel]
			if check_admin
				redirect_to users_path
			else
				redirect_to root_path
			end
		else
			respond_to do |format|
				if @user.update(user_params)
					if check_admin
						format.html { redirect_to users_path, notice: 'User was successfully updated.' }
					else
						format.html { redirect_to root_path, notice: 'User was successfully updated.' }
					end
					format.json { render :show, status: :ok, location: @user }
				else
					format.html { render :edit }
					format.json { render json: @user.errors, status: :unprocessable_entity }
				end
			end
		end
  end

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
      params.require(:user).permit(:username, :password, :password_confirmation, :role, :cancel)
		end
		

		def check_user
			if current_user != @user
				redirect_to root_path, alert: 'You do not have permission to access that page.'
			end
		end
end
