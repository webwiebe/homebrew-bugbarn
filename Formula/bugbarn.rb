class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.328"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.328.tar.gz"
      sha256 "dcf09f4ed58bc677e3a9d32a39bb16e64e34c8110b3fe2e974d3a8296b7c66b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.328.tar.gz"
      sha256 "742a2ebf48b016ae6f33c8bdd26cbfa2bdf1b9a4fc9018c4485c185fc66b60d3"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
