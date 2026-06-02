class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.51.tar.gz"
      sha256 "70a45c8e0d2d7657e89c47692e4d7777635cf3a9310acfe9577e0cc0e35f4c16"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.51.tar.gz"
      sha256 "23c711d8a874a113e8fb3a0438bb02294407ff0f2b5569c47483de6df6d5f4a1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
