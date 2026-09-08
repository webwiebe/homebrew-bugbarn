class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.178"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.178.tar.gz"
      sha256 "ef4ea86092623c8234abb7715023a579b5dc1ae9ef0dfebec9b08568b2149472"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.178.tar.gz"
      sha256 "03a94be5f3249783f398f9ac3109f739735083fd606edcacaafe14094a4a2149"
    end
  end

  def install
    bin.install "bb"
  end
end
