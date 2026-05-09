class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.101.tar.gz"
      sha256 "c02ab189cfdfd1cace58b71f0f257e86b599afa879b8afcc231047e44e02b00a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.101.tar.gz"
      sha256 "245a2207849ff6999b84e72959b663f758c6b6e99d25eec92266d82a0410752e"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
