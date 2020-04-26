
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
      'Delphi Drug & Alcohol Council, Inc.',
      '835 W Main St
Rochester, NY 14611',
      'Rochester',
      'NY',
      'Curbside or mailing address',
      'Yes',
      '43.1495492',
      '-77.6346847'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delphi Drug & Alcohol Council, Inc.'
        AND o.latitude = '43.1495492'
        AND o.longitude = '-77.6346847'));

COMMIT;
