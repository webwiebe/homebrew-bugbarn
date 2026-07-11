class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.133"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.133.tar.gz"
      sha256 "08a02d944f422c3a73a0a946b31c7df1143e1b9b069431b4de3f9c1cb04495a2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.133.tar.gz"
      sha256 "36a9de284304c6abe5a4580bf70b4b20a4ee652b33aebc4e3cd98d8392215b02"
    end
  end

  def install
    bin.install "bb"
  end
end
