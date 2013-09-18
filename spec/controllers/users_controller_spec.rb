require 'spec_helper'

describe UsersController do
  describe "GET new" do
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do
    context "with valid input" do
      
      before { post :create, user: Fabricate.attributes_for(:user) }
      
      it "creates the user" do
        expect(User.count).to eq(1)
      end 
      
      it "redirects to the sign in page" do
        expect(response).to redirect_to login_path
      end
    end

    context "with invalid input" do
      it "does not create the user" do
        post :create, user: { password: 'password', name: "Chase Merlin" }
        expect(User.count).to eq(0)
      end
      it "renders the :new template" do
        post :create, user: { password: 'password', name: "Chase Merlin" }
        expect(response).to render_template :new
      end
      it "sets @user" do
        post :create, user: { password: 'password', name: "Chase Merlin" }
        expect(assigns(:user)).to be_instance_of(User)
      end
    end

    context "sending emails" do
      after { ActionMailer::Base.deliveries.clear }

      it "sends out email to the user with valid inputs" do
        post :create, user: { email: "joe@example.com", password: "password", name: "Joe" }
        expect(ActionMailer::Base.deliveries.last.to).to eq(['joe@example.com'])
      end
      it "sends out email contianing the user's name with valid inputs" do
        post :create, user: { email: "joe@example.com", password: "password", name: "Joe" }
        expect(ActionMailer::Base.deliveries.last.body).to include('Joe')
      end
      it "does not send out email with invalid inputs" do
        post :create, user: { email: "", password: "password", name: "Joe" }
        expect(ActionMailer::Base.deliveries).to be_empty
      end
    end
  end

  describe "GET show" do
    it_behaves_like "requires sign in" do
      let(:action) { get :show, id: Fabricate(:user).id }
    end

    it "sets @user" do
      set_current_user
      susan = Fabricate(:user)
      get :show, id: susan.id
      expect(assigns(:user)).to eq(susan)
    end
  end
end