
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
      'Ellis Hospital',
      '1101 Nott St
Schenectady, NY 12308',
      'Schenectady',
      'NY',
      'Bring to entrance via garage. Mail delivery, We can also do pick up if needed.',
      'Unsure',
      '42.8201212',
      '-73.9165154'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellis Hospital'
        AND o.latitude = '42.8201212'
        AND o.longitude = '-73.9165154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellis Hospital'
        AND o.latitude = '42.8201212'
        AND o.longitude = '-73.9165154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellis Hospital'
        AND o.latitude = '42.8201212'
        AND o.longitude = '-73.9165154'));

COMMIT;
