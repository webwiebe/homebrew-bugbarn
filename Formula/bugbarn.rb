class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.96.tar.gz"
      sha256 "73df491cf8f84a5fc1eb47ffeaa2678a7cfa844ca67b0fb9b6b4ba99137679c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.96.tar.gz"
      sha256 "f015dbc38cd09fee5490d001614bb79d54027bcd800cae3860de9d3461f5d63d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
