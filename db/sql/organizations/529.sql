
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
      'Rockwall Urgent Care',
      '810 E Ralph Hall Pkwy
Rockwall, TX 75032',
      'Rockwall',
      'TX',
      'Delivery, local pick up, or mail',
      'Unsure',
      '32.9004316',
      '-96.4520916'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rockwall Urgent Care'
        AND o.latitude = '32.9004316'
        AND o.longitude = '-96.4520916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rockwall Urgent Care'
        AND o.latitude = '32.9004316'
        AND o.longitude = '-96.4520916'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rockwall Urgent Care'
        AND o.latitude = '32.9004316'
        AND o.longitude = '-96.4520916'));

COMMIT;
