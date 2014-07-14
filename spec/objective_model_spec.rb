
describe ObjectiveModel do
    it "should create a header and implementation file from the json input on the desired output location", :fakefs do
        json_string = '{ "id": 1, "name": "Jason", "last_name": "Statham" }'

        ObjectiveModel.transform_json(json_string, ".")

        expect(File.exists?("model.h")).to be true
        expect(File.exists?("model.m")).to be true
    end
end