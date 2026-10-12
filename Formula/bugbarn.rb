class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.220.tar.gz"
      sha256 "7f10bbcbdfdfa99df8b7816b5077fbaeee8a7ad7400e1a0f7fc249d51d37f237"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.220.tar.gz"
      sha256 "7c68392de018678bd89bc09ad3ef807ea6ee3d5c2e0fc4aff8c29ce7f024f833"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
