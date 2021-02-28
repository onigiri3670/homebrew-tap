# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Chromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.0.4.tar.gz"
  sha256 "c63ba986435609a03c2d53c2682a1d408f2d1fa9c937b0551d29985feaa2daf0"
  license ""


  def install
    inreplace "bin/chromenv" do |s|
      s.sub! "CHROMENV_HOME=$(pwd)", "CHROMENV_HOME=#{libexec}/.."
    end
    prefix.install ["bin", "libexec"]
  end

end
