class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.280"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.280.tar.gz"
      sha256 "9bc60546138dfccccc3b89c776ffbb90d4057898a36c1d72fdf7867eb92b4469"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.280.tar.gz"
      sha256 "ed0c37d2f68eb358059dd6aceb8faaa08166bfa8bfc08ff4f3e4ee74b93331a3"
    end
  end

  def install
    bin.install "bb"
  end
end
