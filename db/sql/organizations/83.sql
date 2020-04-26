
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Buffalo Hospital-Allina',
      '303 Catlin St
Buffalo, MN 55313',
      'Buffalo',
      'MN',
      'Manufactured N95s, surgical masks, and hand sewn ear loop masks.  Tent located in main parking lot March 22nd-April 5th 9am-1pm ',
      'Yes',
      '45.1932288',
      '-93.8713418'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buffalo Hospital-Allina'
        AND o.latitude = '45.1932288'
        AND o.longitude = '-93.8713418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Buffalo Hospital-Allina'
        AND o.latitude = '45.1932288'
        AND o.longitude = '-93.8713418'));

COMMIT;
