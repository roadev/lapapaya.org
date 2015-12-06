class PedidosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @pedidos = Pedido.all
  end

  def show
  end

  def new
    @pedido = Pedido.new
  end

  def edit
  end

  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Su pedido ha sido creado, en menos de 24 horas nos pondrémos en contacto con usted para confirmar su orden y programar la fecha de entrega. Cualquier duda comunicarse al 3207217643 o al email admin@lapapaya.org, con gusto lo atenderemos' }
        format.json { render action: 'show', status: :created, location: @pedido }
      else
        format.html { render action: 'new' }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url }
      format.json { head :no_content }
    end
  end

  private
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    def pedido_params
      params.require(:pedido).permit(:Nombre, :Razon_social, :Nit, :Direccion, :Telefono, :Nombre_representante, :Persona_contacto, :Pedido)
    end
end
