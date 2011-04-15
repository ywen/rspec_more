rspec_more -- provides some rpsec matcher and macros
====================================

## DESCRIPTION
This gem is intending to provide more macros and matchers for rspec
The current supported macros:
* reequire_attribute attr

This macro does validation for a model and currently only works for DataMapper
an example usage:
    describe User do
      describe "validations" do
        require_attribute :name
      end
    end
 
## INSTALL
  $ [sudo] gem install pivotal_to_pdf