class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "4.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.1/darwin-arm64.tar.gz"
      sha256 "0374ab0453f89afc8cd7db73f097293f3c125ebccab61aa1f6c83188eb3edd18"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.1/darwin-x64.tar.gz"
      sha256 "619144a88769b3d251da92519e1523ca37710d570a1f1e86f6742edb596e4811"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.1/linux-arm64.tar.gz"
      sha256 "a869801fa7c546d06e44d1a6b6523cfc340412440ab35a4cf3d570691bd35418"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.1/linux-x64.tar.gz"
      sha256 "71bca2f516d31c32ccf11653c9ae79af54ba085040cf65bcea5a00fa66e6bf63"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
