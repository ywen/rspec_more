module RspecMore
  module DataMapper
    def require_attribute(field)
      it "require #{field.inspect}" do
        object_name = self.described_class.to_s.demodulize.underscore
        object = subject || send(object_name)
        object.send("#{field}=", nil) 
        object.should_not be_valid
        subject.errors[field.to_sym].should_not be_nil
      end
    end
    def uniqueness_on(field)
      it "requires #{field} to be unique" do
        subject.save!
        object_name = self.send(:described_class).to_s.demodulize.underscore.to_sym
        another = self.send(:described_class).make object_name, field => subject.send(field)
        another.should_not be_valid
        subject.errors[field.to_sym].should_not be_nil
      end
    end
  end
end
