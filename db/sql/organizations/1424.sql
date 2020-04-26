
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
      'Mountain Medical Services ',
      '1927 Saranac Ave
Lake Placid, NY 12946',
      'Lake Placid',
      'NY',
      'None ',
      'Yes',
      '44.294495',
      '-74.0123913'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mountain Medical Services '
        AND o.latitude = '44.294495'
        AND o.longitude = '-74.0123913'));

COMMIT;
