class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.349"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.349.tar.gz"
      sha256 "d4682027b5950e7608354d3fcae4fdfcfd58e1d3798b9353baf6c397600f8145"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.349.tar.gz"
      sha256 "3ee9007f082f7c0973be8d661d2c04f856f7329e9c2d807733b6324cf83e8631"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
