module RspecMore
  module DataMapper
    def require_attribute(field)
      it "require #{field.inspect}" do
        object_name = self.described_class.to_s.demodulize.underscore
        object = send(object_name)
        object.send("#{field}=", nil) 
        object.should_not be_valid
        object.errors.should have_key(field.to_sym)
      end
    end
  end
end
