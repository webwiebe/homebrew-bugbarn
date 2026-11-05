class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.319"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.319.tar.gz"
      sha256 "013825a7a53adaa9489b701569d51c450540a557eacae47962a56b62dc8c1567"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.319.tar.gz"
      sha256 "02bde76f781e75d08502ff16b8cebd0f7e5a9b32a7f57fd500a656c65b11cac9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
