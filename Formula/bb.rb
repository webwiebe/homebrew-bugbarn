class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.109.tar.gz"
      sha256 "c12dac63dcddbfff87dde2b22e9eb13529ce282b04af47e3df280f57a54c7890"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.109.tar.gz"
      sha256 "5ce2df6e07ab9ac2ba35c0387f88000c3a3cad7926812ede1c40cca2a6b4150a"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
