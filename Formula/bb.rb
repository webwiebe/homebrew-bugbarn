class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.380"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.380.tar.gz"
      sha256 "255a15f73af8692c881e8bccea119c43224b82377e3a4197668f85f8f12dc9f8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.380.tar.gz"
      sha256 "5d0af91f23e285273a4d090c8709dd77aaab36eb1dba9ffd228dbe6bc2701a32"
    end
  end

  def install
    bin.install "bb"
  end
end
