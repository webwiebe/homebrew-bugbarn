class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.134"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.134.tar.gz"
      sha256 "3aa914e4525aaa44bbb640aec17966f4b91269df7c26f9359dd67f2d786db538"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.134.tar.gz"
      sha256 "173c6972105c3d1e07ccbd1e2447e68a658cf7a7770c5d83dcbfb9456bcb69a3"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
