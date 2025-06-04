class ReportMailer < ApplicationMailer
  def send_report(company, report)
    @company = company
    @report = report
    mail(to: 'admin@example.com', subject: "Report for #{company.name}")
  end
end
