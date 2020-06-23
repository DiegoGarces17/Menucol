class RestaurantesController < ApplicationController
    def index
        @restaurantes = Restaurante.all
        end
    def new
        @restaurante = Restaurante.new
    end    
    
    def create 
        @restaurante = Restaurante.new(restaurante_params)
        if @restaurante.save
            redirect_to restaurantes_path 
        else
        render :new
        end
    end
    def show
        @restaurante = Restaurante.find(params[:id])
    end
    def edit
        @restaurante = Restaurante.find(params[:id])
    end    
    def update
        @restaurante = Restaurante.find(params[:id])
        if @restaurante.update(restaurante_params)
            redirect_to restaurante_path
        else
            render :edit
        end
    end
    def destroy
        @restaurante = Restaurante.find(params[:id])
        @restaurante.destroy
        redirect_to restaurantes_path, :notice => "El restaurante a sido eliminado"
    end


    private
    def restaurante_params
        params.require(:restaurante). permit(:nombre, :direccion, :telefono)
    end

end
