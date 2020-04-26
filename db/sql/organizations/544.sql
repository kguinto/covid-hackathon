
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
      'ChristianaCare Wilmington Hospital',
      '501 W 14th St
Wilmington, DE 19801',
      'Wilmington',
      'DE',
      'Mail or drop off',
      'Unsure',
      '39.7511805',
      '-75.5499168'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ChristianaCare Wilmington Hospital'
        AND o.latitude = '39.7511805'
        AND o.longitude = '-75.5499168'));

COMMIT;
