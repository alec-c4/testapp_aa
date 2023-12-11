require "rails_helper"

RSpec.describe "/api/events", type: :request do
  let(:valid_attributes) {
    {name: "test", description: "some description", event_date: Date.tomorrow, location: "somewhere over the rainbow", organizer_id: FactoryBot.create(:organizer).id}
  }

  let(:invalid_attributes) {
    {name: "", description: "some description", event_date: Date.tomorrow, location: "somewhere over the rainbow", organizer_id: nil}
  }

  describe "GET /api/index" do
    it "renders a successful response" do
      Event.create! valid_attributes
      get api_events_url
      expect(response).to be_successful
    end
  end

  describe "GET /api/show" do
    it "renders a successful response" do
      event = Event.create! valid_attributes
      get api_event_url(event)
      expect(response).to be_successful
    end
  end

  describe "POST /api/create" do
    context "with valid parameters" do
      it "creates a new Event" do
        expect {
          post api_events_url, params: {event: valid_attributes}
        }.to change(Event, :count).by(1)
      end

      it "returns correct response" do
        post api_events_url, params: {event: valid_attributes}
        expect(response).to be_successful
      end
    end

    context "with invalid parameters" do
      it "does not create a new Event" do
        expect {
          post api_events_url, params: {event: invalid_attributes}
        }.to change(Event, :count).by(0)
      end

      it "returns correct response" do
        post api_events_url, params: {event: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /api/update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {name: "new test"}
      }

      it "updates the requested event" do
        event = Event.create! valid_attributes
        patch api_event_url(event), params: {event: new_attributes}
        event.reload
        expect(event.name).to eq("new test")
      end

      it "returns correct response" do
        event = Event.create! valid_attributes
        patch api_event_url(event), params: {event: new_attributes}
        event.reload
        expect(response).to be_successful
      end
    end

    context "with invalid parameters" do
      it "returns correct response" do
        event = Event.create! valid_attributes
        patch api_event_url(event), params: {event: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /api/destroy" do
    it "destroys the requested event" do
      event = Event.create! valid_attributes
      expect {
        delete api_event_url(event)
      }.to change(Event, :count).by(-1)
    end

    it "returns correct response" do
      event = Event.create! valid_attributes
      delete api_event_url(event)
      expect(response).to be_successful
    end
  end
end
