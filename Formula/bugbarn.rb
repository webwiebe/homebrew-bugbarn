class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.216.tar.gz"
      sha256 "abf37bebb5250bf67b81c7bb0d2a5adaefc5bcc3da81348ee15539c3b5c8d68e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.216.tar.gz"
      sha256 "f39f9bf97048ab5e88ef1a6fef80571875c8c127a056fba8fed367b797740910"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
