module RspecMore
  module ActiveRecord
    def require_attribute(field)
      it "require #{field.inspect}" do
        subject.send("#{field}=", nil) 
        subject.should_not be_valid
        subject.should have(1).error_on(field.to_sym)
      end
    end
    def uniqueness_on(field)
      it "requires #{field} to be unique" do
        subject.save!
        object_name = self.send(:described_class).to_s.demodulize.underscore.to_sym
        another = Factory.build object_name, field => subject.send(field)
        another.should_not be_valid
        another.should have(1).error_on(field.to_sym)
      end
    end
  end
end

