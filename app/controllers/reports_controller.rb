class ReportsController < ApplicationController
  def company_report
    report = CompanyReportService.generate_report
    render json: report
  end
end
