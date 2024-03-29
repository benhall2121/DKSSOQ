class DkssoqMailer < ActionMailer::Base
  include ApplicationHelper
  default :from => "Website@benerino.com"
  
  def proposal_email(proposal)
    @proposal = proposal
    mail(:to => "rsh@dksassociates.com", :subject => "ANUM: #{proposal.anum} - A new proposal has been made.")
  end
end
