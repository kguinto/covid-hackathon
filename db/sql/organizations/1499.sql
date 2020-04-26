
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
      'Beacon Memorial South Bend',
      '615 N Michigan St
South Bend, IN 46601',
      'South Bend ',
      'IN',
      'Att:Vic Wagner',
      'Yes',
      '41.6836909',
      '-86.2519755'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beacon Memorial South Bend'
        AND o.latitude = '41.6836909'
        AND o.longitude = '-86.2519755'));

COMMIT;
