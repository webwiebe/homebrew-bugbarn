class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.58.tar.gz"
      sha256 "924873f567dfab5177b681d6bb1c2648898023c3ed8b4992f5505cd117a9dd22"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.58.tar.gz"
      sha256 "c4d31320bff267bffddcb03b5157800614d0f57c59b85d4c57a36f9435694b1f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
