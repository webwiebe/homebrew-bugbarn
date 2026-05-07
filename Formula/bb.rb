class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.73.tar.gz"
      sha256 "42620fc9a3279cf6781f93084144de40278d9c95239c0eb82f6008524ec871ca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.73.tar.gz"
      sha256 "2d1d74a709f8f6d7777a683bc8c9a7215f782b7ac243700bff9d1aa2ff080f6d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
