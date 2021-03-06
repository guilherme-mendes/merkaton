class ProdutosController < ApplicationController

    before_action :set_produto, only: [:show, :edit, :update, :destroy]
    #Permissões (devise)
    before_action :authenticate_user!, only: [:vendedor, :new, :create, :edit, :update, :destroy]
    before_action :check_user, only: [:edit, :update, :destroy]
  

  
  def vendedor
    @produtos = Produto.where(user: current_user).order("created_at DESC")
  end

  # GET /produtos
  # GET /produtos.json
  def index
    
    @produtos = Produto.all.order("created_at DESC")
    
    @produtos = Produto.where(["nome LIKE ?","%#{params[:search]}%"])
  
  end
  
  # GET /produtos/1
  # GET /produtos/1.json
  def show
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(produto_params)
    #Produto --> user_id
    @produto.user_id = current_user.id

    respond_to do |format|
      if @produto.save
        format.html { redirect_to @produto, notice: 'Produto cadastrado com sucesso' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to @produto, notice: 'Produto foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:nome, :descrição, :preço, :image)
    end

    def check_user 
      if current_user.admin == false && current_user != @produto.user
        redirect_to root_url, alert: "Este produto pertence a alguém"
      end
    end
end
