class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /pedidos
  # GET /pedidos.json
  
  def vendas
    @pedidos = Pedido.all.where(vendedor: current_user).order("created_at DESC")
  end

  def compras
    @pedidos = Pedido.all.where(comprador: current_user).order("created_at DESC")
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
    @produto = Produto.find(params[:produto_id])
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)
    @produto = Produto.find(params[:produto_id])
    @vendedor = @produto.user

    #PREENCHE AS COLUNAS DO BANCO COM ID DO USER CONECTADO
    @pedido.produto_id = @produto.id
    @pedido.comprador_id = current_user.id
    @pedido.vendedor_id = @vendedor.id

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to root_url, notice: 'Compra realizada com sucesso!' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:endereco, :cidade, :estado)
    end
end
