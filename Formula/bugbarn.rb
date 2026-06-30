class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.111.tar.gz"
      sha256 "1110861273eea9b4e44d3e577a74fbda3da4135fd67c15cbffeafdecd1b7067c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.111.tar.gz"
      sha256 "b8a6d63038a4d46dbdc49efac161539f87b24df10d5375e8e75eb569012bca4b"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
