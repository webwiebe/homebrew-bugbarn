class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.92.tar.gz"
      sha256 "fb32361fcbb4cc0cfb23fe9301ebad856b226618905d27bbe060d2cf31868356"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.92.tar.gz"
      sha256 "0eb53de1b505ea69436bb814e4c54b5c2eda01d40a0a8c55306efb0373b210fb"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
