
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
      'Brookdale Hospital Medical Center',
      '1 Brookdale Plaza
Brooklyn, NY 11212',
      'New York - Brooklyn',
      'NY',
      'In person, delivery, mail, anything! Can pickup also. (917) 251-4613. ',
      'Unsure',
      '40.6549132',
      '-73.9126971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookdale Hospital Medical Center'
        AND o.latitude = '40.6549132'
        AND o.longitude = '-73.9126971'));

COMMIT;
