class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.199"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.199.tar.gz"
      sha256 "82a2df783b2c1e917f499c72c1d32da6b9188acd44e54a49674cb388ac6b168a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.199.tar.gz"
      sha256 "e5d7dee4c0e1fe304acc7485d480e62010c331a46481f3c08f711c1b84dd2956"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
