require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OneTimeStopsController do

  # This should return the minimal set of attributes required to create a valid
  # OneTimeStop. As you add validations to OneTimeStop, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OneTimeStopsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all one_time_stops as @one_time_stops" do
      one_time_stop = OneTimeStop.create! valid_attributes
      get :index, {}, valid_session
      assigns(:one_time_stops).should eq([one_time_stop])
    end
  end

  describe "GET show" do
    it "assigns the requested one_time_stop as @one_time_stop" do
      one_time_stop = OneTimeStop.create! valid_attributes
      get :show, {:id => one_time_stop.to_param}, valid_session
      assigns(:one_time_stop).should eq(one_time_stop)
    end
  end

  describe "GET new" do
    it "assigns a new one_time_stop as @one_time_stop" do
      get :new, {}, valid_session
      assigns(:one_time_stop).should be_a_new(OneTimeStop)
    end
  end

  describe "GET edit" do
    it "assigns the requested one_time_stop as @one_time_stop" do
      one_time_stop = OneTimeStop.create! valid_attributes
      get :edit, {:id => one_time_stop.to_param}, valid_session
      assigns(:one_time_stop).should eq(one_time_stop)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OneTimeStop" do
        expect {
          post :create, {:one_time_stop => valid_attributes}, valid_session
        }.to change(OneTimeStop, :count).by(1)
      end

      it "assigns a newly created one_time_stop as @one_time_stop" do
        post :create, {:one_time_stop => valid_attributes}, valid_session
        assigns(:one_time_stop).should be_a(OneTimeStop)
        assigns(:one_time_stop).should be_persisted
      end

      it "redirects to the created one_time_stop" do
        post :create, {:one_time_stop => valid_attributes}, valid_session
        response.should redirect_to(OneTimeStop.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved one_time_stop as @one_time_stop" do
        # Trigger the behavior that occurs when invalid params are submitted
        OneTimeStop.any_instance.stub(:save).and_return(false)
        post :create, {:one_time_stop => {}}, valid_session
        assigns(:one_time_stop).should be_a_new(OneTimeStop)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OneTimeStop.any_instance.stub(:save).and_return(false)
        post :create, {:one_time_stop => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested one_time_stop" do
        one_time_stop = OneTimeStop.create! valid_attributes
        # Assuming there are no other one_time_stops in the database, this
        # specifies that the OneTimeStop created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OneTimeStop.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => one_time_stop.to_param, :one_time_stop => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested one_time_stop as @one_time_stop" do
        one_time_stop = OneTimeStop.create! valid_attributes
        put :update, {:id => one_time_stop.to_param, :one_time_stop => valid_attributes}, valid_session
        assigns(:one_time_stop).should eq(one_time_stop)
      end

      it "redirects to the one_time_stop" do
        one_time_stop = OneTimeStop.create! valid_attributes
        put :update, {:id => one_time_stop.to_param, :one_time_stop => valid_attributes}, valid_session
        response.should redirect_to(one_time_stop)
      end
    end

    describe "with invalid params" do
      it "assigns the one_time_stop as @one_time_stop" do
        one_time_stop = OneTimeStop.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OneTimeStop.any_instance.stub(:save).and_return(false)
        put :update, {:id => one_time_stop.to_param, :one_time_stop => {}}, valid_session
        assigns(:one_time_stop).should eq(one_time_stop)
      end

      it "re-renders the 'edit' template" do
        one_time_stop = OneTimeStop.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OneTimeStop.any_instance.stub(:save).and_return(false)
        put :update, {:id => one_time_stop.to_param, :one_time_stop => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested one_time_stop" do
      one_time_stop = OneTimeStop.create! valid_attributes
      expect {
        delete :destroy, {:id => one_time_stop.to_param}, valid_session
      }.to change(OneTimeStop, :count).by(-1)
    end

    it "redirects to the one_time_stops list" do
      one_time_stop = OneTimeStop.create! valid_attributes
      delete :destroy, {:id => one_time_stop.to_param}, valid_session
      response.should redirect_to(one_time_stops_url)
    end
  end

end