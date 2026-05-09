class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.97.tar.gz"
      sha256 "6f93054507949df0183b97f0c0f70889269b90333be051869fa6a367ec9d67fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.97.tar.gz"
      sha256 "ced602259ea812a6acd212bc66dcd807dac8153bdb7a2b29b360c9d721f1d8e4"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
