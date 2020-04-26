
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
      'Valley Ambulatory Surgery Center ',
      '2475 Dean St
St. Charles, IL 60175',
      'St. Charles ',
      'IL',
      'Front Entrance-please call first ',
      'Case by case basis ',
      '41.9198289',
      '-88.343744'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Ambulatory Surgery Center '
        AND o.latitude = '41.9198289'
        AND o.longitude = '-88.343744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Ambulatory Surgery Center '
        AND o.latitude = '41.9198289'
        AND o.longitude = '-88.343744'));

COMMIT;
