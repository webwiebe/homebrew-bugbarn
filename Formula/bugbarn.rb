class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.299"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.299.tar.gz"
      sha256 "c25d8a18d4492fb023f4e1b59f16bab82add606f6ad97d8ada04585f871aff09"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.299.tar.gz"
      sha256 "bb8ef27e361adc7400169bf3075c1d64ab4c2f59e72e4e4b05a0a379c9065ac9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
