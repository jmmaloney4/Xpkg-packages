@Package: bash
@Name: Bash
@Version: 4.3
@Description: The Bash Shell
@URL: ftp://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz
@SHA256: afc687a28e0e24dc21b988fa159ff9dbcf6b7caa92ade8645cc6d5605cd024d4
@RMD160: cd21a9f51ea7780994d4e2c9c7d16d5eb000f845
@Mirror-1: http://psg.mtu.edu/pub/gnu/bash/bash-4.3.tar.gz
@Maintainer: Jack Maloney <jmmaloney4@gmail.com>
@Depends:
@Recomended:

# Build Method
@BUILD
./configure --prefix=$XPKG_PKG_DIR
make
make install
@END

# The Install Method
@INSTALL
ln $XPKG_PKG_DIR/bin/* $XPKG_ROOT_DIR/bin/
@END

@REMOVE
rm $XPKG_ROOT_DIR/bin/bash
rm $XPKG_ROOT_DIR/bin/bashbug
@END

@TEST
exit 0
@END
