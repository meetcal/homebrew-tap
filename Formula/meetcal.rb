class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.4.0/darwin-arm64.tar.gz"
      sha256 "c1fd9cd2f1b47b318c67da6d53c718368ee96527e33e0b48025a7ca403ee2a63"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.4.0/darwin-x64.tar.gz"
      sha256 "ee316cafe2db19410f308926e5d5dd1e2cd394b31b1b4eac891da01971eaacb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.4.0/linux-arm64.tar.gz"
      sha256 "c73095681e39716e541375ba559e32a8993fb12b592c46843dc916a08fedb717"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.4.0/linux-x64.tar.gz"
      sha256 "e9f412f9d24ec40b099c88e5146676883fdcb654b9220bbb41541ec8e57dc935"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
