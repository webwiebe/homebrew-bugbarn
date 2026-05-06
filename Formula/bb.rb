class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.60.tar.gz"
      sha256 "67120c3abb0a34c172ad0ae7b58c8f7bdda1e517395dca07e8f38a62c44b3e04"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.60.tar.gz"
      sha256 "41ca3f50d939a72982d4e85e33f9e054af70b3ba6ec5aa6931ae202085ccfc89"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
