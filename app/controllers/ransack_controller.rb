class RansackController < ApplicationController
	def index
		@q = ZipCode.ransack(params[:q])
		@zip_codes1 = @q.result.includes(:state).page(params[:page])
		@zip_codes2 = @q.result.includes(:state).page(params[:page])
	end

	def table_one
		ransack_params = params.require(:q).permit!
		@q = ZipCode.includes(:state).ransack(params[:q])
		# byebug
		@zip_codes1 = @q.result.page(params[:page])
		# byebug
		render partial: 'table_one'
	end

	def table_two
		@q = ZipCode.ransack(params[:q])
		@zip_codes2 = @q.result.includes(:state).page(params[:page])
		render partial: 'table_two'
	end

	protected

	def search_results
		#@@q.result.includes(:state).page(params[:page])
		nil
	end
		
end
