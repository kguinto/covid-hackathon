
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
      'Rush Copley Cardiovascular Consultants ',
      '2088 Ogden Ave #140
Aurora, IL 60504',
      'Aurora',
      'IL',
      'Dr Christy',
      'No',
      '41.7302622',
      '-88.2655085'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Copley Cardiovascular Consultants '
        AND o.latitude = '41.7302622'
        AND o.longitude = '-88.2655085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Copley Cardiovascular Consultants '
        AND o.latitude = '41.7302622'
        AND o.longitude = '-88.2655085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Copley Cardiovascular Consultants '
        AND o.latitude = '41.7302622'
        AND o.longitude = '-88.2655085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush Copley Cardiovascular Consultants '
        AND o.latitude = '41.7302622'
        AND o.longitude = '-88.2655085'));

COMMIT;
