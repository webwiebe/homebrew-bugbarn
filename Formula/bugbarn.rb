class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.246"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.246.tar.gz"
      sha256 "cc7a31891dc6a4e53f73192c4777d8c2add9ea11b729c5965f06602d5d9495ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.246.tar.gz"
      sha256 "596badfe082fa0f2070a25a56e8efba091df533ce7d904a90b4b865f4a59e83f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
