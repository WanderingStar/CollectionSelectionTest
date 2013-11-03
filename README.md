CollectionSelectionTest
=======================

CollectionView with multiple selection test

This was a repo set up to support a Stack Overflow question about why 
in a UICollectionView with allowMultipleSelection, cells were able to
be selected, but not deselected.

It turns out that in the cell's setSelected method, you must call
[super setSelected:selected] to get the collection view to behave
properly.

Leaving this here in case someone else needs to know that little factoid.
