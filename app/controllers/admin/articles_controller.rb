# frozen_string_literal: true

module Admin
  class ArticlesController < AdminController
    before_action :set_article, only: %i[show edit update destroy]

    # GET /articles or /articles.json
    def index
      @articles = Article.all
    end

    # GET /articles/1 or /articles/1.json
    def show; end

    # GET /articles/new
    def new
      if user_signed_in?
        if current_user.admin == true
          @article = Article.new
        else
          redirect_back fallback_location: root_path, notice: "User #{current_user.first_name} is not have permisions"
        end
      else
        redirect_back fallback_location: root_path, notice: 'Guest is not have permisions'
      end
    end

    # GET /articles/1/edit
    def edit
      if user_signed_in?
        if current_user.admin != true
          redirect_back fallback_location: root_path, notice: "User #{current_user.first_name} is not have permisions"
        end
      else
        redirect_back fallback_location: root_path, notice: 'Guest is not have permisions'
      end
    end

    # POST /articles or /articles.json
    def create
      @article = Article.new(article_params)

      respond_to do |format|
        if @article.save
          format.html { redirect_to article_url(@article), notice: 'Article was successfully created.' }
          format.json { render :show, status: :created, location: @article }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /articles/1 or /articles/1.json
    def update
      respond_to do |format|
        if @article.update(article_params)
          format.html { redirect_to article_url(@article), notice: 'Article was successfully updated.' }
          format.json { render :show, status: :ok, location: @article }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /articles/1 or /articles/1.json
    def destroy
      if user_signed_in?
        if current_user.admin == true
          @article.destroy

          respond_to do |format|
            format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
            format.json { head :no_content }
          end
        else
          redirect_back fallback_location: root_path, notice: "User #{current_user.first_name} is not have permisions"
        end
      else
        redirect_back fallback_location: root_path, notice: 'Guest is not have permisions'
      end
    end

    def search
      @article_search = Article.search(params[:keyword])
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:alt, :title, :caption, :content)
    end
  end
end
