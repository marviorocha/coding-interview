class CompanyReportService
  def self.generate_report
    companies = Company.includes(:users)

    report = companies.map do |company|
      {
        company_name: company.name,
        user_count: company.users.count
      }
    end

    report
  end

  def self.generate_report(company)
    # Logic to generate the report for the company
    {
      name: company.name,
      user_count: company.users.count,
      created_at: company.created_at
    }
  end
end
