class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-cli"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.0/darwin-arm64.tar.gz"
      sha256 "008563478e54b96667f7bd898fbfabc01a7dd80e7518dcc18218e1a626d8b2ae"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.0/darwin-x64.tar.gz"
      sha256 "044539a0705cef8c4849d253447fb4a9782b9731e578ca05cf17bfedb4cd87ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.0/linux-arm64.tar.gz"
      sha256 "cc0ec0d9dc948b95c245cb21c190d87682f2719ba16ae77e0d30af36d47e159c"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.0/linux-x64.tar.gz"
      sha256 "534b4fb1aa13e283908a379ca6f55aa42e11ce0caab357544762a1298054ffd9"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
