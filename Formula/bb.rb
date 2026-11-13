class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.363"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.363.tar.gz"
      sha256 "604106864d85eb5e94d7220e913af9d6bc563b05b682f318f749bb0ff446d94c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.363.tar.gz"
      sha256 "3f0df5b50289eb701a7bd0527b4bb8479274c290b4bc2691274fcfe8cf976524"
    end
  end

  def install
    bin.install "bb"
  end
end
