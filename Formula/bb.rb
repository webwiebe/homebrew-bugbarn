class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.184"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.184.tar.gz"
      sha256 "decc094f597eea97940f7b058a3b6b238d53477619e6696858276ec43718b832"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.184.tar.gz"
      sha256 "24b083533c3ff3184b8bb03887d42b0147412257e1fa3c05e845163edf6cc03a"
    end
  end

  def install
    bin.install "bb"
  end
end
