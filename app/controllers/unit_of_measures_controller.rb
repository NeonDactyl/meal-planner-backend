class UnitOfMeasuresController < ApplicationController
    def create
        uom = UnitOfMeasure.new(unit_of_measure_params)
        uom.save
        render json: uom.to_json()
    end
    
    private

    def unit_of_measure_params
        params.require(:unit_of_measure).permit(:name)
    end
    
end
