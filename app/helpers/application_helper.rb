module ApplicationHelper
  def splur(int, one, two, five)
    sint = int.to_s
    int = sint[-2..-1].to_i
    return sint + ' ' + five if int > 9 && int < 20
    int = sint[-1].to_i
    return sint + ' ' + one if int == 1
    return sint + ' ' + two if int > 1 && int < 5
    return sint + ' ' + five
  end
end
