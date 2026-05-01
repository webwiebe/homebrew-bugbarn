class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.21.tar.gz"
      sha256 "68dfca65baf2290203cfa824205b381faf3adc6ad8609d462a1876278c07ce83"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.21.tar.gz"
      sha256 "f7636cdd1e0453673149b8e5c3ca3b7bd49f6da18a638054407c36091e4f4b35"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
