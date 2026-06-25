class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.97.tar.gz"
      sha256 "057b81794a926c7bffd84d752d21abb66c5c3d8e85a6cdf334b3bd97a4a5fe58"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.97.tar.gz"
      sha256 "6cceb00e5abb602850b93afb81ed57239df511e8955f7bdf516c69a51a569a4b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
