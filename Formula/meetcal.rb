class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.1.0/darwin-arm64.tar.gz"
      sha256 "6e42e0149c6868658acae04a6fbe1c099fd70c46a72d6c30ec7cb030b752f891"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.1.0/darwin-x64.tar.gz"
      sha256 "4bc5f6a69fded00d1dc26187bb4173a8925e69899e24567592ff07783766c72c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.1.0/linux-arm64.tar.gz"
      sha256 "401ab60b9d327ba81989f0f4e15c8de44c6aaa3319f01a22ee9ba6ab5e51552b"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.1.0/linux-x64.tar.gz"
      sha256 "46d646bb7638a1082dc4dee2b4bfc9f241c99c96928a75620f21b3f22d1cdcc8"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
