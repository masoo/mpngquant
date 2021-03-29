RSpec.describe Mpngquant do
  it "has a version number" do
    expect(Mpngquant::VERSION).not_to be nil
  end

  it "does something useful" do
    _, s = Mpngquant::Pngquant.optimize(infile: "./spec/test.png", force: nil, skip_if_larger: nil,
              ext: nil, quality: "50-80", speed: 3, nofs: nil,
              posterize: nil, strip: nil, verbose: nil)

    expect(s.exitstatus).to eq(0)
  end
end
