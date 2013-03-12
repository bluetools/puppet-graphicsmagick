require 'formula'

class Princexml < Formula
  homepage 'https://www.princexml.com'
  url 'http://www.princexml.com/download/prince-8.1r4-macosx.tar.gz'
  version '8.1r4'
  sha1 '562333d849453aa7b950c3fd34e6f1a986aafdfe'


  def patches
    # Drop the user input since we're providing the prefix
    DATA
  end

  def install
    system "export prefix=#{prefix};sh install.sh"
  end
end

__END__
--- prince-8.1r4-macosx.orig/install.sh	2010-11-18 16:37:36.000000000 -0800
+++ prince-8.1r4-macosx/install.sh	2010-11-18 16:38:13.000000000 -0800
@@ -5,24 +5,10 @@
 VERSION="8.1"
 WEBSITE="http://www.princexml.com"
 
-prefix=/usr/local
-
 base=`dirname $0`
 
 cd "$base"
 
-echo "$PRODUCT $VERSION"
-echo
-echo "Install directory"
-echo "    This is the directory in which $PRODUCT $VERSION will be installed."
-echo "    Press Enter to accept the default directory or enter an alternative."
-echo -n "    [$prefix]: "
-
-read input
-if [ ! -z "$input" ] ; then
-    prefix="$input"
-fi
-
 echo
 echo "Installing $PRODUCT $VERSION..."
