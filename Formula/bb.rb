class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.63.tar.gz"
      sha256 "bae2cae029143f9a7dc109228fbd05687871718b5534b98d354a956a39c0b115"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.63.tar.gz"
      sha256 "cf79516879eff2fc36953787a7091cd7347682b4fb01000d9e5743b11e42107f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
