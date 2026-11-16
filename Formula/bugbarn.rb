class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.370"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.370.tar.gz"
      sha256 "d20a9037a27fb71e29c254ed79ecf7c67c5987fe2a10f0fc0e9c982a1b5e1312"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.370.tar.gz"
      sha256 "111257d7c8c68a3a5fd6cb60fd13598d84e8783fd1b87ad571776f320ce22985"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
