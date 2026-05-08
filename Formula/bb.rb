class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.92.tar.gz"
      sha256 "6586965b4d49f12ac9ef1d76c187837993db45cb0b493398c378e28745a1103c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.92.tar.gz"
      sha256 "30e3621c70b4daf2dac5e7c4638f9cc4b9eb2f2445c247dd9ae27ab82a6973a6"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
