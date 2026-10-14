class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.249"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.249.tar.gz"
      sha256 "a349a0b6de131f30829bc2891d2fd089c02477fa598f470bb36af19b7961811a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.249.tar.gz"
      sha256 "5f65b1ced587a0e9545e9756fe0c04056566f19b027461e552f6dd81cf7edac6"
    end
  end

  def install
    bin.install "bb"
  end
end
