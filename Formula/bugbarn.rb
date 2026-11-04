class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.317"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.317.tar.gz"
      sha256 "c4245ddc082fe02d20ced841d9ada77a42ee806994aab56f16d16edefcc9e075"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.317.tar.gz"
      sha256 "a072ffb1b0f0f82e57627212691caeb4168c8b59d2970b46db1d0e5b2657c505"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
