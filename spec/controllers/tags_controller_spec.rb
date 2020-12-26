# frozen_string_literal: true

require 'rails_helper'

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

RSpec.describe TagsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Tag. As you add validations to Tag, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all tags as @tags' do
      tag = Tag.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:tags)).to eq([tag])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested tag as @tag' do
      tag = Tag.create! valid_attributes
      get :show, params: { id: tag.to_param }, session: valid_session
      expect(assigns(:tag)).to eq(tag)
    end
  end

  describe 'GET #new' do
    before do
      sign_in create(:user)
    end

    it 'assigns a new tag as @tag' do
      get :new, params: {}, session: valid_session
      expect(assigns(:tag)).to be_a_new(Tag)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested tag as @tag' do
      tag = Tag.create! valid_attributes
      get :edit, params: { id: tag.to_param }, session: valid_session
      expect(assigns(:tag)).to eq(tag)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Tag' do
        expect do
          post :create, params: { tag: valid_attributes }, session: valid_session
        end.to change(Tag, :count).by(1)
      end

      it 'assigns a newly created tag as @tag' do
        post :create, params: { tag: valid_attributes }, session: valid_session
        expect(assigns(:tag)).to be_a(Tag)
        expect(assigns(:tag)).to be_persisted
      end

      it 'redirects to the created tag' do
        post :create, params: { tag: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Tag.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved tag as @tag' do
        post :create, params: { tag: invalid_attributes }, session: valid_session
        expect(assigns(:tag)).to be_a_new(Tag)
      end

      it "re-renders the 'new' template" do
        post :create, params: { tag: invalid_attributes }, session: valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested tag' do
        tag = Tag.create! valid_attributes
        put :update, params: { id: tag.to_param, tag: new_attributes }, session: valid_session
        tag.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested tag as @tag' do
        tag = Tag.create! valid_attributes
        put :update, params: { id: tag.to_param, tag: valid_attributes }, session: valid_session
        expect(assigns(:tag)).to eq(tag)
      end

      it 'redirects to the tag' do
        tag = Tag.create! valid_attributes
        put :update, params: { id: tag.to_param, tag: valid_attributes }, session: valid_session
        expect(response).to redirect_to(tag)
      end
    end

    context 'with invalid params' do
      it 'assigns the tag as @tag' do
        tag = Tag.create! valid_attributes
        put :update, params: { id: tag.to_param, tag: invalid_attributes }, session: valid_session
        expect(assigns(:tag)).to eq(tag)
      end

      it "re-renders the 'edit' template" do
        tag = Tag.create! valid_attributes
        put :update, params: { id: tag.to_param, tag: invalid_attributes }, session: valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested tag' do
      tag = Tag.create! valid_attributes
      expect do
        delete :destroy, params: { id: tag.to_param }, session: valid_session
      end.to change(Tag, :count).by(-1)
    end

    it 'redirects to the tags list' do
      tag = Tag.create! valid_attributes
      delete :destroy, params: { id: tag.to_param }, session: valid_session
      expect(response).to redirect_to(tags_url)
    end
  end
end
