class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.395"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.395.tar.gz"
      sha256 "150f8caa58407e73678ba1216db3e67e5143508ac32075669003a15800a686c9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.395.tar.gz"
      sha256 "daefe4c1f84a37f48cfea97bbfee31363c5ce8051232e2a7334f1c4d8fadb157"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
