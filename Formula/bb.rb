class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.54.tar.gz"
      sha256 "503083f6b77a15a65ce1f3668dbcc41bf66afdaed04bad274ab10b6d5ec3b8e7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.54.tar.gz"
      sha256 "04c82f081b976ac791836bb33d86485546235face8889a4e5068eb866706b702"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
