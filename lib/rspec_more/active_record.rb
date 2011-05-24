module RspecMore
  module ActiveRecord
    def require_attribute(field)
      it "require #{field.inspect}" do
        subject.send("#{field}=", nil) 
        subject.should_not be_valid
        subject.should have(1).error_on(field.to_sym)
      end
    end
  end
end

