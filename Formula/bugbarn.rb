class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.154"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.154.tar.gz"
      sha256 "2c89bb26a9c77717f004e53363099e9ed9a17391a7ad1142916c3af12ee04ec4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.154.tar.gz"
      sha256 "738fe6078513dc762beae89d29644039ab439d0335de5bb21ac4f15ab04653ed"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
