
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
      'Adventist HealthCare Urgent Care',
      '750 Rockville Pike
Rockville, MD 20852',
      'Rockville',
      'MD',
      'Mail/Dropoff open 12-12',
      'Unsure',
      '39.0785175',
      '-77.1405619'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist HealthCare Urgent Care'
        AND o.latitude = '39.0785175'
        AND o.longitude = '-77.1405619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist HealthCare Urgent Care'
        AND o.latitude = '39.0785175'
        AND o.longitude = '-77.1405619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Small N95 Mask',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist HealthCare Urgent Care'
        AND o.latitude = '39.0785175'
        AND o.longitude = '-77.1405619'));

COMMIT;
