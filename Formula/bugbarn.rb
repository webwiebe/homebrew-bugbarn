class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.294"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.294.tar.gz"
      sha256 "9af4a7d3f9f1809e4ef005b71a4657264b953b72a0f9391622f4b42422237e7c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.294.tar.gz"
      sha256 "2c2677f1dacbd3ef6649556eb46947b997fa6a4db7f09f5ca3366c2095445cf0"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
