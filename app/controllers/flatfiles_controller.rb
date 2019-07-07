class FlatfilesController < ApplicationController
  before_action :set_flatfile, only: [:show, :update, :destroy]


  # GET /flatfiles
  def index
    #@flatfiles = Flatfile.all

    @flatfiles = Flatfile.pluck(:package_names, :function_names)

    render json: @flatfiles
  end

  # GET /flatfiles/1
  # def show
  #   render json: @flatfile
  # end

  # POST /flatfiles
  def create
    @flatfile = Flatfile.new(flatfile_params)

    if @flatfile.save
      render json: @flatfile, status: :created # , location: @flatfile # Don't need this location argument, since we don't want to redirect, see here: https://stackoverflow.com/questions/56917332/how-to-stop-redirect-after-post-create-in-rails-api-nomethoderror-undefined-m
      # https://stackoverflow.com/questions/23582389/rails-nomethoderror-undefined-method-url-for-controller-i-cant-seem-to-res
      
    else
      render json: @flatfile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flatfiles/1
  # def update
  #   if @flatfile.update(flatfile_params)
  #     render json: @flatfile
  #   else
  #     render json: @flatfile.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /flatfiles/1
  # def destroy
  #   @flatfile.destroy
  # end


# See here: https://stackoverflow.com/questions/56825149/curl-command-to-delete-from-rails-api-based-on-where-predicate
def custom_destroy
  @flatfiles = Flatfile.filtered(filter_params)
  @flatfiles.destroy_all
end








  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flatfile
      @flatfile = Flatfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flatfile_params
      params.require(:flatfile).permit(:package_names, :function_names)
    end



  def filter_params
    params.permit(:id, :package_names)
  end


end
