require 'test_helper'

class MatricreportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matricreport = matricreports(:one)
  end

  test "should get index" do
    get matricreports_url
    assert_response :success
  end

  test "should get new" do
    get new_matricreport_url
    assert_response :success
  end

  test "should create matricreport" do
    assert_difference('Matricreport.count') do
      post matricreports_url, params: { matricreport: { centre_no: @matricreport.centre_no, emis: @matricreport.emis, failure_rate2015: @matricreport.failure_rate2015, failure_rate2016: @matricreport.failure_rate2016, failure_rate: @matricreport.failure_rate, pass_rate2015: @matricreport.pass_rate2015, pass_rate2016: @matricreport.pass_rate2016, pass_rate: @matricreport.pass_rate, passed_2014: @matricreport.passed_2014, passed_2015: @matricreport.passed_2015, passed_2016: @matricreport.passed_2016, school_name: @matricreport.school_name, wrote_2014: @matricreport.wrote_2014, wrote_2015: @matricreport.wrote_2015, wrote_2016: @matricreport.wrote_2016 } }
    end

    assert_redirected_to matricreport_url(Matricreport.last)
  end

  test "should show matricreport" do
    get matricreport_url(@matricreport)
    assert_response :success
  end

  test "should get edit" do
    get edit_matricreport_url(@matricreport)
    assert_response :success
  end

  test "should update matricreport" do
    patch matricreport_url(@matricreport), params: { matricreport: { centre_no: @matricreport.centre_no, emis: @matricreport.emis, failure_rate2015: @matricreport.failure_rate2015, failure_rate2016: @matricreport.failure_rate2016, failure_rate: @matricreport.failure_rate, pass_rate2015: @matricreport.pass_rate2015, pass_rate2016: @matricreport.pass_rate2016, pass_rate: @matricreport.pass_rate, passed_2014: @matricreport.passed_2014, passed_2015: @matricreport.passed_2015, passed_2016: @matricreport.passed_2016, school_name: @matricreport.school_name, wrote_2014: @matricreport.wrote_2014, wrote_2015: @matricreport.wrote_2015, wrote_2016: @matricreport.wrote_2016 } }
    assert_redirected_to matricreport_url(@matricreport)
  end

  test "should destroy matricreport" do
    assert_difference('Matricreport.count', -1) do
      delete matricreport_url(@matricreport)
    end

    assert_redirected_to matricreports_url
  end
end
