class ExpensesController < ApplicationController

	def index
		@expenses = Expense.all		
	end

	def show
		@expense = Expense.find(params[:id])
	end

	def new
		@expense = Expense.new
	end

	def edit 
		@expense = Expense.find(params[:id])
	end

	def create
		@expense = Expense.new(expense_params)

		if @expense.save
			redirect_to @expense
		else
			render 'new'
		end
	end

	def update
		@expense = Expense.find(params[:id])

		if @expense.update(expense_params)
			redirect_to @expense
		else
			render 'edit'
		end
	end

	def destroy
		@expense = Expense.find(params[:id])
		@expense.destroy
		
		redirect_to expense_path
	end

private
	def expense_params
		params.require(:expense).permit(:category_id, :date, :concept, :amount)

	end
end