class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.83.tar.gz"
      sha256 "15c5ba1f4389ba7f41e5f2fce168946d7c2d7ade24a27683b7e3bcc33029b200"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.83.tar.gz"
      sha256 "68fcf85db46c684de1f79a9da29383803777c2ceb1d861ae3b63e2df8395af3c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
