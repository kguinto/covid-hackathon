
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
      'Enders Fire Company',
      '9 S Buckmarsh St
Berryville, VA 22611',
      'Berryville',
      'VA',
      '',
      'Yes',
      '39.151257',
      '-77.983372'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Enders Fire Company'
        AND o.latitude = '39.151257'
        AND o.longitude = '-77.983372'));

COMMIT;
