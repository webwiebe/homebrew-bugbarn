class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.1.tar.gz"
      sha256 "dfa388839ce2512090c160dc880c7e3c8be7b3a86feb563fb361c78995db5575"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.1.tar.gz"
      sha256 "fccb0b496fd9068b5f36e8de94f6ada073d1c9afc00de5f502fd64cb223fb36c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
