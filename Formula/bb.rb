class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.258"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.258.tar.gz"
      sha256 "2ac2e1081937274f8aafa7f9d4784c943cd15c9199b1fec26b891bfe755d96dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.258.tar.gz"
      sha256 "22400cf7a9d217c65c2aafbdfa99caf4ee6358b548500fef1dc6c374ef23e79d"
    end
  end

  def install
    bin.install "bb"
  end
end
