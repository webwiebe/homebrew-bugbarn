class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.342"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.342.tar.gz"
      sha256 "fb73c3a9dd2464c09b661839e1468bd55fbbe73a32a469f857cd90c8ef8a66d0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.342.tar.gz"
      sha256 "925143a0d393902138c5dceedcd935bf17b16d8e571e0aab69f66b65e6f64a01"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
