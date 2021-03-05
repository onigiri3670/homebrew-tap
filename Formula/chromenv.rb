# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.1.3.tar.gz"
  sha256 "306984df44bc6f12c8257b5dd5cc9103f05b8a02efaaf5e1b34b79281a38692c"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "LIBEXEC_ROOT=$(pwd)", "LIBEXEC_ROOT=#{libexec}"
    end
    prefix.install ["bin", "libexec"]
  end

  def caveats
    <<~EOS
    please exec `chromenv init`.
    EOS
  end

end
