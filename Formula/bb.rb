class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.90.tar.gz"
      sha256 "47b026cb9f0dabc3ef0ddb54bbd4740f603a1725a9e32ea6aac8b6ded4f04a46"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.90.tar.gz"
      sha256 "89ab1de48713a33d76a2d2775df9f7db1073aa9987418b0c29d393f7d30909fe"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
