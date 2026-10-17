class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.264"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.264.tar.gz"
      sha256 "20964bdd4fb926cdec35590627fe769c12e44e2484c514bb8fee85d81a5a5790"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.264.tar.gz"
      sha256 "039a0db8f1600fd37aac903b65acff1de24ea6cce4ec11b8195388fdc2aa12a2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
