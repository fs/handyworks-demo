require 'spec_helper'

$valid_attributes = {
	:city => 'Kazan',
	:address1 => 'Gavrilova',
	:zip => '420133',
	:social_security_number => '123456',
	:birth_date => '11/11/1985',
	:sex => 'M',
	:phone => '111-11-11',
	:first_name => 'Andrey',
	:last_name => 'Chernih',
	:state => 'Russia',
	:email => 'andrey.cherniH@gmail.com'
}


describe Patient do
  before(:each) do
		@valid_attributes = $valid_attributes
  end

  it "should create a new instance given valid attributes" do
    Patient.create!(@valid_attributes)
  end

	def self.should_not_be_valid_if
		$valid_attributes.keys.each do |attribute|
			it "should not be valid if not specified required attrubute #{attribute}" do
				@current_attributes = @valid_attributes.clone
				@current_attributes[attribute] = nil

				@patient = Patient.new @current_attributes
				@patient.should_not be_valid
				@patient.errors.on(attribute).should eql('can\'t be blank')
			end
		end
	end

	should_not_be_valid_if

	it 'should be valid with a full set of valid attributes' do
		@patient = Patient.new @valid_attributes
		@patient.should be_valid
	end
end
