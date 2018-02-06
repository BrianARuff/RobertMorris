class StaticPagesController < ApplicationController
  def home
    @quote_of_the_day = QuoteOfTheDay.first
    @books = Book.last
  end

  def about
  end

  def contact
  end

  def seminars
  end

  def videos
  end

  def REBAC
  end

  def rebi
  end

  def CE
  end

  def keynote
  end

  def wcr
  end

  def books
  end
end
