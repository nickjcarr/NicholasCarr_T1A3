require_relative '../company.rb'


describe Company do
it 'should be an instance of a company' do 
    @company = Company.new("tesla")
    expect(@company).to be_a Company
end

it 'should initialize with a name' do
    @company = Company.new("tesla")
    expect (@company.name).to eq("tesla")
end

end