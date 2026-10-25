class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.280"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.280.tar.gz"
      sha256 "3a3bb1bdc72cd59613245cd50728554661012d74a6dc98c121eb709d347d04c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.280.tar.gz"
      sha256 "f0e9eebe49c8c3c359aa1e7466b0919d034aa195ec86a329e433d20d28b1dc0b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
