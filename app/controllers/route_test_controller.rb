class RouteTestController < ApplicationController


  def show
    @available_methods = %w{action_test show unprocessable i check test}
  end

  def action_test
    render_params_as_preformatted_text
  end

  def test
    render_params_as_preformatted_text
  end

  def unprocessable
    render :status => '501 Ez itt most egy hülyeség error' + '.. ' * 25 , :text => 'this is text'
  end

  def i
    Rails.logger.debug "evaulating: #{params[:block]}"
    render :text => eval(params[:id]).to_json
  end

  def check
    render_params_as_preformatted_text
  end

protected

  def render_params_as_preformatted_text
    ret = params.map{|k,v| "#{k}: #{v}"}.join("\n")
    render :text => "<pre>#{ret}</pre>" 
  end
end
