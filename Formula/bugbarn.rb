class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.298"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.298.tar.gz"
      sha256 "a9b4961ffe1256a5163ffd5a740cbe180d8c433dc5fd8205720ab6bf5881d348"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.298.tar.gz"
      sha256 "93671a05838a2fa0fd478aa6435170ebeb23845cd4d0b01240be256bed2a1c7f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
