
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
      'Pomona Pediatrics ',
      '4 Medical Park Dr Suite C
Pomona, NY 10970',
      'Pomona',
      'NY',
      'Come to window. ',
      'Yes',
      '41.167216',
      '-74.032667'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Pediatrics '
        AND o.latitude = '41.167216'
        AND o.longitude = '-74.032667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Pediatrics '
        AND o.latitude = '41.167216'
        AND o.longitude = '-74.032667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Pediatrics '
        AND o.latitude = '41.167216'
        AND o.longitude = '-74.032667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Pediatrics '
        AND o.latitude = '41.167216'
        AND o.longitude = '-74.032667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pomona Pediatrics '
        AND o.latitude = '41.167216'
        AND o.longitude = '-74.032667'));

COMMIT;
