class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.184"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.184.tar.gz"
      sha256 "23e1b3acb666f6f85e6cb121fc327f9a0d0fe32d21a4d67f07b06512bc9e7c3a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.184.tar.gz"
      sha256 "0b458da930cd0206f289d8763b9d189ce300514a92ecf11a12de82ece072e32e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
