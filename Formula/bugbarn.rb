class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.359"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.359.tar.gz"
      sha256 "0c379b64168b8d9038bdabd5c0878cc62f78cdda7a62e506022d7bf61a5d9a7e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.359.tar.gz"
      sha256 "30e44856c8ebfcdd717cfa108362d90a76bcf2805152efa1a85453b45b6681ec"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
