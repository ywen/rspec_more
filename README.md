rspec_more -- provides some rpsec matcher and macros
====================================

## DESCRIPTION
This gem is intending to provide more macros and matchers for rspec
The current supported macros:
* reequire_attribute attr

This macro does validation for a model and currently only works for DataMapper
an example usage:

    describe User do
      let(:user) {User.make_unsaved} # suppose you use machinist
      describe "validations" do
        require_attribute :name
      end
    end

The *let* that defines *user* method is required for now. The macro relies on the model object is defined
 
## INSTALL
  
    $ [sudo] gem install rspec_more

Then in the spec_helper.rb, add:

    config.extend(RspecMore::DataMapper, :type => :model) 
