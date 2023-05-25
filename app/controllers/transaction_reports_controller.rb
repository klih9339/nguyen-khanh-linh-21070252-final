class TransactionReportsController < ApplicationController
  before_action :set_transaction_report, only: %i[ show edit update destroy ]

  # GET /transaction_reports or /transaction_reports.json
  def index
    @transaction_reports = TransactionReport.all
  end

  # GET /transaction_reports/1 or /transaction_reports/1.json
  def show
  end

  # GET /transaction_reports/new
  def new
    @transaction_report = TransactionReport.new
  end

  # GET /transaction_reports/1/edit
  def edit
  end

  # POST /transaction_reports or /transaction_reports.json
  def create
    @transaction_report = TransactionReport.new(transaction_report_params)

    respond_to do |format|
      if @transaction_report.save
        format.html { redirect_to transaction_report_url(@transaction_report), notice: "Transaction report was successfully created." }
        format.json { render :show, status: :created, location: @transaction_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_reports/1 or /transaction_reports/1.json
  def update
    respond_to do |format|
      if @transaction_report.update(transaction_report_params)
        format.html { redirect_to transaction_report_url(@transaction_report), notice: "Transaction report was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_reports/1 or /transaction_reports/1.json
  def destroy
    @transaction_report.destroy

    respond_to do |format|
      format.html { redirect_to transaction_reports_url, notice: "Transaction report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_report
      @transaction_report = TransactionReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_report_params
      params.require(:transaction_report).permit(:customer_id, :order_id, :product_id, :payment_id)
    end
end
