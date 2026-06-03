class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.60.tar.gz"
      sha256 "bdc85123bf8243bc7e63ab96a91cdd0ea58b632c7919f2fc87413be9f67095cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.60.tar.gz"
      sha256 "fbfe87f693aaa78337e8da2573f9f7a605474783bd0da3299a892c25080cf596"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
