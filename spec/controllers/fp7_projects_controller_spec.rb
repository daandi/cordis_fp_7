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

describe Fp7ProjectsController do

  # This should return the minimal set of attributes required to create a valid
  # Fp7Project. As you add validations to Fp7Project, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "rcn" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Fp7ProjectsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fp7_projects as @fp7_projects" do
      fp7_project = Fp7Project.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fp7_projects).should eq([fp7_project])
    end
  end

  describe "GET show" do
    it "assigns the requested fp7_project as @fp7_project" do
      fp7_project = Fp7Project.create! valid_attributes
      get :show, {:id => fp7_project.to_param}, valid_session
      assigns(:fp7_project).should eq(fp7_project)
    end
  end

  describe "GET new" do
    it "assigns a new fp7_project as @fp7_project" do
      get :new, {}, valid_session
      assigns(:fp7_project).should be_a_new(Fp7Project)
    end
  end

  describe "GET edit" do
    it "assigns the requested fp7_project as @fp7_project" do
      fp7_project = Fp7Project.create! valid_attributes
      get :edit, {:id => fp7_project.to_param}, valid_session
      assigns(:fp7_project).should eq(fp7_project)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fp7Project" do
        expect {
          post :create, {:fp7_project => valid_attributes}, valid_session
        }.to change(Fp7Project, :count).by(1)
      end

      it "assigns a newly created fp7_project as @fp7_project" do
        post :create, {:fp7_project => valid_attributes}, valid_session
        assigns(:fp7_project).should be_a(Fp7Project)
        assigns(:fp7_project).should be_persisted
      end

      it "redirects to the created fp7_project" do
        post :create, {:fp7_project => valid_attributes}, valid_session
        response.should redirect_to(Fp7Project.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fp7_project as @fp7_project" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fp7Project.any_instance.stub(:save).and_return(false)
        post :create, {:fp7_project => { "rcn" => "invalid value" }}, valid_session
        assigns(:fp7_project).should be_a_new(Fp7Project)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fp7Project.any_instance.stub(:save).and_return(false)
        post :create, {:fp7_project => { "rcn" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fp7_project" do
        fp7_project = Fp7Project.create! valid_attributes
        # Assuming there are no other fp7_projects in the database, this
        # specifies that the Fp7Project created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fp7Project.any_instance.should_receive(:update).with({ "rcn" => "MyString" })
        put :update, {:id => fp7_project.to_param, :fp7_project => { "rcn" => "MyString" }}, valid_session
      end

      it "assigns the requested fp7_project as @fp7_project" do
        fp7_project = Fp7Project.create! valid_attributes
        put :update, {:id => fp7_project.to_param, :fp7_project => valid_attributes}, valid_session
        assigns(:fp7_project).should eq(fp7_project)
      end

      it "redirects to the fp7_project" do
        fp7_project = Fp7Project.create! valid_attributes
        put :update, {:id => fp7_project.to_param, :fp7_project => valid_attributes}, valid_session
        response.should redirect_to(fp7_project)
      end
    end

    describe "with invalid params" do
      it "assigns the fp7_project as @fp7_project" do
        fp7_project = Fp7Project.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fp7Project.any_instance.stub(:save).and_return(false)
        put :update, {:id => fp7_project.to_param, :fp7_project => { "rcn" => "invalid value" }}, valid_session
        assigns(:fp7_project).should eq(fp7_project)
      end

      it "re-renders the 'edit' template" do
        fp7_project = Fp7Project.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fp7Project.any_instance.stub(:save).and_return(false)
        put :update, {:id => fp7_project.to_param, :fp7_project => { "rcn" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fp7_project" do
      fp7_project = Fp7Project.create! valid_attributes
      expect {
        delete :destroy, {:id => fp7_project.to_param}, valid_session
      }.to change(Fp7Project, :count).by(-1)
    end

    it "redirects to the fp7_projects list" do
      fp7_project = Fp7Project.create! valid_attributes
      delete :destroy, {:id => fp7_project.to_param}, valid_session
      response.should redirect_to(fp7_projects_url)
    end
  end

end