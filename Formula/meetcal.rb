class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.3.0/darwin-arm64.tar.gz"
      sha256 "de2bedffe4e4872ad57b203f8b743083d844c8e0f81d1bd52628154c098dbd24"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.3.0/darwin-x64.tar.gz"
      sha256 "6bdd087ad336ddfcecaa14bf0c178d42ad5284c0eda5d9982aa8b4527284353c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.3.0/linux-arm64.tar.gz"
      sha256 "81155a63c59f10cd11bd018ec5fef06334a994cdd2d175c9ce2c560b7a9545a0"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.3.0/linux-x64.tar.gz"
      sha256 "89778b99decc2d77da5a1cf2c1ba477a07c9e6b39ef63345989d0ca7defdd0dc"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
