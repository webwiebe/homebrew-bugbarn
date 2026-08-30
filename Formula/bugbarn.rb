class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.164"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.164.tar.gz"
      sha256 "85b1706a3ab7cff5b6c9c7c6306eddc36cbfe9ca974c34e21eec443b6d2d9914"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.164.tar.gz"
      sha256 "1f70c4d03d77b1371b394ab211ada7e8c8562a1c974287c5412ce216cd524476"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
