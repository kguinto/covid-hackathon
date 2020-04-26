
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
      'Virginia Hospital Center',
      '1625 N George Mason Dr
Arlington, VA 22205',
      'Arlington',
      'VA',
      'please call first and I will let you know',
      'Yes',
      '38.888622',
      '-77.1263891'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.888622'
        AND o.longitude = '-77.1263891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.888622'
        AND o.longitude = '-77.1263891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.888622'
        AND o.longitude = '-77.1263891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.888622'
        AND o.longitude = '-77.1263891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.888622'
        AND o.longitude = '-77.1263891'));

COMMIT;
