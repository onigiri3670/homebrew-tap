# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.1.2.tar.gz"
  sha256 "e24df52bb967534579bdd32deb949c6eba45db083917d738bb804ce7bc2c7f7a"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "LIBEXEC_ROOT=$(pwd)", "LIBEXEC_ROOT=#{libexec}"
    end
    prefix.install ["bin", "libexec"]
  end

  def caveats
    <<~EOS
    #### message from author.
    please exec `chromenv init`.
    ####
    EOS

  end

end
