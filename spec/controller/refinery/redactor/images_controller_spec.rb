require 'spec_helper'

module Refinery
  module Redactor
    describe ImagesController, type: :controller do
      refinery_login_with :refinery

      describe "POST create" do
        subject { post :create, file: file }

        context "is valid" do
          let(:file) do
            fixture_file_upload(File.join(Refinery::Redactor.root, 'spec', 'fixtures', 'image.jpg'))
          end

          it "persists record" do
            expect {
              subject
            }.to change(Refinery::Image, :count).by(1)
          end

          it "responds with correct JSON" do
            subject
            expect(JSON.parse(response.body)).to have_key 'filelink'
            expect(JSON.parse(response.body)).to have_key 'url'
            expect(JSON.parse(response.body)).to have_key 'id'
          end
        end

        context "is not valid" do
          let(:file) { nil }
          it "returns correct status code" do
            subject
            expect(response.status).to eq 406
          end

          it "returns errors" do
            subject
            expect(JSON.parse(response.body)).to have_key "errors"
          end
        end
      end
    end
  end
end
