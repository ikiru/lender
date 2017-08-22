class SessionaController < ApplicationController
  skip_before_action :require_login, only: [:createbank]
  skip_before_action :require_login, only: [:createborrower]

def createbank
    bank = Bank.find_by_email(params[:email]).try(:authenticate, params[:password])
    if bank
      p bank
        session[:bank_id] = bank.id
        return redirect_to "/borrower"
    else
        flash[:errors] = ['Too Too Bad, So Sad. This Combo will not work']
        return redirect_to :back
    end
end

def createborrower
    borrower = Borrower.find_by_email(params[:email]).try(:authenticate, params[:password])
    if borrower
      p borrower
        session[:borrow_id] = borrow.id
        return redirect_to "/borrower"
    else
        flash[:errors] = ['Too Too Bad, So Sad. This Combo will not work']
        return redirect_to :back
    end
end

  def destroybank
      session[:bank_id] = nil
      return redirect_to '/'
  end

  def destroyborrower
      session[:borrower_id] = nil
      return redirect_to '/'
  end

end
