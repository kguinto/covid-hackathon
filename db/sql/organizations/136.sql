
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
      'Flowers Hospital',
      '4370 W Main St
Dothan, AL 36305',
      'Dothan',
      'AL',
      'Drop off or mail',
      'Unsure',
      '31.2379068',
      '-85.456757'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flowers Hospital'
        AND o.latitude = '31.2379068'
        AND o.longitude = '-85.456757'));

COMMIT;
