class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.241"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.241.tar.gz"
      sha256 "e0171cdb22a41eda9de2927d961c8577d45d98b6cd195008c83145f497625416"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.241.tar.gz"
      sha256 "27c4251f263e0ebf8576a0da6f6ce4dd59e7d34df5c22fef1c28f0eeb1be4601"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
