class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.72.tar.gz"
      sha256 "92faada8857862cbee0519a9430c3cbf1c2d9351eea48b5acf7f8c73e87621b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.72.tar.gz"
      sha256 "6b02caf79239bf10e55c7c5b5b19e06f45eba81102a4bd960220b3f3ef34744b"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
