class CompanyReportJob < ApplicationJob
  queue_as :default

  def perform(company_id)
    company = Company.find(company_id)
    report = CompanyReportService.generate_report(company)

    # Logic to save or send the report
    # For example, email the report or save it to a file
    ReportMailer.send_report(company, report).deliver_now
  end
end
